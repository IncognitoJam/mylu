.class abstract Lcom/google/android/cameraview/PreviewImpl;
.super Ljava/lang/Object;
.source "PreviewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/PreviewImpl$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatchSurfaceChanged()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/PreviewImpl$Callback;->onSurfaceChanged()V

    return-void
.end method

.method protected dispatchSurfaceDestroyed()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/PreviewImpl$Callback;->onSurfaceDestroyed()V

    return-void
.end method

.method getHeight()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mHeight:I

    return v0
.end method

.method abstract getOutputClass()Ljava/lang/Class;
.end method

.method abstract getSurface()Landroid/view/Surface;
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSurfaceTexture()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getView()Landroid/view/View;
.end method

.method getWidth()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mWidth:I

    return v0
.end method

.method abstract isReady()Z
.end method

.method setBufferSize(II)V
    .locals 0

    return-void
.end method

.method setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/cameraview/PreviewImpl;->mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

    return-void
.end method

.method abstract setDisplayOrientation(I)V
.end method

.method setSize(II)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/google/android/cameraview/PreviewImpl;->mWidth:I

    .line 76
    iput p2, p0, Lcom/google/android/cameraview/PreviewImpl;->mHeight:I

    return-void
.end method
