.class Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;
.super Ljava/lang/Object;
.source "RCTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lwansbrough/RCTCamera/RCTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraInfoWrapper"
.end annotation


# instance fields
.field public final info:Landroid/hardware/Camera$CameraInfo;

.field public previewHeight:I

.field public previewVisibleHeight:I

.field public previewVisibleWidth:I

.field public previewWidth:I

.field public rotation:I

.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCamera;


# direct methods
.method public constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCamera;Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->this$0:Lcom/lwansbrough/RCTCamera/RCTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 516
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->rotation:I

    const/4 p1, -0x1

    .line 517
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewWidth:I

    .line 518
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewHeight:I

    .line 519
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleWidth:I

    .line 520
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->previewVisibleHeight:I

    .line 523
    iput-object p2, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$CameraInfoWrapper;->info:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method
