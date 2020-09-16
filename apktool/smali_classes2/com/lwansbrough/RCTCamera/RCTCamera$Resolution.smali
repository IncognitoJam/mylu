.class Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;
.super Ljava/lang/Object;
.source "RCTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lwansbrough/RCTCamera/RCTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput p1, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->width:I

    .line 533
    iput p2, p0, Lcom/lwansbrough/RCTCamera/RCTCamera$Resolution;->height:I

    return-void
.end method
