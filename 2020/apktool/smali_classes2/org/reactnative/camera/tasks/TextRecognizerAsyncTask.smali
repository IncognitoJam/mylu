.class public Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextRecognizerAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/SparseArray<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

.field private mHeight:I

.field private mImageData:[B

.field private mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private mRotation:I

.field private mScaleX:D

.field private mScaleY:D

.field private mTextRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

.field private mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;Lcom/facebook/react/uimanager/ThemedReactContext;[BIIIFIIIII)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    .line 53
    iput-object p2, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 54
    iput-object p3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageData:[B

    .line 55
    iput p4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    .line 56
    iput p5, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    .line 57
    iput p6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mRotation:I

    .line 58
    new-instance p1, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-direct {p1, p4, p5, p6, p8}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(IIII)V

    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    int-to-double p1, p9

    .line 59
    iget-object p3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    int-to-double p1, p10

    .line 60
    iget-object p3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p3}, Lorg/reactnative/camera/utils/ImageDimensions;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p7

    float-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    .line 61
    iput p11, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    .line 62
    iput p12, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    return-void
.end method

.method private rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    const-string v0, "bounds"

    .line 150
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "origin"

    .line 152
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 153
    iget-object v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 154
    invoke-virtual {v4}, Lorg/reactnative/camera/utils/ImageDimensions;->getWidth()I

    move-result v4

    iget-wide v5, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    .line 153
    invoke-static {v3, v4, v5, v6}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionMirroredHorizontally(Lcom/facebook/react/bridge/ReadableMap;ID)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "size"

    .line 156
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    neg-double v4, v4

    .line 157
    invoke-static {v3, v4, v5}, Lorg/reactnative/facedetector/FaceDetectorUtils;->positionTranslatedHorizontally(Lcom/facebook/react/bridge/ReadableMap;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 159
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 160
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 161
    invoke-interface {v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 163
    invoke-interface {p1, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "components"

    .line 165
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 167
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 168
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 169
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 170
    invoke-direct {p0, v4}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    .line 171
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p1
.end method

.method private serializeText(Lcom/google/android/gms/vision/text/Text;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 100
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getComponents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/vision/text/Text;

    .line 101
    invoke-direct {p0, v3}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeText(Lcom/google/android/gms/vision/text/Text;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    const-string v2, "components"

    .line 103
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 105
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 108
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 110
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    .line 111
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2

    .line 113
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 116
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_3

    .line 117
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_2

    .line 118
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_4

    .line 119
    iget v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mPaddingTop:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 122
    :cond_4
    :goto_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    int-to-double v4, v1

    .line 123
    iget-wide v6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    mul-double v4, v4, v6

    const-string v1, "x"

    invoke-interface {v3, v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v1, v2

    .line 124
    iget-wide v4, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    mul-double v1, v1, v4

    const-string v4, "y"

    invoke-interface {v3, v4, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 126
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 127
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v4, v2

    iget-wide v6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleX:D

    mul-double v4, v4, v6

    const-string v2, "width"

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 128
    invoke-interface {p1}, Lcom/google/android/gms/vision/text/Text;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v4, v2

    iget-wide v6, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mScaleY:D

    mul-double v4, v4, v6

    const-string v2, "height"

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 130
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v4, "origin"

    .line 131
    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v3, "size"

    .line 132
    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "bounds"

    .line 134
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 137
    instance-of v1, p1, Lcom/google/android/gms/vision/text/TextBlock;

    if-eqz v1, :cond_5

    const-string p1, "block"

    goto :goto_3

    .line 139
    :cond_5
    instance-of p1, p1, Lcom/google/android/gms/vision/text/Line;

    if-eqz p1, :cond_6

    const-string p1, "line"

    goto :goto_3

    :cond_6
    const-string p1, "element"

    :goto_3
    const-string v1, "type"

    .line 144
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    if-nez p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p1, v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object p1

    iput-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    .line 71
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageData:[B

    iget v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mWidth:I

    iget v1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mHeight:I

    iget v2, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mRotation:I

    invoke-static {p1, v0, v1, v2}, Lorg/reactnative/frame/RNFrameFactory;->buildFrame([BIII)Lorg/reactnative/frame/RNFrame;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mTextRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->release()V

    :cond_0
    if-eqz p1, :cond_3

    .line 82
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    .line 85
    invoke-direct {p0, v2}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->serializeText(Lcom/google/android/gms/vision/text/Text;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mImageDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v3}, Lorg/reactnative/camera/utils/ImageDimensions;->getFacing()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 87
    invoke-direct {p0, v2}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->rotateTextX(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 89
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    invoke-interface {p1, v0}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;->onTextRecognized(Lcom/facebook/react/bridge/WritableArray;)V

    .line 93
    :cond_3
    iget-object p1, p0, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    invoke-interface {p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;->onTextRecognizerTaskCompleted()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method
