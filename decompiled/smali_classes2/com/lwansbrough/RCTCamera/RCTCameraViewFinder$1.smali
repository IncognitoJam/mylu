.class Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;
.super Ljava/lang/Object;
.source "RCTCameraViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->setCameraType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    iput p2, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->stopPreview()V

    .line 108
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    iget v1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->val$type:I

    invoke-static {v0, v1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->access$002(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;I)I

    .line 109
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-virtual {v0}, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->startPreview()V

    return-void
.end method
