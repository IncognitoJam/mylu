.class Lcom/google/android/cameraview/SurfaceViewPreview;
.super Lcom/google/android/cameraview/PreviewImpl;
.source "SurfaceViewPreview.java"


# instance fields
.field final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/android/cameraview/PreviewImpl;-><init>()V

    .line 34
    sget v0, Lorg/reactnative/camera/R$layout;->surface_view:I

    invoke-static {p1, v0, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 35
    sget p2, Lorg/reactnative/camera/R$id;->surface_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 36
    iget-object p1, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    .line 38
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 39
    new-instance p2, Lcom/google/android/cameraview/SurfaceViewPreview$1;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/SurfaceViewPreview$1;-><init>(Lcom/google/android/cameraview/SurfaceViewPreview;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method getOutputClass()Ljava/lang/Class;
    .locals 1

    .line 76
    const-class v0, Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method getSurface()Landroid/view/Surface;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method isReady()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDisplayOrientation(I)V
    .locals 0

    return-void
.end method
