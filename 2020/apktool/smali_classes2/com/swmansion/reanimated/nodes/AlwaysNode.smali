.class public Lcom/swmansion/reanimated/nodes/AlwaysNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "AlwaysNode.java"

# interfaces
.implements Lcom/swmansion/reanimated/nodes/FinalNode;


# instance fields
.field private mNodeToBeEvaluated:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "what"

    const-string p3, "Reanimated: Argument passed to always node is either of wrong type or is missing."

    .line 10
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/AlwaysNode;->mNodeToBeEvaluated:I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Double;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/AlwaysNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/AlwaysNode;->mNodeToBeEvaluated:I

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/swmansion/reanimated/nodes/AlwaysNode;->ZERO:Ljava/lang/Double;

    return-object v0
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/AlwaysNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/AlwaysNode;->value()Ljava/lang/Object;

    return-void
.end method
