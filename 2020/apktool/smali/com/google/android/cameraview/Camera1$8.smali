.class Lcom/google/android/cameraview/Camera1$8;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iput-object p2, p0, Lcom/google/android/cameraview/Camera1$8;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$8;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Lcom/google/android/cameraview/Camera1;->access$1102(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 919
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/cameraview/Camera1;->access$602(Lcom/google/android/cameraview/Camera1;Z)Z

    .line 921
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$8;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 927
    :goto_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$8;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Lcom/google/android/cameraview/Camera1;->access$1102(Lcom/google/android/cameraview/Camera1;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 928
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$8;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v0}, Lcom/google/android/cameraview/Camera1;->access$400(Lcom/google/android/cameraview/Camera1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CAMERA_1::"

    const-string/jumbo v2, "setPreviewTexture failed"

    .line 930
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
