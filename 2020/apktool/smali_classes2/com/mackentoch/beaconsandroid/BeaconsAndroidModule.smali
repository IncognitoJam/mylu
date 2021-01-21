.class public Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "BeaconsAndroidModule.java"

# interfaces
.implements Lorg/altbeacon/beacon/BeaconConsumer;


# static fields
.field private static final ARMA_RSSI_FILTER:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BeaconsAndroidModule"

.field private static final RUNNING_AVG_RSSI_FILTER:I


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

.field private mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

.field private mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 280
    new-instance v0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;

    invoke-direct {v0, p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;-><init>(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)V

    iput-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 342
    new-instance v0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;

    invoke-direct {v0, p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;-><init>(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)V

    iput-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    const-string v0, "BeaconsAndroidModule"

    const-string v1, "BeaconsAndroidModule - started"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createMonitoringResponse(Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createRangingResponse(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method private createMonitoringResponse(Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 298
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 299
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "major"

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v2

    :cond_2
    const-string p1, "minor"

    invoke-interface {v0, p1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private createRangingResponse(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 353
    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const-string v1, "uuid"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance p2, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {p2}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 356
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    .line 357
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 358
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 360
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v4

    const-string v5, "major"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v4

    const-string v5, "minor"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_1
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v4

    const-string v5, "rssi"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v8, "proximity"

    const-string v9, "distance"

    cmpl-double v10, v4, v6

    if-eqz v10, :cond_3

    .line 365
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    .line 366
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v10, v4, v6

    if-eqz v10, :cond_3

    .line 367
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v4, v6

    if-nez v10, :cond_2

    goto :goto_2

    .line 371
    :cond_2
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    invoke-interface {v3, v9, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 372
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->getProximity(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v8, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-wide v4, 0x408f380000000000L    # 999.0

    .line 368
    invoke-interface {v3, v9, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v2, "far"

    .line 369
    invoke-interface {v3, v8, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_3
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "beacons"

    .line 376
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method

.method private createRegion(Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object p2

    .line 418
    :goto_0
    new-instance v1, Lorg/altbeacon/beacon/Region;

    invoke-direct {v1, p1, p2, v0, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    return-object v1
.end method

.method private createRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {p2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object p2

    .line 423
    :goto_0
    new-instance v1, Lorg/altbeacon/beacon/Region;

    .line 426
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p4}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object p4, v0

    .line 427
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {p3}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    :cond_2
    invoke-direct {v1, p1, p2, p4, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    return-object v1
.end method

.method private getProximity(D)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "immediate"

    return-object p1

    :cond_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "near"

    return-object p1

    :cond_2
    const-string p1, "far"

    return-object p1
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p3    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 409
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 411
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 412
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addParser(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "BeaconsAndroidModule"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconsAndroidModule - addParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->unbindManager()V

    .line 103
    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v2}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    invoke-virtual {v2, p1}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->bindManager()V

    .line 105
    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 107
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addParsersListToDetection(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->unbindManager()V

    const/4 v2, 0x0

    .line 128
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 129
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BeaconsAndroidModule"

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addParsersListToDetection - add parser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v5}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    invoke-virtual {v5, v3}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->bindManager()V

    .line 134
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bindManager()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BeaconsAndroidModule"

    const-string v1, "BeaconsAndroidModule - bindManager: "

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    :cond_0
    return-void
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public checkTransmissionSupported(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->checkTransmissionSupported(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SUPPORTED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NOT_SUPPORTED_MIN_SDK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NOT_SUPPORTED_BLE"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NOT_SUPPORTED_CANNOT_GET_ADVERTISER_MULTIPLE_ADVERTISEMENTS"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NOT_SUPPORTED_CANNOT_GET_ADVERTISER"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "RUNNING_AVG_RSSI_FILTER"

    .line 74
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ARMA_RSSI_FILTER"

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMonitoredRegions(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 205
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getMonitoredRegions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 207
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 208
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "identifier"

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "uuid"

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, "major"

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v3

    :cond_1
    const-string v2, "minor"

    invoke-interface {v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 212
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BeaconsAndroidModule"

    return-object v0
.end method

.method public getRangedRegions(Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 219
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getRangedRegions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 221
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 222
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "region"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uuid"

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mApplicationContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 57
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v1}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    const-string v2, "m:0-3=4c000215,i:4-19,i:20-21,i:22-23,p:24-24"

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->bindManager()V

    return-void
.end method

.method public onBeaconServiceConnect()V
    .locals 3

    const-string v0, "BeaconsAndroidModule"

    const-string v1, "onBeaconServiceConnect"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->addMonitorNotifier(Lorg/altbeacon/beacon/MonitorNotifier;)V

    .line 240
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->addRangeNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V

    .line 241
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "beaconServiceConnected"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public removeParser(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "BeaconsAndroidModule"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconsAndroidModule - removeParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->unbindManager()V

    .line 116
    iget-object v1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v2}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    invoke-virtual {v2, p1}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->bindManager()V

    .line 118
    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 120
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeParsersListToDetection(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->unbindManager()V

    const/4 v2, 0x0

    .line 144
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 145
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BeaconsAndroidModule"

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeParsersListToDetection - remove parser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v5}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    invoke-virtual {v5, v3}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->bindManager()V

    .line 150
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setBackgroundBetweenScanPeriod(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    return-void
.end method

.method public setBackgroundScanPeriod(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    return-void
.end method

.method public setForegroundBetweenScanPeriod(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundBetweenScanPeriod(J)V

    return-void
.end method

.method public setForegroundScanPeriod(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundScanPeriod(J)V

    return-void
.end method

.method public setHardwareEqualityEnforced(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/altbeacon/beacon/Beacon;->setHardwareEqualityEnforced(Z)V

    return-void
.end method

.method public setRssiFilter(ID)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, " with custom avg modifier"

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Setting filter RUNNING_AVG"

    .line 181
    const-class v3, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;

    invoke-static {v3}, Lorg/altbeacon/beacon/BeaconManager;->setRssiFilterImplClass(Ljava/lang/Class;)V

    cmpl-double v3, p2, v1

    if-lez v3, :cond_2

    double-to-long p2, p2

    .line 183
    invoke-static {p2, p3}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->setSampleExpirationMilliseconds(J)V

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const-string p1, "Setting filter ARMA"

    .line 188
    const-class v3, Lorg/altbeacon/beacon/service/ArmaRssiFilter;

    invoke-static {v3}, Lorg/altbeacon/beacon/BeaconManager;->setRssiFilterImplClass(Ljava/lang/Class;)V

    cmpl-double v3, p2, v1

    if-lez v3, :cond_2

    .line 190
    invoke-static {p2, p3}, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->setDEFAULT_ARMA_SPEED(D)V

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Could not set the rssi filter."

    :cond_2
    :goto_0
    const-string p2, "BeaconsAndroidModule"

    .line 194
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMonitoring(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "-1"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMonitoring, monitoringRegionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", monitoringBeaconUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", minor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", major: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeaconsAndroidModule"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 269
    :try_start_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_0

    move-object p3, v4

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 270
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    :goto_1
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p2, p1}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 273
    new-array p1, v1, [Ljava/lang/Object;

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "startMonitoring, error: "

    .line 275
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x1

    .line 276
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p6, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public startRanging(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRanging, rangingRegionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangingBeaconUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeaconsAndroidModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 333
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createRegion(Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;

    move-result-object p1

    .line 334
    iget-object p2, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p2, p1}, Lorg/altbeacon/beacon/BeaconManager;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 335
    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "startRanging, error: "

    .line 337
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x1

    .line 338
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stopMonitoring(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 311
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object p3, v2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 312
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    :goto_1
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;

    move-result-object p1

    const/4 p2, 0x0

    .line 318
    :try_start_0
    iget-object p3, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p3, p1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 319
    new-array p1, p2, [Ljava/lang/Object;

    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "BeaconsAndroidModule"

    const-string p4, "stopMonitoring, error: "

    .line 321
    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    .line 322
    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    invoke-interface {p6, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public stopRanging(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->createRegion(Ljava/lang/String;Ljava/lang/String;)Lorg/altbeacon/beacon/Region;

    move-result-object p1

    const/4 p2, 0x0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 397
    new-array p1, p2, [Ljava/lang/Object;

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "BeaconsAndroidModule"

    const-string v0, "stopRanging, error: "

    .line 399
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    .line 400
    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    invoke-interface {p4, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public unbindManager()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeaconsAndroidModule"

    const-string v1, "BeaconsAndroidModule - unbindManager: "

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
