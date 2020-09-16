.class Lcom/google/android/cameraview/Camera1$1;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Lcom/google/android/cameraview/PreviewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$000(Lcom/google/android/cameraview/Camera1;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$100(Lcom/google/android/cameraview/Camera1;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/cameraview/Camera1$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera1$1$1;-><init>(Lcom/google/android/cameraview/Camera1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfaceDestroyed()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/cameraview/Camera1;->access$002(Lcom/google/android/cameraview/Camera1;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string v3, "onSurfaceDestroyed preview cleanup failed"

    .line 183
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$1$2;-><init>(Lcom/google/android/cameraview/Camera1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 186
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
