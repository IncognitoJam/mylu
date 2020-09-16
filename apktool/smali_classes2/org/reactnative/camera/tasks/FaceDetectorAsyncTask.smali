.class public Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;
.super Landroid/os/AsyncTask;
.source "FaceDetectorAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/SparseArray<",
        "Lcom/google/android/gms/vision/face/Face;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

.field private mFaceDetector:Lorg/reactnative/facedetector/RNFaceDetector;

.field private mHeight:I

.field private mImageData:[B

.field private mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private mRotation:I

.field private mScaleX:D

.field private mScaleY:D

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;Lorg/reactnative/facedetector/RNFaceDetector;[BIIIFIIIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p3, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageData:[B

    .line 45
    iput p4, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mWidth:I

    .line 46
    iput p5, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mHeight:I

    .line 47
    iput p6, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mRotation:I

    .line 48
    iput-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    .line 49
    iput-object p2, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mFaceDetector:Lorg/reactnative/facedetector/RNFaceDetector;

    .line 50
    new-instance p1, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-direct {p1, p4, p5, p6, p8}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(IIII)V

    iput-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    int-to-double p1, p9

    .line 51
    iget-object p3, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mScaleX:D

    int-to-double p1, p10

    .line 52
    iget-object p3, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mScaleY:D

    .line 53
    iput p11, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mPaddingLeft:I

    .line 54
    iput p12, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mPaddingTop:I

    return-void
.end method

.method private serializeEventData(Landroid/util/SparseArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/face/Face;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/vision/face/Face;

    .line 86
    iget-wide v4, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mScaleX:D

    iget-wide v6, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mScaleY:D

    iget v8, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mWidth:I

    iget v9, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mHeight:I

    iget v10, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mPaddingLeft:I

    iget v11, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mPaddingTop:I

    invoke-static/range {v3 .. v11}, Lorg/reactnative/facedetector/FaceDetectorUtils;->serializeFace(Lcom/google/android/gms/vision/face/Face;DDIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v3}, Lorg/reactnative/camera/utils/ImageDimensions;->getFacing()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    iget-object v3, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v3}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result v3

    iget-wide v4, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mScaleX:D

    invoke-static {v2, v3, v4, v5}, Lorg/reactnative/facedetector/FaceDetectorUtils;->rotateFaceX(Lcom/facebook/react/bridge/WritableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {v2}, Lorg/reactnative/facedetector/FaceDetectorUtils;->changeAnglesDirection(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 92
    :goto_1
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/face/Face;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mFaceDetector:Lorg/reactnative/facedetector/RNFaceDetector;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/reactnative/facedetector/RNFaceDetector;->isOperational()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mImageData:[B

    iget v0, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mWidth:I

    iget v1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mHeight:I

    iget v2, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mRotation:I

    invoke-static {p1, v0, v1, v2}, Lorg/reactnative/frame/RNFrameFactory;->buildFrame([BIII)Lorg/reactnative/frame/RNFrame;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mFaceDetector:Lorg/reactnative/facedetector/RNFaceDetector;

    invoke-virtual {v0, p1}, Lorg/reactnative/facedetector/RNFaceDetector;->detect(Lorg/reactnative/frame/RNFrame;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/face/Face;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    iget-object v0, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mFaceDetector:Lorg/reactnative/facedetector/RNFaceDetector;

    invoke-interface {p1, v0}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;->onFaceDetectionError(Lorg/reactnative/facedetector/RNFaceDetector;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    invoke-direct {p0, p1}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->serializeEventData(Landroid/util/SparseArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;->onFacesDetected(Lcom/facebook/react/bridge/WritableArray;)V

    .line 77
    :cond_1
    iget-object p1, p0, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    invoke-interface {p1}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;->onFaceDetectingTaskCompleted()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method
