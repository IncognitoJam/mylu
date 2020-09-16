.class public abstract Lcom/swmansion/reanimated/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final ONE:Ljava/lang/Double;

.field public static final ZERO:Ljava/lang/Double;


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/nodes/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLastLoopID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoizedValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNodeID:I

.field protected final mNodesManager:Lcom/swmansion/reanimated/NodesManager;

.field protected final mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/swmansion/reanimated/nodes/Node;->ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/swmansion/reanimated/nodes/Node;->ONE:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    .line 31
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/swmansion/reanimated/nodes/Node;->mMemoizedValue:Ljava/util/Map;

    .line 35
    iget-object p2, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput p1, p0, Lcom/swmansion/reanimated/nodes/Node;->mNodeID:I

    .line 37
    iput-object p3, p0, Lcom/swmansion/reanimated/nodes/Node;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 38
    iget-object p1, p3, Lcom/swmansion/reanimated/NodesManager;->updateContext:Lcom/swmansion/reanimated/UpdateContext;

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    return-void
.end method

.method private static findAndUpdateNodes(Lcom/swmansion/reanimated/nodes/Node;Ljava/util/Set;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/reanimated/nodes/Node;",
            "Ljava/util/Set<",
            "Lcom/swmansion/reanimated/nodes/Node;",
            ">;",
            "Ljava/util/Stack<",
            "Lcom/swmansion/reanimated/nodes/FinalNode;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/nodes/Node;

    .line 113
    invoke-static {v1, p1, p2}, Lcom/swmansion/reanimated/nodes/Node;->findAndUpdateNodes(Lcom/swmansion/reanimated/nodes/Node;Ljava/util/Set;Ljava/util/Stack;)V

    goto :goto_0

    .line 116
    :cond_1
    instance-of p1, p0, Lcom/swmansion/reanimated/nodes/FinalNode;

    if-eqz p1, :cond_2

    .line 117
    check-cast p0, Lcom/swmansion/reanimated/nodes/FinalNode;

    invoke-virtual {p2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static runUpdates(Lcom/swmansion/reanimated/UpdateContext;)V
    .locals 5

    .line 122
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 123
    iget-object v0, p0, Lcom/swmansion/reanimated/UpdateContext;->updatedNodes:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 127
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/reanimated/nodes/Node;

    invoke-static {v4, v1, v2}, Lcom/swmansion/reanimated/nodes/Node;->findAndUpdateNodes(Lcom/swmansion/reanimated/nodes/Node;Ljava/util/Set;Ljava/util/Stack;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 129
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/reanimated/nodes/FinalNode;

    invoke-interface {v4}, Lcom/swmansion/reanimated/nodes/FinalNode;->update()V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-wide v0, p0, Lcom/swmansion/reanimated/UpdateContext;->updateLoopID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/swmansion/reanimated/UpdateContext;->updateLoopID:J

    return-void
.end method


# virtual methods
.method public addChild(Lcom/swmansion/reanimated/nodes/Node;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mChildren:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/Node;->dangerouslyRescheduleEvaluate()V

    return-void
.end method

.method protected final dangerouslyRescheduleEvaluate()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/Node;->markUpdated()V

    return-void
.end method

.method public final doubleValue()Ljava/lang/Double;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/swmansion/reanimated/nodes/Node;->ZERO:Ljava/lang/Double;

    return-object v0

    .line 63
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 65
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 66
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 68
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/swmansion/reanimated/nodes/Node;->ONE:Ljava/lang/Double;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/swmansion/reanimated/nodes/Node;->ZERO:Ljava/lang/Double;

    :goto_0
    return-object v0

    .line 70
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be cast to a number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract evaluate()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected final forceUpdateMemoizedValue(Ljava/lang/Object;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mMemoizedValue:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/Node;->markUpdated()V

    return-void
.end method

.method protected markUpdated()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 89
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v0, v0, Lcom/swmansion/reanimated/UpdateContext;->updatedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->postRunUpdatesAfterAnimation()V

    return-void
.end method

.method public removeChild(Lcom/swmansion/reanimated/nodes/Node;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final value()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-wide v2, v2, Lcom/swmansion/reanimated/UpdateContext;->updateLoopID:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mMemoizedValue:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/Node;->mLastLoopID:Ljava/util/Map;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v1, v1, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-wide v2, v2, Lcom/swmansion/reanimated/UpdateContext;->updateLoopID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/Node;->evaluate()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/Node;->mMemoizedValue:Ljava/util/Map;

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/Node;->mUpdateContext:Lcom/swmansion/reanimated/UpdateContext;

    iget-object v2, v2, Lcom/swmansion/reanimated/UpdateContext;->callID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
