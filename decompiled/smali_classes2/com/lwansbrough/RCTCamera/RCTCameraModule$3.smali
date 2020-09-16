.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;
.super Ljava/lang/Object;
.source "RCTCameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule;->captureWithOrientation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    iput-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0

    .line 549
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 550
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 552
    new-instance p2, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;

    invoke-direct {p2, p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;[B)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 559
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$302(Lcom/lwansbrough/RCTCamera/RCTCameraModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
