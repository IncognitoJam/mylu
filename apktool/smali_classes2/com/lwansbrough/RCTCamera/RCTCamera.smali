.class public Lcom/lwansbrough/RCTCamera/RCTCamera;
.super Ljava/lang/Object;
.source "RCTCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;,
        Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;
    }
.end annotation


# static fields
.field private static final RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

.field private static final RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

.field private static final RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

.field private static ourInstance:Lcom/lwansbrough/RCTCamera/RCTCamera;


# instance fields
.field private _actualDeviceOrientation:I

.field private _adjustedDeviceOrientation:I

.field private _barCodeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _barcodeScannerEnabled:Z

.field private final _cameraInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final _cameraTypeToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _cameras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Number;",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private _orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    const/16 v1, 0x355

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;-><init>(II)V

    sput-object v0, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    .line 23
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;-><init>(II)V

    sput-object v0, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    .line 24
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;-><init>(II)V

    sput-object v0, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barcodeScannerEnabled:Z

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barCodeTypes:Ljava/util/List;

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_orientation:I

    .line 28
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    .line 29
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_adjustedDeviceOrientation:I

    .line 490
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    .line 492
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    .line 494
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    .line 497
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 498
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 499
    invoke-static {v0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 500
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    invoke-direct {v4, p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;-><init>(Lcom/lwansbrough/RCTCamera/RCTCamera;Landroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    .line 504
    invoke-virtual {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->releaseCameraInstance(I)V

    goto :goto_1

    .line 505
    :cond_0
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    invoke-direct {v4, p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;-><init>(Lcom/lwansbrough/RCTCamera/RCTCamera;Landroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    .line 509
    invoke-virtual {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->releaseCameraInstance(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createInstance(I)V
    .locals 1

    .line 35
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCamera;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCamera;-><init>(I)V

    sput-object v0, Lcom/lwansbrough/RCTCamera/RCTCamera;->ourInstance:Lcom/lwansbrough/RCTCamera/RCTCamera;

    return-void
.end method

.method private getClosestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 143
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v2, p2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, p3

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 144
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v6, p2

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, p3

    int-to-double v8, v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;
    .locals 1

    .line 32
    sget-object v0, Lcom/lwansbrough/RCTCamera/RCTCamera;->ourInstance:Lcom/lwansbrough/RCTCamera/RCTCamera;

    return-object v0
.end method

.method private getSmallestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 124
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    .line 125
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v4

    if-ge v3, v2, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquireCameraInstance(I)Landroid/hardware/Camera;
    .locals 3

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "RCTCamera"

    const-string v2, "acquireCameraInstance failed"

    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public adjustCameraRotationToDeviceOrientation(II)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    .line 414
    iget-object v1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 415
    iget-object v2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    mul-int/lit8 p2, p2, 0x5a

    add-int/2addr v1, p2

    .line 416
    rem-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x5a

    sub-int/2addr v1, p2

    add-int/lit16 v1, v1, 0x168

    .line 418
    rem-int/lit16 v1, v1, 0x168

    .line 420
    :goto_0
    iput v1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    .line 421
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 422
    iget p1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 425
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public adjustPreviewLayout(I)V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    .line 440
    iget-object v1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 441
    iget-object v2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 442
    iget v2, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    mul-int/lit8 v3, v2, 0x5a

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    rsub-int v1, v1, 0x2d0

    mul-int/lit8 v2, v2, 0x5a

    sub-int/2addr v1, v2

    .line 443
    rem-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 445
    :cond_1
    iget v2, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    mul-int/lit8 v2, v2, 0x5a

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v3, v1, 0x168

    move v1, v3

    .line 448
    :goto_0
    iput v3, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    .line 451
    invoke-virtual {p0, v3}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setAdjustedDeviceOrientation(I)V

    .line 452
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 454
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 455
    iget v2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 459
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {p0, v2, v3, v3}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 460
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    .line 461
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 463
    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 465
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    :goto_1
    iget v0, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 474
    :cond_2
    iput v2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewWidth:I

    .line 475
    iput v3, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewHeight:I

    goto :goto_3

    .line 471
    :cond_3
    :goto_2
    iput v3, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewWidth:I

    .line 472
    iput v2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewHeight:I

    :goto_3
    return-void
.end method

.method public getActualDeviceOrientation()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    return v0
.end method

.method public getAdjustedDeviceOrientation()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_adjustedDeviceOrientation:I

    return v0
.end method

.method public getBarCodeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barCodeTypes:Ljava/util/List;

    return-object v0
.end method

.method public getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 96
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, p2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_2
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    .line 106
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v4

    if-le v3, v2, :cond_0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_orientation:I

    return v0
.end method

.method public getPreviewHeight(I)I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget p1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewHeight:I

    return p1
.end method

.method public getPreviewVisibleHeight(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    iget p1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleHeight:I

    return p1
.end method

.method public getPreviewVisibleWidth(I)I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    iget p1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleWidth:I

    return p1
.end method

.method public getPreviewWidth(I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    iget p1, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewWidth:I

    return p1
.end method

.method protected getSupportedVideoSizes(Landroid/hardware/Camera;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isBarcodeScannerEnabled()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barcodeScannerEnabled:Z

    return v0
.end method

.method public releaseCameraInstance(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_0
    return-void
.end method

.method public setActualDeviceOrientation(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_actualDeviceOrientation:I

    const/4 p1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V

    const/4 p1, 0x2

    .line 211
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V

    return-void
.end method

.method public setAdjustedDeviceOrientation(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_adjustedDeviceOrientation:I

    return-void
.end method

.method public setBarCodeTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barCodeTypes:Ljava/util/List;

    return-void
.end method

.method public setBarcodeScannerEnabled(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_barcodeScannerEnabled:Z

    return-void
.end method

.method public setCaptureMode(II)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 223
    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 225
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "RCTCamera"

    const-string v0, "setParameters failed"

    .line 228
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setCaptureQuality(ILjava/lang/String;)V
    .locals 6

    .line 233
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    .line 241
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "1080p"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v4, "high"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v4, "720p"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "480p"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v4, "low"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_5
    const-string v4, "preview"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v4, "medium"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const p2, 0x7fffffff

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 262
    :pswitch_0
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v1, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v1, v1, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v2, p2, v1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_1

    .line 259
    :pswitch_1
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v1, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v1, v1, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v2, p2, v1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_1

    .line 256
    :pswitch_2
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v1, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v1, v1, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v2, p2, v1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_1

    .line 252
    :pswitch_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 253
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v1, v2, p2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getClosestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_1

    .line 249
    :pswitch_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_1

    .line 246
    :pswitch_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    div-int/2addr p2, v5

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/hardware/Camera$Size;

    goto :goto_1

    .line 243
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getSmallestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 267
    iget p2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, p2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 269
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "RCTCamera"

    const-string v0, "setParameters failed"

    .line 272
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_6
        -0x12f71c38 -> :sswitch_5
        0x1a354 -> :sswitch_4
        0x187bc4 -> :sswitch_3
        0x19c25b -> :sswitch_2
        0x30dda2 -> :sswitch_1
        0x2c929f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureVideoQuality(ILjava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 9

    .line 278
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 284
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getSupportedVideoSizes(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    const/4 v2, -0x1

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "1080p"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "high"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "720p"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "480p"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_5
    const-string v3, "medium"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    move-object p1, v1

    move-object p2, p1

    goto/16 :goto_1

    .line 308
    :cond_2
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_1080P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v2, v2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v0, p2, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 309
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto/16 :goto_1

    .line 304
    :cond_3
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_720P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v2, v2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v0, p2, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 305
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v7}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_1

    .line 300
    :cond_4
    sget-object p2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget p2, p2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    sget-object v2, Lcom/lwansbrough/RCTCamera/RCTCamera;->RESOLUTION_480P:Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;

    iget v2, v2, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    invoke-virtual {p0, v0, p2, v2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 301
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    .line 296
    invoke-virtual {p0, v0, p2, p2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getBestSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 297
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_1

    .line 292
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    div-int/2addr p2, v5

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Camera$Size;

    .line 293
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v7}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_1

    .line 288
    :cond_7
    invoke-direct {p0, v0}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getSmallestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 289
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraTypeToIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_8

    return-object v1

    :cond_8
    if-eqz p2, :cond_9

    .line 318
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 319
    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    iput p2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    :cond_9
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_5
        0x1a354 -> :sswitch_4
        0x187bc4 -> :sswitch_3
        0x19c25b -> :sswitch_2
        0x30dda2 -> :sswitch_1
        0x2c929f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFlashMode(II)V
    .locals 3

    .line 355
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    goto :goto_0

    :cond_2
    const-string v1, "on"

    goto :goto_0

    :cond_3
    const-string v1, "off"

    .line 373
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 374
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 375
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 377
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "RCTCamera"

    const-string v0, "setParameters failed"

    .line 380
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_orientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_orientation:I

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V

    const/4 p1, 0x2

    .line 177
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V

    return-void
.end method

.method public setPreviewVisibleSize(III)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCamera;->_cameraInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    iput p2, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleWidth:I

    .line 486
    iput p3, p1, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleHeight:I

    return-void
.end method

.method public setTorchMode(II)V
    .locals 3

    .line 326
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "torch"

    goto :goto_0

    :cond_2
    const-string v1, "off"

    .line 342
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 343
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 344
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 346
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "RCTCamera"

    const-string v0, "setParameters failed"

    .line 349
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setZoom(II)V
    .locals 3

    .line 386
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->acquireCameraInstance(I)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 393
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 395
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 397
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RCTCamera"

    const-string v0, "setParameters failed"

    .line 400
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
