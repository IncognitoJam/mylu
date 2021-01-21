.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;
.super Ljava/lang/Object;
.source "RCTCameraModule.java"

# interfaces
.implements Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule;->capture(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 506
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    iput-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public orientationEvent()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    invoke-static {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$000(Lcom/lwansbrough/RCTCamera/RCTCameraModule;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->getOrientation()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    invoke-static {v1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$000(Lcom/lwansbrough/RCTCamera/RCTCameraModule;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->unregisterOrientationListener()V

    .line 511
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    invoke-static {v1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$000(Lcom/lwansbrough/RCTCamera/RCTCameraModule;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->onPause()V

    .line 512
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v3, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v1, v2, v3, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;I)V

    return-void
.end method
