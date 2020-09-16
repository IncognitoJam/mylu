.class Lcom/google/android/cameraview/Camera2$6;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Lcom/google/android/cameraview/PreviewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera2;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;Landroid/os/Handler;)V
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

    .line 291
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$6;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$6;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$6;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera2;->stop()V

    return-void
.end method
