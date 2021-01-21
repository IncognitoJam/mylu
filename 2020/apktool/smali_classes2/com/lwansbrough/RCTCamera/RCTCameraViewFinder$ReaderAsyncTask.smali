.class Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "RCTCameraViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private imageData:[B

.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;Landroid/hardware/Camera;[B)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->camera:Landroid/hardware/Camera;

    .line 338
    iput-object p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->imageData:[B

    return-void
.end method

.method private getBarcode(IIZ)Lcom/google/zxing/Result;
    .locals 10

    .line 343
    :try_start_0
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->imageData:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    if-eqz p3, :cond_0

    .line 346
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance p2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    goto :goto_0

    .line 348
    :cond_0
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance p2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p2, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 350
    :goto_0
    iget-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-static {p2}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-static {p2}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-static {p2}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 355
    throw p1

    .line 354
    :catch_0
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarcodeAnyOrientation()Lcom/google/zxing/Result;
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 362
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 363
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    .line 364
    invoke-direct {p0, v1, v2, v3}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->getBarcode(IIZ)Lcom/google/zxing/Result;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    const/4 v4, 0x1

    .line 369
    invoke-direct {p0, v1, v2, v4}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->getBarcode(IIZ)Lcom/google/zxing/Result;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    .line 374
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->rotateImage(II)V

    .line 375
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 376
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 377
    invoke-direct {p0, v1, v0, v3}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->getBarcode(IIZ)Lcom/google/zxing/Result;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 381
    :cond_2
    invoke-direct {p0, v1, v0, v4}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->getBarcode(IIZ)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method private rotateImage(II)V
    .locals 8

    .line 386
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->imageData:[B

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    mul-int v4, v2, p2

    add-int/2addr v4, v3

    mul-int v5, v3, p1

    add-int/2addr v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ltz v4, :cond_0

    .line 391
    iget-object v6, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->imageData:[B

    array-length v7, v6

    if-ge v4, v7, :cond_0

    if-ltz v5, :cond_0

    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 392
    aget-byte v4, v6, v4

    aput-byte v4, v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_2
    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->imageData:[B

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    .line 401
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->getBarcodeAnyOrientation()Lcom/google/zxing/Result;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 412
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->getReactContextSingleton()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    .line 413
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 414
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 415
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 418
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 419
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    const-string v10, "x"

    .line 420
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "y"

    .line 421
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "bounds"

    .line 426
    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v4, "data"

    .line 427
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    .line 428
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "CameraBarCodeReadAndroid"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :catch_0
    :catchall_0
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-static {v1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 435
    sput-boolean p1, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->barcodeScannerTaskLock:Z

    return-object v0

    .line 409
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
