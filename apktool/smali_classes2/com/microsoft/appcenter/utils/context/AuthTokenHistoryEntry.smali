.class final Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;
.super Ljava/lang/Object;
.source "AuthTokenHistoryEntry.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field private static final EXPIRES_ON:Ljava/lang/String; = "expiresOn"

.field private static final HOME_ACCOUNT_ID:Ljava/lang/String; = "homeAccountId"

.field private static final TIME:Ljava/lang/String; = "time"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mExpiresOn:Ljava/util/Date;

.field private mHomeAccountId:Ljava/lang/String;

.field private mTime:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mAuthToken:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mHomeAccountId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mTime:Ljava/util/Date;

    .line 43
    iput-object p4, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mExpiresOn:Ljava/util/Date;

    return-void
.end method

.method private setAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mAuthToken:Ljava/lang/String;

    return-void
.end method

.method private setExpiresOn(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mExpiresOn:Ljava/util/Date;

    return-void
.end method

.method private setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mHomeAccountId:Ljava/lang/String;

    return-void
.end method

.method private setTime(Ljava/util/Date;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method getExpiresOn()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mExpiresOn:Ljava/util/Date;

    return-object v0
.end method

.method getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "authToken"

    .line 80
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->setAuthToken(Ljava/lang/String;)V

    const-string v1, "homeAccountId"

    .line 81
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->setHomeAccountId(Ljava/lang/String;)V

    const-string v1, "time"

    .line 82
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->setTime(Ljava/util/Date;)V

    const-string v1, "expiresOn"

    .line 84
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-static {p1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->setExpiresOn(Ljava/util/Date;)V

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authToken"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "homeAccountId"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "time"

    invoke-static {p1, v2, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "expiresOn"

    invoke-static {p1, v0, v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
