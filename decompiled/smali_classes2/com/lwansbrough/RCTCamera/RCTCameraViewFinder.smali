.class Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;
.super Landroid/view/TextureView;
.source "RCTCameraViewFinder.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;
    }
.end annotation


# static fields
.field public static volatile barcodeScannerTaskLock:Z = false


# instance fields
.field private _camera:Landroid/hardware/Camera;

.field private _cameraType:I

.field private _captureMode:I

.field private _clearWindowBackground:Z

.field private _isStarting:Z

.field private _isStopping:Z

.field private final _multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private _surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private _surfaceTextureHeight:I

.field private _surfaceTextureWidth:I

.field private mFingerSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_clearWindowBackground:Z

    .line 54
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 58
    invoke-virtual {p0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 59
    iput p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    .line 60
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBarCodeTypes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->initBarcodeReader(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$002(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    return p1
.end method

.method static synthetic access$100(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)Lcom/google/zxing/MultiFormatReader;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 242
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 243
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 245
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFingerSpacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 562
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 563
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 564
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private handleZoom(Landroid/view/MotionEvent;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 471
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 472
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    .line 473
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 474
    iget v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->mFingerSpacing:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 483
    :cond_1
    :goto_0
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->mFingerSpacing:F

    .line 484
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 486
    :try_start_0
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "RCTCameraViewFinder"

    const-string v0, "setParameters failed"

    .line 489
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private initBarcodeReader(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 303
    const-class v1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    invoke-direct {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->parseBarCodeString(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_1
    sget-object p1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method private parseBarCodeString(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 2

    const-string v0, "aztec"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_0
    const-string v0, "ean13"

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_1
    const-string v0, "ean8"

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_2
    const-string v0, "qr"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_3
    const-string v0, "pdf417"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_4
    const-string v0, "upce"

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_5
    const-string v0, "datamatrix"

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_6
    const-string v0, "code39"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_7
    const-string v0, "code93"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 275
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_8
    const-string v0, "interleaved2of5"

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 277
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_9
    const-string v0, "codabar"

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_a
    const-string v0, "code128"

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 281
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_b
    const-string v0, "maxicode"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 283
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_c
    const-string v0, "rss14"

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 285
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_d
    const-string v0, "rssexpanded"

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 287
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_e
    const-string v0, "upca"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 289
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    :cond_f
    const-string v0, "upceanextension"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 291
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    return-object p1

    .line 293
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported code.. ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RCTCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized startCamera()V
    .locals 6

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStarting:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 155
    :try_start_1
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v2

    iget v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v2, v3}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    .line 156
    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 158
    iget v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_captureMode:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 159
    :goto_0
    iget v4, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_captureMode:I

    if-ne v4, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported capture mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_captureMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_4

    const-string v5, "continuous-picture"

    .line 167
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "continuous-picture"

    .line 168
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    const-string v5, "continuous-video"

    .line 169
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "continuous-video"

    .line 170
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v5, "auto"

    .line 171
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "auto"

    .line 172
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 179
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    .line 181
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getSupportedVideoSizes(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    .line 185
    :goto_4
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v0, v4, v4}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 190
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "RCTCameraViewFinder"

    const-string v3, "setParameters failed"

    .line 196
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :goto_5
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 199
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 201
    iget-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_clearWindowBackground:Z

    if-eqz v0, :cond_8

    .line 202
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :goto_6
    :try_start_4
    iput-boolean v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStarting:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 183
    :cond_9
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported capture mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_captureMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 211
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->stopCamera()V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 214
    :goto_7
    :try_start_7
    iput-boolean v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStarting:Z

    .line 215
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 217
    :cond_a
    :goto_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopCamera()V
    .locals 4

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStopping:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 223
    :try_start_1
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 226
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 227
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v1

    iget v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v1, v3}, Lcom/lwansbrough/RCTCamera/RCTCamera;->releaseCameraInstance(I)V

    .line 228
    iput-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_0
    :goto_0
    :try_start_2
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStopping:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 232
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 234
    :goto_1
    :try_start_4
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_isStopping:Z

    .line 235
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCameraType()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    return v0
.end method

.method public getRatio()D
    .locals 3

    .line 95
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getPreviewWidth(I)I

    move-result v0

    .line 96
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v1

    iget v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v1, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getPreviewHeight(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public handleFocus(Landroid/view/MotionEvent;Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 502
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "auto"

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 516
    :try_start_0
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureWidth:I

    iget v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureHeight:I

    invoke-static {p1, v0, v2}, Lcom/lwansbrough/RCTCamera/RCTCameraUtils;->computeFocusAreaFromMotionEvent(Landroid/view/MotionEvent;II)Landroid/hardware/Camera$Area;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 523
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 531
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_1

    .line 532
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 537
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RCTCameraViewFinder"

    const-string v0, "setParameters failed"

    .line 540
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    new-instance p2, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$2;

    invoke-direct {p2, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$2;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 555
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 518
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .line 326
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCamera;->isBarcodeScannerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->barcodeScannerTaskLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 327
    sput-boolean v0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->barcodeScannerTaskLock:Z

    .line 328
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;Landroid/hardware/Camera;[B)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$ReaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 66
    iput p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureWidth:I

    .line 67
    iput p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureHeight:I

    .line 68
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->startCamera()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureWidth:I

    .line 81
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureHeight:I

    .line 82
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->stopCamera()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 73
    iput p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureWidth:I

    .line 74
    iput p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTextureHeight:I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 449
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 456
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->mFingerSpacing:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 457
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 459
    invoke-direct {p0, p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->handleZoom(Landroid/view/MotionEvent;Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->handleFocus(Landroid/view/MotionEvent;Landroid/hardware/Camera$Parameters;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public setCameraType(I)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;

    invoke-direct {v1, p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setCaptureMode(I)V
    .locals 2

    .line 115
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setCaptureMode(II)V

    .line 116
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_captureMode:I

    return-void
.end method

.method public setCaptureQuality(Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setCaptureQuality(ILjava/lang/String;)V

    return-void
.end method

.method public setClearWindowBackground(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_clearWindowBackground:Z

    return-void
.end method

.method public setFlashMode(I)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setFlashMode(II)V

    return-void
.end method

.method public setTorchMode(I)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setTorchMode(II)V

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_cameraType:I

    invoke-virtual {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setZoom(II)V

    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->startCamera()V

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->_camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->stopCamera()V

    :cond_0
    return-void
.end method
