.class public Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;
.super Ljava/lang/Object;
.source "OneCollectorIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/Ingestion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;
    }
.end annotation


# static fields
.field static final API_KEY:Ljava/lang/String; = "apikey"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CLIENT_VERSION_FORMAT:Ljava/lang/String; = "ACS-Android-Java-no-%s-no"

.field static final CLIENT_VERSION_KEY:Ljava/lang/String; = "Client-Version"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-json-stream; charset=utf-8"

.field private static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://mobile.events.data.microsoft.com/OneCollector/1.0"

.field static final STRICT:Ljava/lang/String; = "Strict"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TICKETS:Ljava/lang/String; = "Tickets"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final UPLOAD_TIME_KEY:Ljava/lang/String; = "Upload-Time"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

.field private final mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 112
    invoke-static {p1}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    const-string p1, "https://mobile.events.data.microsoft.com/OneCollector/1.0"

    .line 113
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v0}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    return-void
.end method

.method public reopen()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v0}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    return-void
.end method

.method public sendAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 120
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 121
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 122
    invoke-virtual {p4}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 123
    invoke-interface {p3}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 127
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_2

    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "apikey"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    invoke-virtual {p4}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 139
    check-cast v0, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->getTicketKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/TicketCache;->getTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 145
    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Cannot serialize tickets, sending log anonymously"

    .line 147
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tickets"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-boolean p1, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    if-eqz p1, :cond_6

    .line 161
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Strict"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "Content-Type"

    const-string p2, "application/x-json-stream; charset=utf-8"

    .line 166
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "2.5.1"

    aput-object p3, p1, p2

    const-string p2, "ACS-Android-Java-no-%s-no"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Client-Version"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Upload-Time"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v4, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;

    iget-object p1, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-direct {v4, p1, p4}, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion$IngestionCallTemplate;-><init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V

    .line 177
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    iget-object v1, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    const-string v2, "POST"

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object p1

    return-object p1
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/OneCollectorIngestion;->mLogUrl:Ljava/lang/String;

    return-void
.end method
