.class Lcom/lwansbrough/RCTCamera/RCTCameraView$1;
.super Landroid/view/OrientationEventListener;
.source "RCTCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraView;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraView;Landroid/content/Context;I)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraView;

    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->access$000(Lcom/lwansbrough/RCTCamera/RCTCameraView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->access$100(Lcom/lwansbrough/RCTCamera/RCTCameraView;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraView$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraView;

    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->access$200(Lcom/lwansbrough/RCTCamera/RCTCameraView;)V

    :cond_0
    return-void
.end method
