.class public Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
.super Ljava/lang/Object;
.source "AuthTokenContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;
    }
.end annotation


# static fields
.field static final ACCOUNT_ID_LENGTH:I = 0x24
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREFERENCE_KEY_TOKEN_HISTORY:Ljava/lang/String; = "AppCenter.auth_token_history"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TOKEN_HISTORY_LIMIT:I = 0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mResetAuthTokenRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mListeners:Ljava/util/Set;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mResetAuthTokenRequired:Z

    return-void
.end method

.method private declared-synchronized addTokenHistory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 7

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHistory()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 195
    monitor-exit p0

    return-object v3

    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 199
    :try_start_1
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getHomeAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 200
    :cond_4
    :goto_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    goto :goto_2

    .line 213
    :cond_5
    new-instance v6, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v6, v3, v3, v1, v5}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 209
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v5

    .line 216
    :cond_7
    :goto_3
    new-instance v1, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-direct {v1, p1, p2, v5, p3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_8

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {v0, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "AppCenter"

    const-string p2, "Size of the token history is exceeded. The oldest token has been removed."

    .line 221
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_8
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->setHistory(Ljava/util/List;)V

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deserializeHistory(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 408
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 411
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 412
    new-instance v3, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;-><init>()V

    .line 413
    invoke-virtual {v3, v2}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->read(Lorg/json/JSONObject;)V

    .line 414
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->sInstance:Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->sInstance:Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    .line 101
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->sInstance:Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getLastHistoryEntry()Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;
    .locals 2

    monitor-enter p0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHistory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 354
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHistory()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private serializeHistory(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 396
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 397
    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    .line 399
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 400
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->write(Lorg/json/JSONStringer;)V

    .line 401
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 404
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    monitor-enter v0

    const/4 v1, 0x0

    .line 109
    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->sInstance:Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;)V
    .locals 1
    .param p1    # Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkIfTokenNeedsToBeRefreshed(Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;)V
    .locals 3
    .param p1    # Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 333
    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getLastHistoryEntry()Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->isAboutToExpire()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;

    .line 340
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;->onTokenRequiresRefresh(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized doNotResetAuthAfterStart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 135
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mResetAuthTokenRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finishInitialization()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mResetAuthTokenRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 145
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mResetAuthTokenRequired:Z

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->setAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x24

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getLastHistoryEntry()Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getAuthTokenValidityList()Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHistory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 273
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 274
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 275
    new-instance v3, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-virtual {v5}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v3, v4, v4, v5}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 278
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    .line 279
    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getTime()Ljava/util/Date;

    move-result-object v6

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    move-object v6, v4

    .line 284
    :cond_2
    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getExpiresOn()Ljava/util/Date;

    move-result-object v3

    .line 285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    if-le v7, v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getTime()Ljava/util/Date;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    .line 286
    invoke-virtual {v7, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    if-eqz v7, :cond_5

    :goto_2
    move-object v3, v7

    .line 291
    :cond_5
    new-instance v7, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;

    invoke-direct {v7, v5, v6, v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 293
    :cond_6
    monitor-exit p0

    return-object v1

    .line 269
    :cond_7
    :goto_3
    :try_start_1
    new-instance v0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHistory()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mHistory:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "AppCenter.auth_token_history"

    .line 362
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 372
    :cond_2
    :try_start_0
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->deserializeHistory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mHistory:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Failed to deserialize auth token history."

    .line 374
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :goto_1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mHistory:Ljava/util/List;

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getLastHistoryEntry()Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public removeListener(Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;)V
    .locals 1
    .param p1    # Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized removeOldestTokenIfMatching(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getHistory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string p1, "AppCenter"

    const-string v0, "Couldn\'t remove token from history: token history contains only current one."

    .line 312
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 315
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;

    .line 316
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "AppCenter"

    const-string v0, "Couldn\'t remove token from history: the token isn\'t oldest or is already removed."

    .line 317
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 322
    :cond_2
    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->setHistory(Ljava/util/List;)V

    const-string p1, "AppCenter"

    const-string v0, "The token has been removed from token history."

    .line 324
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_3
    const-string p1, "AppCenter"

    const-string v0, "Couldn\'t remove token from history: token history is empty."

    .line 308
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p2, v0

    move-object p3, p2

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->addTokenHistory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;

    .line 170
    invoke-interface {v2, p1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;->onNewAuthToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/16 v4, 0x24

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 173
    :goto_1
    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;->onNewUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method setHistory(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/utils/context/AuthTokenHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mHistory:Ljava/util/List;

    const-string v0, "AppCenter.auth_token_history"

    if-eqz p1, :cond_0

    .line 384
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->serializeHistory(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 385
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AppCenter"

    const-string v1, "Failed to serialize auth token history."

    .line 388
    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
