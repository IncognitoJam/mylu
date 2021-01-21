.class Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$2;
.super Ljava/lang/Object;
.source "RCTCameraViewFinder.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;->handleFocus(Landroid/view/MotionEvent;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder$2;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_0
    return-void
.end method
