.class public Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;
.super Landroid/os/AsyncTask;
.source "BarCodeScannerAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mCameraViewHeight:I

.field private mCameraViewWidth:I

.field private mDelegate:Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

.field private mHeight:I

.field private mImageData:[B

.field private mLimitScanArea:Z

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private mRatio:F

.field private mScanAreaHeight:F

.field private mScanAreaWidth:F

.field private mScanAreaX:F

.field private mScanAreaY:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;Lcom/google/zxing/MultiFormatReader;[BIIZFFFFIIF)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p3, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mImageData:[B

    .line 42
    iput p4, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    .line 43
    iput p5, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    .line 44
    iput-object p1, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    .line 45
    iput-object p2, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 46
    iput-boolean p6, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mLimitScanArea:Z

    .line 47
    iput p7, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaX:F

    .line 48
    iput p8, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaY:F

    .line 49
    iput p9, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaWidth:F

    .line 50
    iput p10, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaHeight:F

    .line 51
    iput p11, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mCameraViewWidth:I

    .line 52
    iput p12, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mCameraViewHeight:I

    .line 53
    iput p13, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mRatio:F

    return-void
.end method

.method private generateBitmapFromImageData([BIIZIIII)Lcom/google/zxing/BinaryBitmap;
    .locals 20

    move-object/from16 v0, p0

    .line 158
    iget-boolean v1, v0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mLimitScanArea:Z

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v10, 0x0

    move-object v2, v1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v11, v1

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v17, p2

    move/from16 v18, p3

    invoke-direct/range {v11 .. v19}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    :goto_0
    if-eqz p4, :cond_1

    .line 182
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {v1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v2

    .line 184
    :cond_1
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v2
.end method

.method private rotateImage([BII)[B
    .locals 6

    .line 139
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v3, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, p2

    add-int/2addr v5, v3

    .line 142
    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/zxing/Result;
    .locals 15

    move-object v10, p0

    .line 58
    invoke-virtual {p0}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->isCancelled()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    iget-object v0, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 68
    :cond_0
    iget v0, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mCameraViewHeight:I

    int-to-float v0, v0

    iget v1, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 69
    iget v1, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mCameraViewWidth:I

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaY:F

    int-to-float v4, v1

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 71
    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaX:F

    iget v4, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    float-to-int v12, v3

    .line 72
    iget v5, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    int-to-float v3, v5

    mul-float v2, v2, v3

    float-to-int v13, v2

    .line 73
    iget v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaWidth:F

    int-to-float v3, v4

    mul-float v2, v2, v3

    float-to-int v14, v2

    .line 74
    iget v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mScanAreaHeight:F

    int-to-float v1, v1

    mul-float v2, v2, v1

    div-float/2addr v2, v0

    int-to-float v0, v5

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 77
    :try_start_0
    iget-object v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mImageData:[B

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->generateBitmapFromImageData([BIIZIIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    .line 87
    iget-object v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v11
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 89
    :catch_1
    iget-object v1, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mImageData:[B

    iget v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    .line 90
    invoke-direct {p0, v1, v2, v3}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->rotateImage([BII)[B

    move-result-object v2

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    iget v4, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    const/4 v5, 0x0

    sub-int v1, v3, v0

    sub-int v6, v1, v13

    move-object v1, p0

    move v7, v12

    move v8, v0

    move v9, v14

    .line 89
    invoke-direct/range {v1 .. v9}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->generateBitmapFromImageData([BIIZIIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    .line 100
    :try_start_1
    iget-object v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 102
    :catch_2
    iget-object v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mImageData:[B

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    iget v4, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    const/4 v5, 0x1

    sub-int v1, v3, v14

    sub-int v6, v1, v12

    sub-int v1, v4, v0

    sub-int v7, v1, v13

    move-object v1, p0

    move v8, v14

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->generateBitmapFromImageData([BIIZIIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    .line 113
    :try_start_2
    iget-object v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 115
    :catch_3
    iget-object v1, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mImageData:[B

    iget v2, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    .line 116
    invoke-direct {p0, v1, v2, v3}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->rotateImage([BII)[B

    move-result-object v2

    iget v3, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    iget v4, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    const/4 v5, 0x1

    sub-int v1, v4, v14

    sub-int v7, v1, v12

    move-object v1, p0

    move v6, v13

    move v8, v0

    move v9, v14

    .line 115
    invoke-direct/range {v1 .. v9}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->generateBitmapFromImageData([BIIZIIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v0

    .line 126
    :try_start_3
    iget-object v1, v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_4
    :cond_1
    :goto_1
    return-object v11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/zxing/Result;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    iget v1, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mWidth:I

    iget v2, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mHeight:I

    invoke-interface {v0, p1, v1, v2}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;->onBarCodeRead(Lcom/google/zxing/Result;II)V

    .line 153
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->mDelegate:Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    invoke-interface {p1}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;->onBarCodeScanningTaskCompleted()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->onPostExecute(Lcom/google/zxing/Result;)V

    return-void
.end method
