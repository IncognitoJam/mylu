.class public Lcom/microsoft/codepush/react/CodePush;
.super Ljava/lang/Object;
.source "CodePush.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field private static mCurrentInstance:Lcom/microsoft/codepush/react/CodePush; = null

.field private static mPublicKey:Ljava/lang/String; = null

.field private static mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder; = null

.field private static mServerUrl:Ljava/lang/String; = "https://codepush.appcenter.ms/"

.field private static sAppVersion:Ljava/lang/String; = null

.field private static sIsRunningBinaryVersion:Z = false

.field private static sNeedToReportRollback:Z = false

.field private static sTestConfigurationFlag:Z = false


# instance fields
.field private mAssetsBundleFileName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeploymentKey:Ljava/lang/String;

.field private mDidUpdate:Z

.field private final mIsDebugMode:Z

.field private mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

.field private mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

.field private mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    .line 64
    new-instance p2, Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    .line 65
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    .line 66
    iput-boolean p3, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    .line 67
    new-instance p1, Lcom/microsoft/codepush/react/SettingsManager;

    iget-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/microsoft/codepush/react/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    .line 69
    sget-object p1, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 72
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lcom/microsoft/codepush/react/CodePushUnknownException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to get package info for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 78
    :cond_0
    :goto_0
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    const-string p1, "PublicKey"

    .line 80
    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    :cond_1
    const-string p1, "ServerUrl"

    .line 83
    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->clearDebugCacheIfNeeded(Lcom/facebook/react/ReactInstanceManager;)V

    .line 87
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->initializeUpdateAfterRestart()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ZI)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 98
    invoke-direct {p0, p4}, Lcom/microsoft/codepush/react/CodePush;->getPublicKeyByResourceDescriptor(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 92
    sput-object p4, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    if-eqz p5, :cond_0

    .line 105
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/microsoft/codepush/react/CodePush;->getPublicKeyByResourceDescriptor(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    .line 108
    :cond_0
    sput-object p4, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method public static getBundleUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {p0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCustomPropertyFromStringsIfExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CodePush"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getJSBundleFile()Ljava/lang/String;
    .locals 1

    const-string v0, "index.android.bundle"

    .line 226
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJSBundleFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 230
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p0}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFileInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    new-instance p0, Lcom/microsoft/codepush/react/CodePushNotInitializedException;

    const-string v0, "A CodePush instance has not been created yet. Have you added it to your app\'s list of ReactPackages?"

    invoke-direct {p0, v0}, Lcom/microsoft/codepush/react/CodePushNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPublicKeyByResourceDescriptor(I)Ljava/lang/String;
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 124
    :cond_0
    new-instance p1, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;

    const-string v0, "Specified public key is empty"

    invoke-direct {p1, v0}, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get public key, related resource descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/microsoft/codepush/react/CodePushInvalidPublicKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .line 394
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    invoke-interface {v0}, Lcom/microsoft/codepush/react/ReactInstanceHolder;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceUrl()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method private hasBinaryVersionChanged(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "appVersion"

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 348
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isPackageBundleLatest(Lorg/json/JSONObject;)Z
    .locals 5

    :try_start_0
    const-string v0, "binaryModifiedTime"

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "appVersion"

    .line 336
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->getBinaryResourcesModifiedTime()J

    move-result-wide v1

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 340
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->isUsingTestConfiguration()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 342
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Error in reading binary modified date from package metadata"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isUsingTestConfiguration()Z
    .locals 1

    .line 372
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sTestConfigurationFlag:Z

    return v0
.end method

.method public static overrideAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 356
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    return-void
.end method

.method private rollbackPackage()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/SettingsManager;->saveFailedUpdate(Lorg/json/JSONObject;)V

    .line 362
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->rollbackPackage()V

    .line 363
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removePendingUpdate()V

    return-void
.end method

.method public static setReactInstanceHolder(Lcom/microsoft/codepush/react/ReactInstanceHolder;)V
    .locals 0

    .line 390
    sput-object p0, Lcom/microsoft/codepush/react/CodePush;->mReactInstanceHolder:Lcom/microsoft/codepush/react/ReactInstanceHolder;

    return-void
.end method

.method public static setUsingTestConfiguration(Z)V
    .locals 0

    .line 380
    sput-boolean p0, Lcom/microsoft/codepush/react/CodePush;->sTestConfigurationFlag:Z

    return-void
.end method


# virtual methods
.method public clearDebugCacheIfNeeded(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 157
    invoke-virtual {p1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isReloadOnJSChangeEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    :goto_0
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 163
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "ReactNativeDevBundle.js"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public clearUpdates()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->clearUpdates()V

    .line 385
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removePendingUpdate()V

    .line 386
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->removeFailedUpdates()V

    return-void
.end method

.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v6, Lcom/microsoft/codepush/react/CodePushNativeModule;

    iget-object v3, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    iget-object v4, p0, Lcom/microsoft/codepush/react/CodePush;->mTelemetryManager:Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    iget-object v5, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/codepush/react/CodePushNativeModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/microsoft/codepush/react/CodePush;Lcom/microsoft/codepush/react/CodePushUpdateManager;Lcom/microsoft/codepush/react/CodePushTelemetryManager;Lcom/microsoft/codepush/react/SettingsManager;)V

    .line 403
    new-instance v0, Lcom/microsoft/codepush/react/CodePushDialog;

    invoke-direct {v0, p1}, Lcom/microsoft/codepush/react/CodePushDialog;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public didUpdate()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetsBundleFileName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    return-object v0
.end method

.method getBinaryResourcesModifiedTime()J
    .locals 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "CODE_PUSH_APK_BUILD_TIME"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Error in getting binary resources modified time"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeploymentKey()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getJSBundleFileInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 238
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mAssetsBundleFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushMalformedDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 252
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 253
    sput-boolean v1, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object p1

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v2

    .line 258
    invoke-direct {p0, v2}, Lcom/microsoft/codepush/react/CodePush;->isPackageBundleLatest(Lorg/json/JSONObject;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 259
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 260
    sput-boolean v4, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object v0

    .line 264
    :cond_1
    iput-boolean v4, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 265
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/microsoft/codepush/react/CodePush;->hasBinaryVersionChanged(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePush;->clearUpdates()V

    .line 269
    :cond_3
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->logBundleUrl(Ljava/lang/String;)V

    .line 270
    sput-boolean v1, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return-object p1
.end method

.method public getPackageFolder()Ljava/lang/String;
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    const-string v2, "packageHash"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 276
    sget-object v0, Lcom/microsoft/codepush/react/CodePush;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method initializeUpdateAfterRestart()V
    .locals 4

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 284
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->getPendingUpdate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mUpdateManager:Lcom/microsoft/codepush/react/CodePushUpdateManager;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 287
    invoke-direct {p0, v1}, Lcom/microsoft/codepush/react/CodePush;->isPackageBundleLatest(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/microsoft/codepush/react/CodePush;->hasBinaryVersionChanged(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "isLoading"

    .line 293
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v0, "Update did not finish loading the last time, rolling back to a previous version."

    .line 297
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 298
    sput-boolean v2, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    .line 299
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePush;->rollbackPackage()V

    goto :goto_1

    .line 303
    :cond_1
    iput-boolean v2, p0, Lcom/microsoft/codepush/react/CodePush;->mDidUpdate:Z

    .line 307
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePush;->mSettingsManager:Lcom/microsoft/codepush/react/SettingsManager;

    const-string v3, "hash"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/codepush/react/SettingsManager;->savePendingUpdate(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Unable to read pending update metadata stored in SharedPreferences"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    const-string v0, "Skipping initializeUpdateAfterRestart(), binary version is newer"

    .line 288
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method invalidateCurrentInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    sput-object v0, Lcom/microsoft/codepush/react/CodePush;->mCurrentInstance:Lcom/microsoft/codepush/react/CodePush;

    return-void
.end method

.method isDebugMode()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/microsoft/codepush/react/CodePush;->mIsDebugMode:Z

    return v0
.end method

.method isRunningBinaryVersion()Z
    .locals 1

    .line 326
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sIsRunningBinaryVersion:Z

    return v0
.end method

.method needToReportRollback()Z
    .locals 1

    .line 352
    sget-boolean v0, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    return v0
.end method

.method public setDeploymentKey(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePush;->mDeploymentKey:Ljava/lang/String;

    return-void
.end method

.method public setNeedToReportRollback(Z)V
    .locals 0

    .line 367
    sput-boolean p1, Lcom/microsoft/codepush/react/CodePush;->sNeedToReportRollback:Z

    return-void
.end method
