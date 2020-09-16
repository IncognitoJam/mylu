.class Lcom/google/android/cameraview/Camera1$7;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->takePictureInternal(Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iput-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .line 759
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {p2}, Lcom/google/android/cameraview/Camera1;->access$500(Lcom/google/android/cameraview/Camera1;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 760
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object p2, p2, Lcom/google/android/cameraview/Camera1;->sound:Landroid/media/MediaActionSound;

    invoke-virtual {p2, v0}, Landroid/media/MediaActionSound;->play(I)V

    .line 766
    :cond_0
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter p2

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "pauseAfterCapture"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "pauseAfterCapture"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 770
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/cameraview/Camera1;->access$602(Lcom/google/android/cameraview/Camera1;Z)Z

    .line 771
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$700(Lcom/google/android/cameraview/Camera1;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 776
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1, v0}, Lcom/google/android/cameraview/Camera1;->access$602(Lcom/google/android/cameraview/Camera1;Z)Z

    .line 777
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 780
    :cond_2
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {p2}, Lcom/google/android/cameraview/Camera1;->access$800(Lcom/google/android/cameraview/Camera1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 784
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {p2, v0}, Lcom/google/android/cameraview/Camera1;->access$902(Lcom/google/android/cameraview/Camera1;I)I

    .line 785
    iget-object p2, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object p2, p2, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v0}, Lcom/google/android/cameraview/Camera1;->access$1000(Lcom/google/android/cameraview/Camera1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/Camera1;->displayOrientationToOrientationEnum(I)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onPictureTaken([BI)V

    .line 787
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {p1}, Lcom/google/android/cameraview/Camera1;->access$200(Lcom/google/android/cameraview/Camera1;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 788
    iget-object p1, p0, Lcom/google/android/cameraview/Camera1$7;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {p1}, Lcom/google/android/cameraview/Camera1;->access$100(Lcom/google/android/cameraview/Camera1;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 780
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
