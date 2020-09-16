.class public Lorg/altbeacon/beacon/service/DetectionTracker;
.super Ljava/lang/Object;
.source "DetectionTracker.java"


# static fields
.field private static final INSTANCE:Lorg/altbeacon/beacon/service/DetectionTracker;


# instance fields
.field private mLastDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lorg/altbeacon/beacon/service/DetectionTracker;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/DetectionTracker;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->INSTANCE:Lorg/altbeacon/beacon/service/DetectionTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    return-void
.end method

.method public static getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;
    .locals 1

    .line 16
    sget-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->INSTANCE:Lorg/altbeacon/beacon/service/DetectionTracker;

    return-object v0
.end method


# virtual methods
.method public getLastDetectionTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    return-wide v0
.end method

.method public recordDetection()V
    .locals 2

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    return-void
.end method
