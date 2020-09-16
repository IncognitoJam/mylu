.class Lcom/google/android/cameraview/Camera1$5;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->setCameraId(Ljava/lang/String;)V
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

    .line 414
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$5;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$5;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$5;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->stop()V

    .line 419
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$5;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->start()Z

    :cond_0
    return-void
.end method
