.class public Lcom/swmansion/reanimated/nodes/ParamNode;
.super Lcom/swmansion/reanimated/nodes/ValueNode;
.source "ParamNode.java"


# instance fields
.field private final mArgsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCallID:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/ValueNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    .line 15
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public beginContext(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mPrevCallID:Ljava/lang/String;

    .line 29
    iget-object p2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public endContext()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method protected evaluate()Ljava/lang/Object;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v0, v0, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mPrevCallID:Ljava/lang/String;

    iput-object v2, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-class v3, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iput-object v0, v2, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    return-object v1
.end method

.method public isRunning()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/ParamNode;->isRunning()Z

    move-result v0

    return v0

    .line 71
    :cond_0
    check-cast v0, Lcom/swmansion/reanimated/nodes/ClockNode;

    iget-boolean v0, v0, Lcom/swmansion/reanimated/nodes/ClockNode;->isRunning:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    .line 22
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v3, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mPrevCallID:Ljava/lang/String;

    iput-object v3, v2, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    .line 23
    check-cast v0, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/nodes/ValueNode;->setValue(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iput-object v1, p1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    if-eqz v1, :cond_0

    .line 51
    check-cast v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/ParamNode;->start()V

    goto :goto_0

    .line 53
    :cond_0
    check-cast v0, Lcom/swmansion/reanimated/nodes/ClockNode;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/ClockNode;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/ParamNode;->mArgsStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/ParamNode;->stop()V

    goto :goto_0

    .line 62
    :cond_0
    check-cast v0, Lcom/swmansion/reanimated/nodes/ClockNode;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/ClockNode;->stop()V

    :goto_0
    return-void
.end method
