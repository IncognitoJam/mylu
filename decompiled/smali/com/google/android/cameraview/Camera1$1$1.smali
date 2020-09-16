.class Lcom/google/android/cameraview/Camera1$1$1;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1$1;->onSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/cameraview/Camera1$1;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1$1;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$1$1;->this$1:Lcom/google/android/cameraview/Camera1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1$1;->this$1:Lcom/google/android/cameraview/Camera1$1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->start()Z

    return-void
.end method
