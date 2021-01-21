.class public Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;
.super Ljava/lang/Object;
.source "CurveFittedDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# static fields
.field public static final TAG:Ljava/lang/String; = "CurveFittedDistanceCalculator"


# instance fields
.field private mCoefficient1:D

.field private mCoefficient2:D

.field private mCoefficient3:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    .line 33
    iput-wide p3, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    .line 34
    iput-wide p5, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    return-void
.end method


# virtual methods
.method public calculateDistance(ID)D
    .locals 11

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    :cond_0
    const/4 v0, 0x2

    .line 51
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CurveFittedDistanceCalculator"

    const-string v5, "calculating distance based on mRssi of %s and txPower of %s"

    invoke-static {v2, v5, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v7, p2, v5

    int-to-double v9, p1

    div-double/2addr v7, v9

    cmpg-double p1, v7, v5

    if-gez p1, :cond_1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 57
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    goto :goto_0

    .line 60
    :cond_1
    iget-wide v5, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    iget-wide v9, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v5, v5, v7

    iget-wide v7, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    add-double/2addr v5, v7

    .line 62
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "avg mRssi: %s distance: %s"

    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v5
.end method
