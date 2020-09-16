.class public Lorg/reactnative/facedetector/FaceDetectorUtils;
.super Ljava/lang/Object;
.source "FaceDetectorUtils.java"


# static fields
.field private static final landmarkNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "bottomMouthPosition"

    const-string v1, "leftCheekPosition"

    const-string v2, "leftEarPosition"

    const-string v3, "leftEarTipPosition"

    const-string v4, "leftEyePosition"

    const-string v5, "leftMouthPosition"

    const-string v6, "noseBasePosition"

    const-string v7, "rightCheekPosition"

    const-string v8, "rightEarPosition"

    const-string v9, "rightEarTipPosition"

    const-string v10, "rightEyePosition"

    const-string v11, "rightMouthPosition"

    .line 14
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAnglesDirection(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    const-string v0, "rollAngle"

    .line 102
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    neg-double v1, v1

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    invoke-interface {p0, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v0, "yawAngle"

    .line 103
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    neg-double v1, v1

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    invoke-interface {p0, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public static mapFromPoint(Landroid/graphics/PointF;DDIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 108
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 109
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 110
    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 111
    iget v3, p0, Landroid/graphics/PointF;->x:F

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    cmpg-float v3, v3, p5

    if-gez v3, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    add-float/2addr p5, p7

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    goto :goto_0

    .line 113
    :cond_0
    iget v3, p0, Landroid/graphics/PointF;->x:F

    cmpl-float p5, v3, p5

    if-lez p5, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    sub-float/2addr p5, p7

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    :cond_1
    :goto_0
    iget p5, p0, Landroid/graphics/PointF;->y:F

    div-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    cmpg-float p5, p5, p6

    if-gez p5, :cond_2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p8, p8, 0x2

    int-to-float p6, p8

    add-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    goto :goto_1

    .line 119
    :cond_2
    iget p5, p0, Landroid/graphics/PointF;->y:F

    cmpl-float p5, p5, p6

    if-lez p5, :cond_3

    .line 120
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p5

    div-int/lit8 p8, p8, 0x2

    int-to-float p6, p8

    sub-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    :cond_3
    :goto_1
    iget p5, p0, Landroid/graphics/PointF;->x:F

    float-to-double p5, p5

    mul-double p5, p5, p1

    const-string p1, "x"

    invoke-interface {v0, p1, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 123
    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double p0, p0

    mul-double p0, p0, p3

    const-string p2, "y"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 135
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 136
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "x"

    .line 137
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->valueMirroredHorizontally(DID)D

    move-result-wide p0

    invoke-interface {v0, v1, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 128
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 129
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "x"

    .line 130
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static rotateFaceX(Lcom/facebook/react/bridge/WritableMap;ID)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "bounds"

    .line 76
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "origin"

    .line 78
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 79
    invoke-static {v3, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "size"

    .line 81
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    neg-double v4, v4

    .line 82
    invoke-static {v3, v4, v5}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 84
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 85
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 86
    invoke-interface {v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 88
    sget-object v1, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 89
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 91
    invoke-static {v6, p1, p2, p3}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 92
    invoke-interface {p0, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {p0, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p0
.end method

.method public static serializeFace(Lcom/google/android/gms/vision/face/Face;)Lcom/facebook/react/bridge/WritableMap;
    .locals 9

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 21
    invoke-static/range {v0 .. v8}, Lorg/reactnative/facedetector/FaceDetectorUtils;->serializeFace(Lcom/google/android/gms/vision/face/Face;DDIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method public static serializeFace(Lcom/google/android/gms/vision/face/Face;DDIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 12

    .line 25
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getId()I

    move-result v0

    const-string v1, "faceID"

    invoke-interface {v9, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getEulerZ()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "rollAngle"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getEulerY()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "yawAngle"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsSmilingProbability()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsSmilingProbability()F

    move-result v0

    float-to-double v2, v0

    const-string v0, "smilingProbability"

    invoke-interface {v9, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsLeftEyeOpenProbability()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsLeftEyeOpenProbability()F

    move-result v0

    float-to-double v2, v0

    const-string v0, "leftEyeOpenProbability"

    invoke-interface {v9, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsRightEyeOpenProbability()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getIsRightEyeOpenProbability()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "rightEyeOpenProbability"

    invoke-interface {v9, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getLandmarks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/Landmark;

    .line 42
    sget-object v1, Lorg/reactnative/facedetector/FaceDetectorUtils;->landmarkNames:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v2

    aget-object v11, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lorg/reactnative/facedetector/FaceDetectorUtils;->mapFromPoint(Landroid/graphics/PointF;DDIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {v9, v11, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-int/lit8 v4, p5, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 49
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-int/lit8 v3, p7, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 51
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-int/lit8 v3, p7, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 54
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-int/lit8 v4, p6, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 55
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-int/lit8 v3, p8, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_2

    .line 56
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 57
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-int/lit8 v3, p8, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 59
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    mul-double v3, v3, p1

    const-string v1, "x"

    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    mul-double v1, v1, p3

    const-string v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 62
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getWidth()F

    move-result v2

    float-to-double v2, v2

    mul-double v2, v2, p1

    const-string v4, "width"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/Face;->getHeight()F

    move-result v2

    float-to-double v2, v2

    mul-double v2, v2, p3

    const-string v4, "height"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 66
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "origin"

    .line 67
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "size"

    .line 68
    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "bounds"

    .line 70
    invoke-interface {v9, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v9
.end method

.method public static valueMirroredHorizontally(DID)D
    .locals 2

    div-double/2addr p0, p3

    int-to-double v0, p2

    sub-double/2addr v0, p0

    mul-double v0, v0, p3

    return-wide v0
.end method
