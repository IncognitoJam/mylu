.class public Lcom/microsoft/appcenter/AppCenter;
.super Ljava/lang/Object;
.source "AppCenter.java"


# static fields
.field static final APP_SECRET_KEY:Ljava/lang/String; = "appsecret"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CORE_GROUP:Ljava/lang/String; = "group_core"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_STORAGE_SIZE_IN_BYTES:J = 0xa00000L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VALUE_DELIMITER:Ljava/lang/String; = "="
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field static final MINIMUM_STORAGE_SIZE:J = 0x6000L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PAIR_DELIMITER:Ljava/lang/String; = ";"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RUNNING_IN_APP_CENTER:Ljava/lang/String; = "RUNNING_IN_APP_CENTER"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRANSMISSION_TARGET_TOKEN_KEY:Ljava/lang/String; = "target"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TRUE_ENVIRONMENT_STRING:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/microsoft/appcenter/AppCenter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

.field private mAppSecret:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mConfiguredFromApp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogLevelConfigured:Z

.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;

.field private mMaxStorageSizeInBytes:J

.field private mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesStartedFromLibrary:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedServicesNamesToLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransmissionTargetToken:Ljava/lang/String;

.field private mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    const-wide/32 v0, 0xa00000

    .line 206
    iput-wide v0, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/AppCenter;->queueCustomProperties(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/AppCenter;->finishConfiguration(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabled(Z)V

    return-void
.end method

.method private applyStorageMaxSize()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-wide v1, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    invoke-interface {v0, v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v1, :cond_0

    .line 831
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized checkPrecondition()Z
    .locals 2

    monitor-enter p0

    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 480
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "AppCenter"

    const-string v1, "App Center hasn\'t been configured. You need to call AppCenter.start with appSecret or AppCenter.configure first."

    .line 482
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 483
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static configure(Landroid/app/Application;)V
    .locals 3

    .line 342
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static configure(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 1002
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1004
    invoke-direct {p0, p3, p4}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 989
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 992
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "AppCenter"

    const-string p2, "appSecret may not be null or empty."

    .line 990
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "AppCenter"

    const-string p2, "Application context may not be null."

    .line 629
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    monitor-exit p0

    return v0

    .line 634
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 635
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 640
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/AppCenter;->configureSecretString(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 641
    monitor-exit p0

    return v0

    .line 645
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 648
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 649
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/microsoft/appcenter/AppCenter$4;

    invoke-direct {p2, p0}, Lcom/microsoft/appcenter/AppCenter$4;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    :cond_3
    monitor-exit p0

    return v0

    .line 662
    :cond_4
    :try_start_3
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    .line 665
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AppCenter.Looper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 666
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 667
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    .line 668
    new-instance p1, Lcom/microsoft/appcenter/AppCenter$5;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/AppCenter$5;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    .line 677
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    .line 678
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    .line 679
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/microsoft/appcenter/AppCenter$6;

    invoke-direct {p2, p0, p3}, Lcom/microsoft/appcenter/AppCenter$6;-><init>(Lcom/microsoft/appcenter/AppCenter;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "AppCenter"

    const-string p2, "App Center SDK configured successfully."

    .line 686
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 687
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 609
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 612
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "AppCenter"

    const-string p2, "appSecret may not be null or empty."

    .line 610
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private configureSecretString(Ljava/lang/String;)Z
    .locals 7

    .line 701
    iget-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "AppCenter"

    const-string v0, "App Center may only be configured once."

    .line 702
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz p1, :cond_4

    const-string v2, ";"

    .line 711
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 714
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    const/4 v5, -0x1

    const-string v6, "="

    .line 717
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 718
    aget-object v5, v4, v1

    .line 721
    array-length v6, v4

    if-ne v6, v0, :cond_1

    .line 722
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 723
    iput-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_1

    .line 725
    :cond_1
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 726
    aget-object v4, v4, v0

    const-string v6, "appsecret"

    .line 729
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 730
    iput-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v6, "target"

    .line 731
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 732
    iput-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private finishConfiguration(Z)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/microsoft/appcenter/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 777
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->initialize(Landroid/content/Context;)V

    .line 778
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 779
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->initialize(Landroid/content/Context;)V

    .line 782
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    .line 785
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    .line 788
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;-><init>()V

    iput-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 789
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    new-instance v2, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;-><init>()V

    const-string v3, "startService"

    invoke-interface {v1, v3, v2}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 790
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    new-instance v2, Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/json/CustomPropertiesLogFactory;-><init>()V

    const-string v3, "customProperties"

    invoke-interface {v1, v3, v2}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 791
    new-instance v1, Lcom/microsoft/appcenter/channel/DefaultChannel;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz p1, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    goto :goto_0

    .line 799
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-wide/32 v1, 0xa00000

    invoke-interface {p1, v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    .line 801
    :goto_0
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 802
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/16 v3, 0x32

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "group_core"

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 803
    new-instance p1, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Ljava/util/UUID;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    .line 804
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    const-string v1, "AppCenter"

    if-eqz p1, :cond_2

    .line 805
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The log url of App Center endpoint has been changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setLogUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 809
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The log url of One Collector endpoint has been changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->setLogUrl(Ljava/lang/String;)V

    .line 813
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    if-nez v0, :cond_3

    .line 817
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    .line 821
    :cond_3
    new-instance p1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;-><init>(Landroid/os/Handler;Lcom/microsoft/appcenter/channel/Channel;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 823
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    :cond_4
    const-string p1, "App Center initialized."

    .line 825
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .line 931
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AppCenter"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/AppCenterService;

    .line 932
    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/microsoft/appcenter/AppCenterService;->onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service configuration updated."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    .line 938
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/AppCenterService;

    .line 939
    invoke-interface {v3}, Lcom/microsoft/appcenter/AppCenterService;->getLogFactories()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 941
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 942
    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    invoke-interface {v6, v7, v5}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 945
    invoke-interface {v3}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 946
    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 949
    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v7, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v8, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service started from application."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 952
    :cond_3
    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service started from library."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-eqz p3, :cond_7

    .line 961
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->finishInitialization()V

    .line 964
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/appcenter/AppCenterService;

    .line 965
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {p3}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 967
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/AppCenterService;

    .line 968
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {p2}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 970
    :cond_6
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    :cond_7
    return-void
.end method

.method public static getInstallId()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/AppCenter;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lcom/microsoft/appcenter/AppCenter;

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 227
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1135
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1136
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$12;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/appcenter/AppCenter$12;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$13;

    invoke-direct {v3, p0, v0}, Lcom/microsoft/appcenter/AppCenter$13;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1151
    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x2L
        to = 0x8L
    .end annotation

    .line 252
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.1"

    return-object v0
.end method

.method private declared-synchronized handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 741
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    new-instance v0, Lcom/microsoft/appcenter/AppCenter$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter$7;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 762
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne p2, v1, :cond_0

    .line 763
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isConfigured()Z
    .locals 1

    .line 305
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 406
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isInstanceConfigured()Z
    .locals 1

    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1025
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1026
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$9;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/appcenter/AppCenter$9;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$10;

    invoke-direct {v3, p0, v0}, Lcom/microsoft/appcenter/AppCenter$10;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1041
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isRunningInAppCenterTestCloud()Z
    .locals 2

    .line 316
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RUNNING_IN_APP_CENTER"

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private queueCustomProperties(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1016
    new-instance v0, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;-><init>()V

    .line 1017
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/CustomPropertiesLog;->setProperties(Ljava/util/Map;)V

    .line 1018
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string v1, "group_core"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    return-void
.end method

.method private sendStartServiceLog()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 981
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 982
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;-><init>()V

    .line 983
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    .line 984
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/4 v2, 0x1

    const-string v3, "group_core"

    invoke-interface {v0, v1, v3, v2}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
    .locals 1

    .line 296
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V

    return-void
.end method

.method public static setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "AppCenter"

    const-string v0, "Custom properties may not be null."

    .line 553
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 556
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/microsoft/appcenter/CustomProperties;->getProperties()Ljava/util/Map;

    move-result-object p1

    .line 557
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "AppCenter"

    const-string v0, "Custom properties may not be empty."

    .line 558
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 561
    :cond_1
    :try_start_2
    new-instance v0, Lcom/microsoft/appcenter/AppCenter$3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter$3;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setInstanceEnabled(Z)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1070
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 1071
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 1073
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->unregister()V

    .line 1074
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    :cond_3
    :goto_2
    const-string v4, "enabled"

    if-eqz p1, :cond_4

    .line 1079
    invoke-static {v4, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1083
    :cond_4
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 1084
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 1088
    :cond_5
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/AppCenterService;

    .line 1091
    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v6

    if-eq v6, p1, :cond_6

    .line 1092
    invoke-interface {v5, p1}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    .line 1098
    invoke-static {v4, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    const-string v1, "AppCenter"

    if-eqz v3, :cond_9

    const-string p1, "App Center has been disabled."

    .line 1103
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    const-string p1, "App Center has been enabled."

    .line 1105
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1107
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Center has already been "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const-string v4, "disabled"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private declared-synchronized setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1115
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1116
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/appcenter/AppCenter$11;-><init>(Lcom/microsoft/appcenter/AppCenter;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1126
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceLogLevel(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 514
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    .line 515
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceLogUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 524
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/appcenter/AppCenter$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/AppCenter$2;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 577
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 578
    iget-boolean v1, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "AppCenter"

    const-string p2, "setMaxStorageSize may not be called after App Center has been configured."

    .line 579
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/16 v3, 0x6000

    cmp-long v1, p1, v3

    if-gez v1, :cond_1

    :try_start_1
    const-string p1, "AppCenter"

    const-string p2, "Maximum storage size must be at least 24576 bytes."

    .line 584
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    monitor-exit p0

    return-object v0

    .line 588
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v1, :cond_2

    const-string p1, "AppCenter"

    const-string p2, "setMaxStorageSize may only be called once per app launch."

    .line 589
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 591
    monitor-exit p0

    return-object v0

    .line 593
    :cond_2
    :try_start_3
    iput-wide p1, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    .line 594
    iput-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceUserId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 454
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-nez v0, :cond_0

    const-string p1, "AppCenter"

    const-string v0, "AppCenter must be configured from application, libraries cannot use call setUserId."

    .line 455
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 458
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "AppCenter"

    const-string v0, "AppCenter must be configured with a secret from application to call setUserId."

    .line 459
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 463
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForAppCenter(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 464
    monitor-exit p0

    return-void

    .line 466
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 467
    monitor-exit p0

    return-void

    .line 470
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->setUserId(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 495
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/microsoft/appcenter/AppCenter$1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter$1;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x8L
        .end annotation
    .end param

    .line 268
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogLevel(I)V

    return-void
.end method

.method public static setLogUrl(Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxStorageSize(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1167
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 1

    .line 242
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    return-void
.end method

.method public static varargs start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 366
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs start(Landroid/app/Application;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 378
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs start([Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 353
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs startFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 395
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V

    return-void
.end method

.method private declared-synchronized startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 997
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 998
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 878
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 879
    :cond_0
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 885
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AppCenter"

    if-eqz v1, :cond_1

    .line 887
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 888
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "App Center has already started the service with class name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :cond_1
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez p3, :cond_2

    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "App Center was started without app secret, but the service requires it; not starting service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)Z"
        }
    .end annotation

    .line 914
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v0}, Lcom/microsoft/appcenter/ServiceInstrumentationUtils;->isServiceDisabledByInstrumentation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instrumentation variable to disable service has been set; not starting service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppCenter"

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/AppCenterService;->onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V

    .line 920
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 921
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 905
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This service cannot be started from a library: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppCenter"

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 909
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final varargs declared-synchronized startServices(Z[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "AppCenter"

    const-string p2, "Cannot start services, services array is null. Failed to start services."

    .line 838
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    monitor-exit p0

    return-void

    .line 841
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    const-string v3, "\t"

    .line 844
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "AppCenter"

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start services, App Center has not been configured. Failed to start the following services:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    monitor-exit p0

    return-void

    .line 851
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 853
    array-length v3, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    if-nez v5, :cond_3

    const-string v5, "AppCenter"

    const-string v6, "Skipping null service, please check your varargs/array does not contain any null reference."

    .line 855
    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v6, "getInstance"

    .line 858
    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/AppCenterService;

    .line 859
    invoke-direct {p0, v6, v0, v2, p1}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_4
    const-string v7, "AppCenter"

    .line 861
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get service instance \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', skipping it."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 867
    :cond_4
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/appcenter/AppCenter$8;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/microsoft/appcenter/AppCenter$8;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v0

    const/4 v1, 0x0

    .line 232
    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method getApplication()Landroid/app/Application;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1177
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method getServices()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    return-object v0
.end method

.method getUncaughtExceptionHandler()Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    return-object v0
.end method

.method isInstanceEnabled()Z
    .locals 2

    const-string v0, "enabled"

    const/4 v1, 0x1

    .line 1051
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setChannel(Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1187
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-void
.end method
