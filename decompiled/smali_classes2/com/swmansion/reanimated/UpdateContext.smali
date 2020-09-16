.class public Lcom/swmansion/reanimated/UpdateContext;
.super Ljava/lang/Object;
.source "UpdateContext.java"


# instance fields
.field public callID:Ljava/lang/String;

.field public updateLoopID:J

.field public final updatedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/reanimated/nodes/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/swmansion/reanimated/UpdateContext;->updateLoopID:J

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/UpdateContext;->updatedNodes:Ljava/util/ArrayList;

    return-void
.end method
