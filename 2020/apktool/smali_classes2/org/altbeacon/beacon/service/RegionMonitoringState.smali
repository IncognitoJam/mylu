.class public Lorg/altbeacon/beacon/service/RegionMonitoringState;
.super Ljava/lang/Object;
.source "RegionMonitoringState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionMonitoringState"


# instance fields
.field private final callback:Lorg/altbeacon/beacon/service/Callback;

.field private inside:Z

.field private lastSeenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 40
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method

.method public getInside()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    return v0
.end method

.method public markInside()Z
    .locals 2

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 50
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public markOutside()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    return-void
.end method

.method public markOutsideIfExpired()Z
    .locals 7

    .line 63
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->inside:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRegionExitPeriod()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 65
    sget-object v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/altbeacon/beacon/service/RegionMonitoringState;->lastSeenTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    .line 68
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRegionExitPeriod()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "We are newly outside the region because the lastSeenTime of %s was %s seconds ago, and that is over the expiration duration of %s"

    .line 65
    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markOutside()V

    return v3

    :cond_0
    return v1
.end method
