.class public Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
.super Ljava/lang/Object;
.source "AppCenterIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/Ingestion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    }
.end annotation


# static fields
.field static final API_PATH:Ljava/lang/String; = "/logs?api-version=1.0.0"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://in.appcenter.ms"

.field static final INSTALL_ID:Ljava/lang/String; = "Install-ID"
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 75
    invoke-static {p1}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    const-string p1, "https://in.appcenter.ms"

    .line 76
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

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

    .line 104
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v0}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    return-void
.end method

.method public reopen()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

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

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Install-ID"

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "App-Secret"

    .line 94
    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 96
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Bearer %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    new-instance v4, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;

    iget-object p1, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-direct {v4, p1, p4}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;-><init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V

    .line 99
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/logs?api-version=1.0.0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 87
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogUrl:Ljava/lang/String;

    return-void
.end method
