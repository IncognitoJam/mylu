.class public Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStopNode;
.super Lcom/swmansion/reanimated/nodes/ClockOpNode;
.source "ClockOpNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/ClockOpNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockStopNode"
.end annotation


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/ClockOpNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    return-void
.end method


# virtual methods
.method protected eval(Lcom/swmansion/reanimated/nodes/Node;)Ljava/lang/Double;
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/swmansion/reanimated/nodes/ParamNode;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/ParamNode;->stop()V

    goto :goto_0

    .line 35
    :cond_0
    check-cast p1, Lcom/swmansion/reanimated/nodes/ClockNode;

    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/ClockNode;->stop()V

    .line 37
    :goto_0
    sget-object p1, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStopNode;->ZERO:Ljava/lang/Double;

    return-object p1
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/swmansion/reanimated/nodes/ClockOpNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
