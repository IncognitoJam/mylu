.class public Lcom/swmansion/reanimated/nodes/SetNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "SetNode.java"


# instance fields
.field private mValueNodeID:I

.field private mWhatNodeID:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "what"

    const-string p3, "Reanimated: First argument passed to set node is either of wrong type or is missing."

    .line 16
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mWhatNodeID:I

    const-string p1, "value"

    const-string p3, "Reanimated: Second argument passed to set node is either of wrong type or is missing."

    .line 17
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mValueNodeID:I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Object;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mValueNodeID:I

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/NodesManager;->getNodeValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v2, p0, Lcom/swmansion/reanimated/nodes/SetNode;->mWhatNodeID:I

    const-class v3, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/nodes/ValueNode;

    .line 24
    invoke-virtual {v1, v0}, Lcom/swmansion/reanimated/nodes/ValueNode;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method
