.class Lcom/google/android/cameraview/Camera1$6;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
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

    .line 512
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$6;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$6;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$6;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$6;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    .line 519
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
