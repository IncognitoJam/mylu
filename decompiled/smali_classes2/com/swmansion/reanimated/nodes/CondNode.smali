.class public Lcom/swmansion/reanimated/nodes/CondNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "CondNode.java"


# instance fields
.field private final mCondID:I

.field private final mElseBlockID:I

.field private final mIfBlockID:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "cond"

    const-string p3, "Reanimated: First argument passed to cond node is either of wrong type or is missing."

    .line 13
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mCondID:I

    const-string p1, "Reanimated: Second argument passed to cond node is either of wrong type or is missing."

    const-string p3, "ifBlock"

    .line 14
    invoke-static {p2, p3, p1}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mIfBlockID:I

    const-string p3, "elseBlock"

    .line 15
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p2, p3, p1}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mElseBlockID:I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Object;
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mCondID:I

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/NodesManager;->getNodeValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Ljava/lang/Number;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    .line 25
    iget v0, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mIfBlockID:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mIfBlockID:I

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/NodesManager;->getNodeValue(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/swmansion/reanimated/nodes/CondNode;->ZERO:Ljava/lang/Double;

    :goto_0
    return-object v0

    .line 27
    :cond_1
    iget v0, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mElseBlockID:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/CondNode;->mElseBlockID:I

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/NodesManager;->getNodeValue(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/swmansion/reanimated/nodes/CondNode;->ZERO:Ljava/lang/Double;

    :goto_1
    return-object v0
.end method
