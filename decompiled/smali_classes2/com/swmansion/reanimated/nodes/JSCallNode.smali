.class public Lcom/swmansion/reanimated/nodes/JSCallNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "JSCallNode.java"


# instance fields
.field private final mInputIDs:[I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "input"

    .line 16
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/reanimated/Utils;->processIntArray(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mInputIDs:[I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Double;
    .locals 5

    .line 21
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mInputIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 23
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v3, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mInputIDs:[I

    aget v3, v3, v1

    const-class v4, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v2, v3, v4}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v3

    .line 28
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 29
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v2}, Lcom/swmansion/reanimated/nodes/Node;->doubleValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 36
    iget v2, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mNodeID:I

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "args"

    .line 37
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 38
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/JSCallNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    const-string v2, "onReanimatedCall"

    invoke-virtual {v0, v2, v1}, Lcom/swmansion/reanimated/NodesManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 39
    sget-object v0, Lcom/swmansion/reanimated/nodes/JSCallNode;->ZERO:Ljava/lang/Double;

    return-object v0
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/JSCallNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
