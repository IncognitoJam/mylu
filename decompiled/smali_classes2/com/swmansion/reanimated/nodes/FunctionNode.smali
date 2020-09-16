.class public Lcom/swmansion/reanimated/nodes/FunctionNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "FunctionNode.java"


# instance fields
.field private final mWhatNodeID:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "what"

    .line 12
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/FunctionNode;->mWhatNodeID:I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Object;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/FunctionNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/FunctionNode;->mWhatNodeID:I

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
