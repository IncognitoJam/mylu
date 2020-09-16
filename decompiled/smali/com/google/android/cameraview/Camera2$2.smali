.class Lcom/google/android/cameraview/Camera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera2;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera2;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Camera2"

    const-string v0, "Failed to configure capture session."

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Camera2"

    .line 127
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iput-object p1, v1, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 131
    iget-object p1, v1, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/google/android/cameraview/Camera2;->access$002(Lcom/google/android/cameraview/Camera2;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 132
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 133
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 134
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->updateFocusDepth()V

    .line 135
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->updateWhiteBalance()V

    .line 136
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->updateZoom()V

    .line 138
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object p1, p1, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2$2;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v2, v2, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to start camera preview."

    .line 143
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Failed to start camera preview because it couldn\'t access camera"

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
