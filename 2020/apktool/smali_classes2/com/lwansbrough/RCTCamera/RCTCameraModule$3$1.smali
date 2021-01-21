.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;
.super Ljava/lang/Object;
.source "RCTCameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;[B)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;

    iput-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;

    iget-object v0, v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    new-instance v1, Lcom/lwansbrough/RCTCamera/MutableImage;

    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->val$data:[B

    invoke-direct {v1, v2}, Lcom/lwansbrough/RCTCamera/MutableImage;-><init>([B)V

    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;

    iget-object v2, v2, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3$1;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;

    iget-object v3, v3, Lcom/lwansbrough/RCTCamera/RCTCameraModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, v2, v3}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$200(Lcom/lwansbrough/RCTCamera/RCTCameraModule;Lcom/lwansbrough/RCTCamera/MutableImage;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
