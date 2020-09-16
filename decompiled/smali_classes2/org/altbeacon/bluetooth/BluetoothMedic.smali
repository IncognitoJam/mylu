.class public Lorg/altbeacon/bluetooth/BluetoothMedic;
.super Ljava/lang/Object;
.source "BluetoothMedic.java"


# static fields
.field private static final MIN_MILLIS_BETWEEN_BLUETOOTH_POWER_CYCLES:J = 0xea60L

.field public static final NO_TEST:I = 0x0

.field public static final SCAN_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMedic"

.field public static final TRANSMIT_TEST:I = 0x2

.field private static sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLastBluetoothPowerCycleTime:J

.field private mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNotificationIcon:I

.field private mNotificationsEnabled:Z

.field private mScanTestResult:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTestType:I

.field private mTransmitterTestResult:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 92
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 94
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    .line 95
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 100
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetoothIfNotTooSoon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method private cycleBluetooth()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 396
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Power cycling bluetooth"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Turning Bluetooth off."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 400
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothMedic$4;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$4;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 410
    :cond_0
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot cycle bluetooth.  Manager is null."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private cycleBluetoothIfNotTooSoon()Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/32 v3, 0xea60

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 383
    sget-object v3, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cycling bluetooth because we just did so "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds ago."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 387
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 388
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Power cycling bluetooth"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetooth()V

    const/4 v0, 0x1

    return v0
.end method

.method private getAdvertiserSafely(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 464
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 467
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Cannot get bluetoothLeAdvertiser"

    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;
    .locals 1

    .line 142
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-direct {v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;-><init>()V

    sput-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 145
    :cond_0
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    return-object v0
.end method

.method private initializeWithContext(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "bluetooth"

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    :cond_1
    return-void

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot get BluetoothManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scheduleRegularTests(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 441
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 442
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 444
    invoke-static {p1}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->getJobId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 445
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 446
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/32 v2, 0xdbba0

    .line 447
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    .line 448
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 449
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 450
    iget v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    const-string v3, "test_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 451
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const-string v0, "jobscheduler"

    .line 453
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 416
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 417
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "err"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMedic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    .line 421
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 422
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 423
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p3

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NoOperation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 426
    invoke-virtual {p3, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p3

    .line 430
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "notification"

    .line 432
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 434
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void

    :array_0
    .array-data 8
        0xc8
        0x64
        0xc8
    .end array-data
.end method


# virtual methods
.method public enablePeriodicTests(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 197
    iput p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    .line 198
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Medic scheduling periodic tests of types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->scheduleRegularTests(Landroid/content/Context;)V

    return-void
.end method

.method public enablePowerCycleOnFailures(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 174
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "onScanFailed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 177
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "onStartFailure"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 179
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Medic monitoring for transmission and scan failure notifications with receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public runScanTest(Landroid/content/Context;)Z
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 217
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Starting scan test"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 221
    new-instance v4, Lorg/altbeacon/bluetooth/BluetoothMedic$2;

    invoke-direct {v4, p0, v0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$2;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/content/Context;)V

    if-eqz v0, :cond_2

    .line 263
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 264
    :cond_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    .line 265
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v5, "Waiting for scan test to complete..."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x3e8

    .line 268
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_0

    .line 272
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v2, "Timeout running scan test"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_1
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Bluetooth is off.  Cannot run scan test."

    invoke-static {p1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Cannot get scanner"

    invoke-static {p1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_3
    :goto_0
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "scan test complete"

    invoke-static {p1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public runTransmitterTest(Landroid/content/Context;)Z
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 306
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 307
    invoke-direct {p0, v2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->getAdvertiserSafely(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v5

    .line 310
    new-instance v6, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    new-array v7, v3, [B

    aput-byte v4, v7, v4

    .line 311
    invoke-virtual {v6, v4, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v6

    .line 312
    sget-object v7, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Starting transmitter test"

    invoke-static {v7, v9, v8}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v7, Lorg/altbeacon/bluetooth/BluetoothMedic$3;

    invoke-direct {v7, p0, v2, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$3;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_0

    .line 345
    :cond_0
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Cannot get advertiser"

    invoke-static {p1, v5, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 348
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Waiting for transmitter test to complete..."

    invoke-static {p1, v5, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 351
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_1

    .line 355
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Timeout running transmitter test"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :cond_2
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "transmitter test complete"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public setNotificationsEnabled(ZI)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 375
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    .line 376
    iput p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    return-void
.end method
