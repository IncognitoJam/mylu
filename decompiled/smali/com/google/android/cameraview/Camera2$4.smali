.class Lcom/google/android/cameraview/Camera2$4;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 185
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$4;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    .line 189
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    const/4 v0, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 191
    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 192
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 194
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v4, 0x100

    if-ne v1, v4, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$4;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v1, v3, v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onPictureTaken([BI)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$4;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/cameraview/Camera2$4;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-static {v5}, Lcom/google/android/cameraview/Camera2;->access$100(Lcom/google/android/cameraview/Camera2;)I

    move-result v5

    invoke-interface {v1, v3, v2, v4, v5}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onFramePreview([BIII)V

    .line 201
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 189
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 203
    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_4
    :goto_2
    throw v1
.end method
