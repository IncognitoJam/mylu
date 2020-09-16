.class Lcom/google/android/cameraview/Camera1$4;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->setFacing(I)V
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

    .line 386
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$4;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$4;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$4;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->stop()V

    .line 391
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$4;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->start()Z

    :cond_0
    return-void
.end method
