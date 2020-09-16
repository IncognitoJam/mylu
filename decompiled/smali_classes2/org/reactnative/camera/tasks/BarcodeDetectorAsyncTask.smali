.class public Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;
.super Landroid/os/AsyncTask;
.source "BarcodeDetectorAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/SparseArray<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mBarcodeDetector:Lorg/reactnative/barcodedetector/RNBarcodeDetector;

.field private mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

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
.method public constructor <init>(Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;Lorg/reactnative/barcodedetector/RNBarcodeDetector;[BIIIFIIIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mImageData:[B

    .line 46
    iput p4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mWidth:I

    .line 47
    iput p5, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mHeight:I

    .line 48
    iput p6, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mRotation:I

    .line 49
    iput-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    .line 50
    iput-object p2, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mBarcodeDetector:Lorg/reactnative/barcodedetector/RNBarcodeDetector;

    .line 51
    new-instance p1, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-direct {p1, p4, p5, p6, p8}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(IIII)V

    iput-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    int-to-double p1, p9

    .line 52
    iget-object p3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleX:D

    int-to-double p1, p10

    .line 53
    iget-object p3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleY:D

    .line 54
    iput p11, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingLeft:I

    .line 55
    iput p12, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingTop:I

    return-void
.end method

.method private processBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    .line 100
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 101
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 102
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 104
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 105
    iget v3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_0

    .line 106
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 107
    iget v3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 110
    :cond_1
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_2

    .line 111
    iget v3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_1

    .line 112
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_3

    .line 113
    iget v3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    :cond_3
    :goto_1
    int-to-double v3, v1

    .line 116
    iget-wide v5, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleX:D

    mul-double v3, v3, v5

    const-string v1, "x"

    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v1, v2

    .line 117
    iget-wide v3, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleY:D

    mul-double v1, v1, v3

    const-string v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 119
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleX:D

    mul-double v2, v2, v4

    const-string v4, "width"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mScaleY:D

    mul-double v2, v2, v4

    const-string p1, "height"

    invoke-interface {v1, p1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 123
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "origin"

    .line 124
    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "size"

    .line 125
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object p1
.end method

.method private serializeEventData(Landroid/util/SparseArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 89
    iget-object v4, v2, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    const-string v5, "data"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v4, v2, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    const-string v5, "rawData"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v4, v2, Lcom/google/android/gms/vision/barcode/Barcode;->format:I

    invoke-static {v4}, Lorg/reactnative/barcodedetector/BarcodeFormatUtils;->get(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/vision/barcode/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->processBounds(Landroid/graphics/Rect;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v4, "bounds"

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 93
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mBarcodeDetector:Lorg/reactnative/barcodedetector/RNBarcodeDetector;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->isOperational()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mImageData:[B

    iget v0, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mWidth:I

    iget v1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mHeight:I

    iget v2, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mRotation:I

    invoke-static {p1, v0, v1, v2}, Lorg/reactnative/frame/RNFrameFactory;->buildFrame([BIII)Lorg/reactnative/frame/RNFrame;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mBarcodeDetector:Lorg/reactnative/barcodedetector/RNBarcodeDetector;

    invoke-virtual {v0, p1}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->detect(Lorg/reactnative/frame/RNFrame;)Landroid/util/SparseArray;

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

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    iget-object v0, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mBarcodeDetector:Lorg/reactnative/barcodedetector/RNBarcodeDetector;

    invoke-interface {p1, v0}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;->onBarcodeDetectionError(Lorg/reactnative/barcodedetector/RNBarcodeDetector;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    invoke-direct {p0, p1}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->serializeEventData(Landroid/util/SparseArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;->onBarcodesDetected(Lcom/facebook/react/bridge/WritableArray;)V

    .line 78
    :cond_1
    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    invoke-interface {p1}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;->onBarcodeDetectingTaskCompleted()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method
