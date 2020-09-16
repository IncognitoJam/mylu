.class public Lcom/swmansion/reanimated/nodes/ClockNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "ClockNode.java"

# interfaces
.implements Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;


# instance fields
.field public isRunning:Z


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Double;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-wide v0, v0, Lcom/swmansion/reanimated/NodesManager;->currentFrameTimeMs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/ClockNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationFrame()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->isRunning:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/ClockNode;->markUpdated()V

    .line 35
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p0}, Lcom/swmansion/reanimated/NodesManager;->postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->isRunning:Z

    .line 19
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p0}, Lcom/swmansion/reanimated/NodesManager;->postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/swmansion/reanimated/nodes/ClockNode;->isRunning:Z

    return-void
.end method
