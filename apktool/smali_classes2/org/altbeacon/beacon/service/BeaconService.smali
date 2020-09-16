.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;,
        Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
    }
.end annotation


# static fields
.field public static final MSG_SET_SCAN_PERIODS:I = 0x6

.field public static final MSG_START_MONITORING:I = 0x4

.field public static final MSG_START_RANGING:I = 0x2

.field public static final MSG_STOP_MONITORING:I = 0x5

.field public static final MSG_STOP_RANGING:I = 0x3

.field public static final MSG_SYNC_SETTINGS:I = 0x7

.field public static final TAG:Ljava/lang/String; = "BeaconService"


# instance fields
.field private bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field private final handler:Landroid/os/Handler;

.field private mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

.field final mMessenger:Landroid/os/Messenger;

.field private mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    .line 195
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private ensureNotificationProcessorSetup()V
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    .line 257
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->register()V

    :cond_0
    return-void
.end method

.method private getManifestMetadataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRestartIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private startForegroundIfConfigured()V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getForegroundServiceNotificationId()I

    move-result v0

    if-eqz v1, :cond_0

    .line 273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 275
    invoke-virtual {p0, v0, v1}, Lorg/altbeacon/beacon/service/BeaconService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCycledLeScanCallback()Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledLeScanCallback()Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 p1, 0x0

    .line 309
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BeaconService"

    const-string v1, "binding"

    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 201
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 202
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->start()V

    .line 205
    :cond_0
    new-instance v0, Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/ScanHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    .line 206
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->createCycledLeScanner(ZLorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->setMonitoringStatus(Lorg/altbeacon/beacon/service/MonitoringStatus;)V

    .line 210
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->setRangedRegionState(Ljava/util/Map;)V

    .line 211
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->setBeaconParsers(Ljava/util/Set;)V

    .line 212
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v2, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v2}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>()V

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->setExtraDataBeaconTracker(Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;)V

    .line 214
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/BeaconManager;->setScannerInSameProcess(Z)V

    .line 216
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->isMainProcess()Z

    move-result v0

    const-string v3, "2.16.1"

    const-string v4, "BeaconService"

    if-eqz v0, :cond_2

    .line 217
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v3, "beaconService version %s is starting up on the main process"

    invoke-static {v4, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->ensureNotificationProcessorSetup()V

    goto :goto_0

    .line 222
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v3, "beaconService version %s is starting up on a separate process"

    invoke-static {v4, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lorg/altbeacon/beacon/utils/ProcessUtils;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/utils/ProcessUtils;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beaconService PID is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with process name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "longScanForcingEnabled"

    .line 227
    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/BeaconService;->getManifestMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "true"

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "longScanForcingEnabled to keep scans going on Android N for > 30 minutes"

    invoke-static {v4, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setLongScanForcingEnabled(Z)V

    .line 235
    :cond_3
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->reloadParsers()V

    .line 237
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    :try_start_0
    const-string v0, "org.altbeacon.beacon.SimulatedScanData"

    .line 242
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "beacons"

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/altbeacon/beacon/service/ScanHelper;->setSimulatedScanData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 248
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    invoke-static {v0, v4, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 246
    :catch_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "No org.altbeacon.beacon.SimulatedScanData class exists."

    invoke-static {v4, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :goto_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->startForegroundIfConfigured()V

    return-void
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 325
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v1, v3, :cond_0

    .line 327
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not supported prior to API 18."

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->unregister()V

    .line 333
    :cond_1
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->stop()V

    .line 336
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroy called.  stopping scanning"

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 341
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->destroy()V

    .line 343
    :cond_3
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stopStatusPreservation()V

    .line 344
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->terminateThreads()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "starting with null intent"

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting with intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    .line 294
    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 6

    .line 349
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 350
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconService"

    const-string v2, "task removed"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.2"

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.3"

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getRestartIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 356
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Setting a wakeup alarm to go off due to Android 4.4.2 service restarting bug."

    invoke-static {v1, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 p1, 0x0

    .line 316
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconService"

    const-string v2, "unbinding so destroying self"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/BeaconService;->stopForeground(Z)V

    .line 318
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->stopSelf()V

    return p1
.end method

.method public reloadParsers()V
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->reloadParsers()V

    return-void
.end method

.method public setScanPeriods(JJZ)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setScanPeriods(JJZ)V

    :cond_0
    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 401
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "startMonitoring called"

    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    const/4 p1, 0x1

    .line 403
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p2

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Currently monitoring %s regions."

    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    :cond_0
    return-void
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "BeaconService"

    const-string v3, "Already ranging that region -- will replace existing region."

    .line 372
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lorg/altbeacon/beacon/service/RangeState;

    invoke-direct {v3, p2}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BeaconService"

    const-string p2, "Currently ranging %s regions."

    const/4 v1, 0x1

    .line 376
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 377
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 411
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "stopMonitoring called"

    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->removeRegion(Lorg/altbeacon/beacon/Region;)V

    const/4 p1, 0x1

    .line 413
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Currently monitoring %s regions."

    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 415
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    :cond_0
    return-void
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string v1, "BeaconService"

    const-string v2, "Currently ranging %s regions."

    const/4 v3, 0x1

    .line 389
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 393
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 390
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
