.class public Lorg/reactnative/facedetector/RNFaceDetector;
.super Ljava/lang/Object;
.source "RNFaceDetector.java"


# static fields
.field public static ACCURATE_MODE:I = 0x1

.field public static ALL_CLASSIFICATIONS:I = 0x1

.field public static ALL_LANDMARKS:I = 0x1

.field public static FAST_MODE:I

.field public static NO_CLASSIFICATIONS:I

.field public static NO_LANDMARKS:I


# instance fields
.field private mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

.field private mClassificationType:I

.field private mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

.field private mLandmarkType:I

.field private mMinFaceSize:F

.field private mMode:I

.field private mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    .line 21
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 23
    sget v0, Lorg/reactnative/facedetector/RNFaceDetector;->NO_CLASSIFICATIONS:I

    iput v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    .line 24
    sget v0, Lorg/reactnative/facedetector/RNFaceDetector;->NO_LANDMARKS:I

    iput v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    const v0, 0x3e19999a    # 0.15f

    .line 25
    iput v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMinFaceSize:F

    .line 26
    sget v0, Lorg/reactnative/facedetector/RNFaceDetector;->FAST_MODE:I

    iput v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    .line 29
    new-instance v0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 30
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMinFaceSize:F

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMinFaceSize(F)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 31
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 32
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 33
    iget-object p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    return-void
.end method

.method private createFaceDetector()V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    return-void
.end method

.method private releaseFaceDetector()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    :cond_0
    return-void
.end method


# virtual methods
.method public detect(Lorg/reactnative/frame/RNFrame;)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactnative/frame/RNFrame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/face/Face;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v0, v1}, Lorg/reactnative/camera/utils/ImageDimensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->releaseFaceDetector()V

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    if-nez v0, :cond_1

    .line 55
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->createFaceDetector()V

    .line 56
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->createFaceDetector()V

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mFaceDetector:Lcom/google/android/gms/vision/face/FaceDetector;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->releaseFaceDetector()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-void
.end method

.method public setClassificationType(I)V
    .locals 1

    .line 68
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    if-eq p1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 70
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 71
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mClassificationType:I

    :cond_0
    return-void
.end method

.method public setLandmarkType(I)V
    .locals 1

    .line 76
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    if-eq p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 78
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 79
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mLandmarkType:I

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 84
    iget v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    if-eq p1, v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 86
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    .line 87
    iput p1, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mMode:I

    :cond_0
    return-void
.end method

.method public setTracking(Z)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/reactnative/facedetector/RNFaceDetector;->release()V

    .line 64
    iget-object v0, p0, Lorg/reactnative/facedetector/RNFaceDetector;->mBuilder:Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    return-void
.end method
