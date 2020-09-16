.class Lcom/google/android/cameraview/Camera1;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera1.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final DELAY_MILLIS_BEFORE_RESETTING_FOCUS:I = 0xbb8

.field private static final FLASH_MODES:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOCUS_AREA_SIZE_DEFAULT:I = 0x12c

.field private static final FOCUS_METERING_AREA_WEIGHT_DEFAULT:I = 0x3e8

.field private static final INVALID_CAMERA_ID:I = -0x1

.field private static final WB_MODES:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _mCameraId:Ljava/lang/String;

.field private final isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mDeviceOrientation:I

.field private mDisplayOrientation:I

.field private mExposure:F

.field private mFacing:I

.field private mFlash:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPreviewActive:Z

.field private final mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsScanning:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientation:I

.field private mPictureSize:Lcom/google/android/cameraview/Size;

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPlaySoundOnCapture:Ljava/lang/Boolean;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mShowingPreview:Z

.field private mVideoPath:Ljava/lang/String;

.field private mWhiteBalance:I

.field private mZoom:F

.field private mustUpdateSurface:Z

.field sound:Landroid/media/MediaActionSound;

.field private surfaceWasDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    .line 55
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const/4 v2, 0x1

    const-string v3, "on"

    invoke-virtual {v0, v2, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const/4 v3, 0x2

    const-string/jumbo v4, "torch"

    invoke-virtual {v0, v3, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const-string v4, "auto"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    const/4 v6, 0x4

    const-string v7, "red-eye"

    invoke-virtual {v0, v6, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 62
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    .line 65
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    const-string v1, "cloudy-daylight"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    const-string v1, "daylight"

    invoke-virtual {v0, v3, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    const-string/jumbo v1, "shade"

    invoke-virtual {v0, v5, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    const-string v1, "fluorescent"

    invoke-virtual {v0, v6, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x5

    const-string v2, "incandescent"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->sound:Landroid/media/MediaActionSound;

    .line 91
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 101
    iput-boolean p3, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 104
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 122
    iput p3, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    .line 130
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    .line 140
    new-instance p1, Lcom/google/android/cameraview/Camera1$1;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera1$1;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p2, p1}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->updateSurface()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/cameraview/Camera1;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/cameraview/Camera1;FF)Landroid/graphics/Rect;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/Camera1;->calculateFocusArea(FF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/cameraview/Camera1;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/cameraview/Camera1;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/cameraview/Camera1;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/cameraview/Camera1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/cameraview/Camera1;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    return p1
.end method

.method private calcCameraRotation(I)I
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 1324
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1325
    :goto_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private calcDisplayOrientation(I)I
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private calculateFocusArea(FF)Landroid/graphics/Rect;
    .locals 4

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/lit16 v0, p1, -0x96

    add-int/lit16 v1, p2, -0x96

    add-int/lit16 p1, p1, 0x96

    add-int/lit16 p2, p2, 0x96

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v3, 0x7d0

    if-le p1, v3, :cond_1

    const/16 p1, 0x7d0

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-le p2, v3, :cond_3

    const/16 p2, 0x7d0

    .line 1286
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit16 v0, v0, -0x3e8

    add-int/lit16 v1, v1, -0x3e8

    add-int/lit16 p1, p1, -0x3e8

    add-int/lit16 p2, p2, -0x3e8

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 3

    .line 1038
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 1040
    sget-object v2, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method private chooseCamera()V
    .locals 7

    const-string v0, "CAMERA_1::"

    .line 946
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 949
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-nez v1, :cond_0

    .line 952
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    const-string v1, "getNumberOfCameras returned 0. No camera available."

    .line 953
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 958
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 959
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v6, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v5, v6, :cond_1

    .line 960
    iput v4, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 965
    :cond_2
    iput v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    .line 966
    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "chooseCamera failed."

    .line 972
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    goto :goto_1

    .line 978
    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    .line 979
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 982
    :catch_1
    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    :goto_1
    return-void
.end method

.method private chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;)",
            "Lcom/google/android/cameraview/Size;"
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/cameraview/Size;

    return-object p1

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v1

    .line 1100
    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v2}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_1
    const/4 v2, 0x0

    .line 1108
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/Size;

    .line 1109
    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_2

    :cond_3
    return-object v2
.end method

.method private isLandscape(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private openCamera()Z
    .locals 6

    .line 988
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 995
    :cond_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 1000
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 1001
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1004
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 1005
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1006
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v4, Lcom/google/android/cameraview/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_0

    .line 1010
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 1011
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1012
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v4, Lcom/google/android/cameraview/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_1

    .line 1017
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 1018
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1019
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v1}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_2

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-nez v0, :cond_6

    .line 1025
    sget-object v0, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1027
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    .line 1028
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1029
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraOpened()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v2
.end method

.method private releaseCamera()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 1121
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 1122
    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 1123
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraClosed()V

    .line 1126
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1127
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private resetFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .line 1236
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1237
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/cameraview/Camera1$10;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera1$10;-><init>(Lcom/google/android/cameraview/Camera1;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAutoFocusInternal(Z)Z
    .locals 3

    .line 1343
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1345
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "continuous-picture"

    .line 1346
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "fixed"

    .line 1348
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "infinity"

    .line 1350
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_2
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V
    .locals 3

    .line 1573
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1574
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1575
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1576
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1577
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p2, :cond_0

    .line 1579
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1580
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1581
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1582
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method private setExposureInternal(F)Z
    .locals 4

    .line 1389
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    .line 1390
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1391
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result p1

    .line 1392
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 1396
    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    sub-int/2addr v1, p1

    int-to-float v0, v1

    mul-float v2, v2, v0

    float-to-int v0, v2

    add-int/2addr v0, p1

    .line 1400
    :cond_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private setFlashInternal(I)Z
    .locals 5

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1366
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 1367
    sget-object v2, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 1371
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1373
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v4

    .line 1376
    :cond_1
    sget-object p1, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroidx/collection/SparseArrayCompat;

    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-virtual {p1, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1377
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1378
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return v4

    :cond_2
    return v1

    .line 1383
    :cond_3
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v1
.end method

.method private setPlaySoundInternal(Z)V
    .locals 3

    .line 1459
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    .line 1460
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1464
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1471
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "CAMERA_1::"

    const-string/jumbo v2, "setPlaySoundInternal failed"

    .line 1475
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void
.end method

.method private setScanningInternal(Z)V
    .locals 1

    .line 1448
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    .line 1449
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1450
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-eqz p1, :cond_0

    .line 1451
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1453
    :cond_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V
    .locals 3

    .line 1502
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1503
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1505
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1507
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    if-eqz p4, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1513
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    .line 1516
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget v0, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1517
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    iget v0, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_0

    .line 1519
    :cond_1
    iget p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 1521
    :goto_0
    iget p5, p5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p5, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1522
    invoke-direct {p0, p1, p4}, Lcom/google/android/cameraview/Camera1;->setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V

    .line 1524
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz p4, :cond_2

    invoke-virtual {p0, p4}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result p4

    goto :goto_1

    :cond_2
    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    :goto_1
    invoke-direct {p0, p4}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    .line 1527
    iget-object p4, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_3
    if-eq p3, p1, :cond_4

    .line 1530
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1533
    :cond_4
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1534
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    return-void
.end method

.method private setWhiteBalanceInternal(I)Z
    .locals 4

    .line 1428
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 1431
    sget-object v2, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1432
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return v2

    .line 1436
    :cond_0
    sget-object p1, Lcom/google/android/cameraview/Camera1;->WB_MODES:Landroidx/collection/SparseArrayCompat;

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    invoke-virtual {p1, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1437
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1438
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method private setZoomInternal(F)Z
    .locals 2

    .line 1412
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1415
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1416
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    const/4 p1, 0x1

    return p1

    .line 1419
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    const/4 p1, 0x0

    return p1
.end method

.method private startCameraPreview()V
    .locals 3

    .line 334
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 336
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 337
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 338
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 343
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const-string v1, "CAMERA_1::"

    const-string/jumbo v2, "startCameraPreview failed"

    .line 344
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private stopMediaRecorder()V
    .locals 5

    .line 1540
    monitor-enter p0

    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1543
    :try_start_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string/jumbo v3, "stopMediaRecorder stop failed"

    .line 1545
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1549
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1550
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "CAMERA_1::"

    const-string/jumbo v3, "stopMediaRecorder reset failed"

    .line 1552
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    :goto_1
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 1560
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    .line 1562
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 1567
    :cond_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1568
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    .line 1569
    monitor-exit p0

    return-void

    .line 1563
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    invoke-interface {v2, v1, v3, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1564
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1569
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private updateSurface()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$2;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$2;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method adjustCameraParameters()V
    .locals 5

    .line 1048
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    const-string v1, "CAMERA_1::"

    if-nez v0, :cond_0

    const-string v0, "adjustCameraParameters received an unsupported aspect ratio value and will be ignored."

    .line 1050
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 1052
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1054
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;

    move-result-object v0

    .line 1057
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/Size;

    iput-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 1058
    iget-boolean v2, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v2, :cond_1

    .line 1060
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v3, 0x0

    .line 1061
    iput-boolean v3, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 1063
    :cond_1
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1064
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v3}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1065
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v0, :cond_2

    .line 1066
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-direct {p0, v3}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1071
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    .line 1072
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    .line 1073
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setExposureInternal(F)Z

    .line 1074
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z

    .line 1075
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setZoomInternal(F)Z

    .line 1076
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setWhiteBalanceInternal(I)Z

    .line 1077
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setScanningInternal(Z)V

    .line 1078
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/cameraview/Camera1;->setPlaySoundInternal(Z)V

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setParameters failed"

    .line 1084
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v2, :cond_3

    .line 1087
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    :cond_3
    return-void
.end method

.method displayOrientationToOrientationEnum(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    return v0
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    return v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "continuous"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getAvailablePictureSizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/cameraview/AspectRatio;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method getCameraId()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getCameraIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 451
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 452
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 453
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 454
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getCameraOrientation()I
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method getExposureCompensation()F
    .locals 1

    .line 585
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    return v0
.end method

.method getFacing()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .line 580
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v0
.end method

.method getFocusDepth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPictureSize()Lcom/google/android/cameraview/Size;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method public getPlaySoundOnCapture()Z
    .locals 1

    .line 1491
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/cameraview/Size;
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 939
    new-instance v1, Lcom/google/android/cameraview/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/cameraview/Size;-><init>(II)V

    return-object v1
.end method

.method getScanning()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 436
    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/AspectRatio;

    .line 437
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v2}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_0

    .line 438
    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .line 659
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    return v0
.end method

.method getZoom()F
    .locals 1

    .line 636
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    return v0
.end method

.method isCameraOpened()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->stopRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->stopRecording()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 1496
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 1497
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onFramePreview([BIII)V

    return-void
.end method

.method orientationEnumToRotation(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x5a

    return p1

    :cond_1
    const/16 p1, 0x10e

    return p1

    :cond_2
    const/16 p1, 0xb4

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public pausePreview()V
    .locals 1

    .line 364
    monitor-enter p0

    const/4 v0, 0x0

    .line 365
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 366
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 368
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 371
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method record(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;I)Z
    .locals 4

    const-string v0, "CAMERA_1::"

    .line 807
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p6, :cond_0

    .line 809
    iput p6, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    .line 812
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/cameraview/Camera1;->setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V

    .line 813
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 814
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    :try_start_1
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object p3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "Record setParameters failed"

    .line 825
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    :goto_0
    iget p2, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, p2}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result p2

    .line 829
    iget-object p3, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    goto :goto_1

    :cond_1
    move p4, p2

    :goto_1
    invoke-interface {p3, p1, p4, p2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingStart(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    :catch_1
    move-exception p1

    .line 834
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "Record start failed"

    .line 835
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public resumePreview()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$3;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$3;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "CAMERA_1::"

    const-string v0, "setAspectRatio received an unsupported value and will be ignored."

    .line 509
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 512
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$6;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$6;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 503
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return v1
.end method

.method setAutoFocus(Z)V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 538
    :cond_0
    monitor-enter p0

    .line 539
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 541
    :try_start_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 542
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 546
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    .line 412
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->_mCameraId:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$5;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$5;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setDeviceOrientation(I)V
    .locals 2

    .line 889
    monitor-enter p0

    .line 890
    :try_start_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    if-ne v0, p1, :cond_0

    .line 891
    monitor-exit p0

    return-void

    .line 893
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    .line 894
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :try_start_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 900
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setDisplayOrientation(I)V
    .locals 3

    .line 862
    monitor-enter p0

    .line 863
    :try_start_0
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    if-ne v0, p1, :cond_0

    .line 864
    monitor-exit p0

    return-void

    .line 866
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    .line 867
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 868
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 870
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 871
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "CAMERA_1::"

    const-string v2, "setDisplayOrientation failed"

    .line 878
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v0, :cond_3

    .line 881
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    .line 884
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setExposureCompensation(F)V
    .locals 2

    .line 591
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mExposure:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setExposureInternal(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 596
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 597
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 601
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setFacing(I)V
    .locals 1

    .line 381
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v0, p1, :cond_0

    return-void

    .line 384
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    .line 386
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/cameraview/Camera1$4;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$4;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setFlash(I)V
    .locals 2

    .line 563
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    if-ne p1, v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 568
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 569
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 573
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setFocusArea(FF)V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/cameraview/Camera1$9;-><init>(Lcom/google/android/cameraview/Camera1;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFocusDepth(F)V
    .locals 0

    return-void
.end method

.method setPictureSize(Lcom/google/android/cameraview/Size;)V
    .locals 2

    if-nez p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-nez p1, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 473
    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/cameraview/Size;

    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    goto :goto_0

    .line 478
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 480
    :cond_2
    :goto_0
    monitor-enter p0

    .line 481
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 482
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :try_start_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 487
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setPlaySoundOnCapture(Z)V
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1486
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setPlaySoundInternal(Z)V

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/cameraview/Camera1$8;-><init>(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setScanning(Z)V
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsScanning:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setScanningInternal(Z)V

    return-void
.end method

.method setUpPreview()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 308
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->surfaceWasDestroyed:Z

    .line 310
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/SurfaceHolder;

    if-ne v1, v2, :cond_3

    .line 314
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 316
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 317
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    if-eqz v1, :cond_4

    .line 321
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CAMERA_1::"

    const-string/jumbo v2, "setUpPreview failed"

    .line 328
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 2

    .line 642
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mWhiteBalance:I

    if-ne p1, v0, :cond_0

    return-void

    .line 645
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setWhiteBalanceInternal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 647
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 648
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 652
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method setZoom(F)V
    .locals 2

    .line 619
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mZoom:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setZoomInternal(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 625
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CAMERA_1::"

    const-string/jumbo v1, "setParameters failed"

    .line 629
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method start()Z
    .locals 2

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseCamera()V

    .line 235
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->openCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    .line 238
    monitor-exit p0

    return v1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->setUpPreview()V

    .line 247
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->startCameraPreview()V

    .line 251
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 5

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string v3, "mMediaRecorder.stop() failed"

    .line 268
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 273
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "CAMERA_1::"

    const-string v3, "mMediaRecorder.release() failed"

    .line 276
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :goto_1
    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 281
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 284
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mDeviceOrientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    .line 285
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mVideoPath:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    goto :goto_2

    :cond_0
    move v4, v0

    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    :try_start_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 293
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "CAMERA_1::"

    const-string/jumbo v2, "stop preview cleanup failed"

    .line 296
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method stopRecording()V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->stopMediaRecorder()V

    .line 846
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 849
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mustUpdateSurface:Z

    if-eqz v0, :cond_1

    .line 850
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->updateSurface()V

    :cond_1
    return-void
.end method

.method takePicture(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mIsPreviewActive:Z

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/Camera1;->takePictureInternal(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preview is paused - resume it before taking a picture."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 678
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Camera is not ready. Call start() before takePicture()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method takePictureInternal(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9

    const-string v0, "quality"

    const-string v1, "orientation"

    .line 725
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    :try_start_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "CAMERA_1::"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    .line 730
    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/Camera1;->orientationEnumToRotation(I)I

    move-result v1

    .line 731
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 733
    :try_start_2
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "setParameters rotation failed"

    .line 736
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    double-to-int v0, v5

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 745
    :try_start_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "setParameters quality failed"

    .line 748
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/google/android/cameraview/Camera1$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/cameraview/Camera1$7;-><init>(Lcom/google/android/cameraview/Camera1;Lcom/facebook/react/bridge/ReadableMap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 794
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 795
    throw p1

    .line 799
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Camera capture failed. Camera is already capturing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
