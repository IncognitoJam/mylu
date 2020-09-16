.class public Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStartNode;
.super Lcom/swmansion/reanimated/nodes/ClockOpNode;
.source "ClockOpNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/ClockOpNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockStartNode"
.end annotation


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/ClockOpNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    return-void
.end method


# virtual methods
.method protected eval(Lcom/swmansion/reanimated/nodes/Node;)Ljava/lang/Double;
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/swmansion/reanimated/nodes/ParamNode;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/ParamNode;->start()V

    goto :goto_0

    .line 19
    :cond_0
    check-cast p1, Lcom/swmansion/reanimated/nodes/ClockNode;

    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/ClockNode;->start()V

    .line 21
    :goto_0
    sget-object p1, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStartNode;->ZERO:Ljava/lang/Double;

    return-object p1
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/swmansion/reanimated/nodes/ClockOpNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
