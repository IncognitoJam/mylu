.class public Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;
.super Ljava/lang/Object;
.source "RunningAverageRssiFilter.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/RssiFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    }
.end annotation


# static fields
.field public static final DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "RunningAverageRssiFilter"

.field private static sampleExpirationMilliseconds:J = 0x4e20L


# instance fields
.field private mMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    return-void
.end method

.method static getSampleExpirationMilliseconds()J
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 92
    sget-wide v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    return-wide v0
.end method

.method private declared-synchronized refreshMeasurements()V
    .locals 8

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    sub-long/2addr v3, v5

    sget-wide v5, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    iput-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0

    .line 87
    sput-wide p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 3

    .line 27
    new-instance v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;-><init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$1;)V

    .line 28
    iput-object p1, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    .line 30
    iget-object p1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateRssi()D
    .locals 10

    .line 44
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->refreshMeasurements()V

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 49
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v4, v1, 0x1

    sub-int v1, v0, v1

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    move-wide v6, v5

    move v5, v4

    :goto_1
    if-gt v5, v1, :cond_1

    .line 55
    iget-object v8, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    iget-object v8, v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v4

    const/4 v4, 0x1

    add-int/2addr v1, v4

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 59
    new-array v1, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "RunningAverageRssiFilter"

    const-string v2, "Running average mRssi based on %s measurements: %s"

    .line 59
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v6
.end method

.method public getMeasurementCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
