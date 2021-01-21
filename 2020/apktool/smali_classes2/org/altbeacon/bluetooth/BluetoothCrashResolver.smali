.class public Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.super Ljava/lang/Object;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;
    }
.end annotation


# static fields
.field private static final BLUEDROID_MAX_BLUETOOTH_MAC_COUNT:I = 0x7c6

.field private static final BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT:I = 0x190

.field private static final DISTINCT_BLUETOOTH_ADDRESSES_FILE:Ljava/lang/String; = "BluetoothCrashResolverState.txt"

.field private static final MIN_TIME_BETWEEN_STATE_SAVES_MILLIS:J = 0xea60L

.field private static final PREEMPTIVE_ACTION_ENABLED:Z = true

.field private static final SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "BluetoothCrashResolver"

.field private static final TIME_TO_LET_DISCOVERY_RUN_MILLIS:I = 0x1388


# instance fields
.field private context:Landroid/content/Context;

.field private detectedCrashCount:I

.field private discoveryStartConfirmed:Z

.field private final distinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBluetoothCrashDetectionTime:J

.field private lastBluetoothOffTime:J

.field private lastBluetoothTurningOnTime:J

.field private lastRecoverySucceeded:Z

.field private lastStateSaveTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recoveryAttemptCount:I

.field private recoveryInProgress:Z

.field private updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 50
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    const-wide/16 v1, 0x0

    .line 52
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    .line 53
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    .line 54
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 55
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 56
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 57
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 58
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 314
    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 104
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "constructed"

    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->loadState()V

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return p0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->finishRecovery()V

    return-void
.end method

.method static synthetic access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private cancelDiscovery()V
    .locals 5

    const-string v0, "BluetoothCrashResolver"

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    .line 450
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 451
    iget-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    if-nez v1, :cond_0

    const-string v1, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    .line 452
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Cancelling discovery"

    .line 457
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0

    :cond_1
    const-string v1, "Discovery not running.  Won\'t cancel it"

    .line 461
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "DiscoveryCanceller sleep interrupted."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private finishRecovery()V
    .locals 4

    const/4 v0, 0x0

    .line 307
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Recovery attempt finished"

    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return-void

    :catchall_0
    move-exception v0

    .line 310
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getCrashRiskDeviceCount()I
    .locals 1

    const/16 v0, 0x636

    return v0
.end method

.method private loadState()V
    .locals 8

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "BluetoothCrashResolverState.txt"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 405
    :try_start_0
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 406
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 410
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 412
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 416
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 418
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 420
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 422
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    const-string v5, "1"

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 424
    iput-boolean v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 429
    :cond_3
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 430
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-object v4, v6

    goto :goto_1

    :catch_1
    move-object v4, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto :goto_5

    :catch_2
    :goto_1
    :try_start_3
    const-string v5, "Can\'t parse file %s"

    .line 436
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    .line 441
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    :goto_3
    :try_start_5
    const-string v5, "Can\'t read macs from %s"

    .line 434
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_5

    goto :goto_2

    .line 445
    :catch_4
    :cond_5
    :goto_4
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Read %s Bluetooth addresses"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_5
    if-eqz v6, :cond_6

    .line 441
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 444
    :catch_5
    :cond_6
    throw v0
.end method

.method private processStateChange()V
    .locals 5

    .line 266
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;->dataUpdated()V

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 270
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    :cond_1
    return-void
.end method

.method private saveState()V
    .locals 7

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 374
    :try_start_0
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v4, "BluetoothCrashResolverState.txt"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 375
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 376
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 379
    iget-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    if-eqz v2, :cond_0

    const-string v2, "1\n"

    goto :goto_0

    :cond_0
    const-string v2, "0\n"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    :try_start_2
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 382
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    .line 383
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 385
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-object v2, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_6
    const-string v3, "BluetoothCrashResolver"

    const-string v4, "Can\'t write macs to %s"

    .line 387
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "BluetoothCrashResolverState.txt"

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    .line 392
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 396
    :catch_2
    :cond_2
    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Wrote %s Bluetooth addresses"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_4
    if-eqz v4, :cond_3

    .line 392
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 395
    :catch_3
    :cond_3
    throw v0
.end method

.method private startRecovery()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 278
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 279
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v2, 0x0

    .line 280
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BluetoothCrashResolver"

    const-string v5, "about to check if discovery is active"

    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Recovery attempt started"

    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iput-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 284
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 285
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "about to command discovery"

    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Can\'t start discovery.  Is Bluetooth turned on?"

    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "startDiscovery commanded.  isDiscovering()=%s"

    invoke-static {v4, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    new-array v0, v1, [Ljava/lang/Object;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "We will be cancelling this discovery in %s milliseconds."

    invoke-static {v4, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->cancelDiscovery()V

    goto :goto_0

    .line 302
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Already discovering.  Recovery attempt abandoned."

    invoke-static {v4, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public crashDetected()V
    .locals 6

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "BluetoothCrashResolver"

    const/16 v3, 0x12

    if-ge v0, v3, :cond_0

    .line 204
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Ignoring crashes before API 18, because BLE is unsupported."

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "BluetoothService crash detected"

    invoke-static {v2, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    .line 209
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 210
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "Distinct Bluetooth devices seen at crash: %s"

    .line 209
    invoke-static {v2, v4, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 213
    iput-wide v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 214
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 216
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-eqz v0, :cond_2

    .line 217
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Ignoring Bluetooth crash because recovery is already in progress."

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 222
    :goto_0
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    return-void
.end method

.method public disableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public forceFlush()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 253
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    return-void
.end method

.method public getDetectedCrashCount()I
    .locals 1

    .line 230
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    return v0
.end method

.method public getLastBluetoothCrashDetectionTime()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    return-wide v0
.end method

.method public getRecoveryAttemptCount()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    return v0
.end method

.method public isLastRecoverySucceeded()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    return v0
.end method

.method public isRecoveryInProgress()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method public notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 181
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 186
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    .line 187
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "BluetoothCrashResolver"

    const-string v3, "Distinct Bluetooth devices seen: %s"

    invoke-static {v0, v3, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->getCrashRiskDeviceCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 190
    iget-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-nez p1, :cond_1

    .line 191
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 193
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Large number of Bluetooth devices detected: %s Proactively attempting to clear out address list to prevent a crash"

    .line 191
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Stopping LE Scan"

    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 196
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 197
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setUpdateNotifier(Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    return-void
.end method

.method public start()V
    .locals 3

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "started listening for BluetoothAdapter events"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "stopped listening for BluetoothAdapter events"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    return-void
.end method
