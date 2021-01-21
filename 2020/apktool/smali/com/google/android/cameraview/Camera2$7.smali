.class Lcom/google/android/cameraview/Camera2$7;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera2;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
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

    .line 977
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$7;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$7;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$7;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 982
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$7;->this$0:Lcom/google/android/cameraview/Camera2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$7;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method
