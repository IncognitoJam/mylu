.class Lcom/google/android/cameraview/Camera1$3;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->resumePreview()V
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

    .line 351
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/cameraview/Camera1;->access$302(Lcom/google/android/cameraview/Camera1;Z)Z

    .line 356
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v0}, Lcom/google/android/cameraview/Camera1;->access$400(Lcom/google/android/cameraview/Camera1;)V

    .line 357
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
