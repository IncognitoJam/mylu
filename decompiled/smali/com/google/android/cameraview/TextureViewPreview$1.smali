.class Lcom/google/android/cameraview/TextureViewPreview$1;
.super Ljava/lang/Object;
.source "TextureViewPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/TextureViewPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/TextureViewPreview;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/TextureViewPreview;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 45
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1}, Lcom/google/android/cameraview/TextureViewPreview;->configureTransform()V

    .line 46
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1}, Lcom/google/android/cameraview/TextureViewPreview;->dispatchSurfaceChanged()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 59
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1}, Lcom/google/android/cameraview/TextureViewPreview;->dispatchSurfaceDestroyed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 52
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1}, Lcom/google/android/cameraview/TextureViewPreview;->configureTransform()V

    .line 53
    iget-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {p1}, Lcom/google/android/cameraview/TextureViewPreview;->dispatchSurfaceChanged()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
