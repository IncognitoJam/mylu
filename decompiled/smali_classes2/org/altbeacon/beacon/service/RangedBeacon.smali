.class public Lorg/altbeacon/beacon/service/RangedBeacon;
.super Ljava/lang/Object;
.source "RangedBeacon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_MAX_TRACKING_AGE:J = 0x1388L

.field public static final DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "RangedBeacon"

.field public static maxTrackingAge:J = 0x1388L

.field private static sampleExpirationMilliseconds:J = 0x4e20L


# instance fields
.field protected lastTrackedTimeMillis:J

.field mBeacon:Lorg/altbeacon/beacon/Beacon;

.field protected transient mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

.field private mTracked:Z

.field private packetCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    .line 27
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method private getFilter()Lorg/altbeacon/beacon/service/RssiFilter;
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v0

    .line 100
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RssiFilter;

    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "RangedBeacon"

    const-string v2, "Could not construct RssiFilterImplClass %s"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    return-object v0
.end method

.method public static setMaxTrackinAge(I)V
    .locals 2

    int-to-long v0, p0

    .line 80
    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    return-void
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0

    .line 75
    sput-wide p0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    .line 76
    sget-wide p0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    invoke-static {p0, p1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->setSampleExpirationMilliseconds(J)V

    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    .line 69
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/altbeacon/beacon/service/RssiFilter;->addMeasurement(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public commitMeasurements()V
    .locals 6

    .line 50
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v0

    const-string v1, "RangedBeacon"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->calculateRssi()D

    move-result-wide v3

    .line 52
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0, v3, v4}, Lorg/altbeacon/beacon/Beacon;->setRunningAverageRssi(D)V

    .line 53
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v5

    invoke-interface {v5}, Lorg/altbeacon/beacon/service/RssiFilter;->getMeasurementCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/altbeacon/beacon/Beacon;->setRssiMeasurementCount(I)V

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "calculated new runningAverageRssi: %s"

    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "No measurements available to calculate running average"

    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/Beacon;->setPacketCount(I)V

    .line 60
    iput v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    return-void
.end method

.method public getBeacon()Lorg/altbeacon/beacon/Beacon;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public getTrackingAge()J
    .locals 4

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isExpired()Z
    .locals 5

    .line 92
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getTrackingAge()J

    move-result-wide v0

    sget-wide v2, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTracked()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v0

    return v0
.end method

.method public setTracked(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return-void
.end method

.method public updateBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1

    .line 31
    iget v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    .line 32
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 33
    iget-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->addMeasurement(Ljava/lang/Integer;)V

    return-void
.end method
