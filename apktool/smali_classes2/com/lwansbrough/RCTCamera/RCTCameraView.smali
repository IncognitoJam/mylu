.class public Lcom/lwansbrough/RCTCamera/RCTCameraView;
.super Landroid/view/ViewGroup;
.source "RCTCameraView.java"


# instance fields
.field private _actualDeviceOrientation:I

.field private _aspect:I

.field private _captureMode:I

.field private _captureQuality:Ljava/lang/String;

.field private _clearWindowBackground:Z

.field private final _context:Landroid/content/Context;

.field private _flashMode:I

.field private final _orientationListener:Landroid/view/OrientationEventListener;

.field private _torchMode:I

.field private _viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

.field private _zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_actualDeviceOrientation:I

    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_aspect:I

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_captureMode:I

    const-string v2, "high"

    .line 23
    iput-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_captureQuality:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_torchMode:I

    .line 25
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_flashMode:I

    .line 26
    iput v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_zoom:I

    .line 27
    iput-boolean v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_clearWindowBackground:Z

    .line 31
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_context:Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/lwansbrough/RCTCamera/RCTCamera;->createInstance(I)V

    .line 34
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraView$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/lwansbrough/RCTCamera/RCTCameraView$1;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_orientationListener:Landroid/view/OrientationEventListener;

    .line 43
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/lwansbrough/RCTCamera/RCTCameraView;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lwansbrough/RCTCamera/RCTCameraView;Landroid/content/Context;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setActualDeviceOrientation(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/lwansbrough/RCTCamera/RCTCameraView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->layoutViewFinder()V

    return-void
.end method

.method private getDeviceOrientation(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    return p1
.end method

.method private layoutViewFinder()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->layoutViewFinder(IIII)V

    return-void
.end method

.method private layoutViewFinder(IIII)V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p1

    int-to-float p1, p3

    sub-int/2addr p4, p2

    int-to-float p2, p4

    .line 184
    iget p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_aspect:I

    if-eqz p3, :cond_2

    const/4 p4, 0x1

    if-eq p3, p4, :cond_1

    float-to-int p3, p1

    :goto_0
    float-to-int p4, p2

    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getRatio()D

    move-result-wide p3

    float-to-double v0, p2

    mul-double v0, v0, p3

    float-to-double v2, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getRatio()D

    move-result-wide p3

    float-to-double v0, p2

    mul-double v0, v0, p3

    float-to-double v2, p1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    :goto_1
    div-double/2addr v2, p3

    double-to-int p4, v2

    float-to-int p3, p1

    goto :goto_2

    :cond_3
    double-to-int p3, v0

    goto :goto_0

    :goto_2
    int-to-float v0, p3

    sub-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v2, p4

    sub-float v2, p2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 213
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v3}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->getCameraType()I

    move-result v3

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v2, v3, p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setPreviewVisibleSize(III)V

    .line 215
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    invoke-virtual {p1, v0, v1, p3, p4}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->layout(IIII)V

    .line 216
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getRight()I

    move-result p3

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getBottom()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->postInvalidate(IIII)V

    return-void
.end method

.method private setActualDeviceOrientation(Landroid/content/Context;)Z
    .locals 1

    .line 157
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p1

    .line 158
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_actualDeviceOrientation:I

    if-eq v0, p1, :cond_0

    .line 159
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_actualDeviceOrientation:I

    .line 160
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object p1

    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_actualDeviceOrientation:I

    invoke-virtual {p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setActualDeviceOrientation(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 52
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->layoutViewFinder(IIII)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-ne v0, p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->removeView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setAspect(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_aspect:I

    .line 66
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->layoutViewFinder()V

    return-void
.end method

.method public setBarCodeTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setBarCodeTypes(Ljava/util/List;)V

    return-void
.end method

.method public setBarcodeScannerEnabled(Z)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setBarcodeScannerEnabled(Z)V

    return-void
.end method

.method public setCameraType(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setCameraType(I)V

    .line 72
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->adjustPreviewLayout(I)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    .line 75
    iget p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_flashMode:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setFlashMode(I)V

    .line 78
    :cond_1
    iget p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_torchMode:I

    if-eq v0, p1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setTorchMode(I)V

    .line 81
    :cond_2
    iget p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_zoom:I

    if-eqz p1, :cond_3

    .line 82
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setZoom(I)V

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    iget-boolean v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_clearWindowBackground:Z

    invoke-virtual {p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setClearWindowBackground(Z)V

    .line 85
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 1

    .line 90
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_captureMode:I

    .line 91
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setCaptureMode(I)V

    :cond_0
    return-void
.end method

.method public setCaptureQuality(Ljava/lang/String;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_captureQuality:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setCaptureQuality(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setClearWindowBackground(Z)V
    .locals 1

    .line 140
    iput-boolean p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_clearWindowBackground:Z

    .line 141
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setClearWindowBackground(Z)V

    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 1

    .line 111
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_flashMode:I

    .line 112
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setFlashMode(I)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 125
    invoke-static {}, Lcom/lwansbrough/RCTCamera/RCTCamera;->getInstance()Lcom/lwansbrough/RCTCamera/RCTCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCamera;->setOrientation(I)V

    .line 126
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->layoutViewFinder()V

    :cond_0
    return-void
.end method

.method public setTorchMode(I)V
    .locals 1

    .line 104
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_torchMode:I

    .line 105
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setTorchMode(I)V

    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 1

    .line 118
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_zoom:I

    .line 119
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->startPreview()V

    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView;->_viewFinder:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->stopPreview()V

    return-void
.end method
