.class public Lcom/swmansion/reanimated/nodes/EventNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "EventNode.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTEventEmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/nodes/EventNode$EventMap;
    }
.end annotation


# instance fields
.field private final mMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/nodes/EventNode$EventMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "argMapping"

    .line 57
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/reanimated/nodes/EventNode;->processMapping(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/EventNode;->mMapping:Ljava/util/List;

    return-void
.end method

.method private static processMapping(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/nodes/EventNode$EventMap;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    new-instance v3, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;-><init>(Lcom/facebook/react/bridge/ReadableArray;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Double;
    .locals 1

    .line 82
    sget-object v0, Lcom/swmansion/reanimated/nodes/EventNode;->ZERO:Ljava/lang/Double;

    return-object v0
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/EventNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3
    .param p3    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/swmansion/reanimated/nodes/EventNode;->mMapping:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 67
    iget-object p2, p0, Lcom/swmansion/reanimated/nodes/EventNode;->mMapping:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;

    .line 68
    invoke-virtual {p2, p3}, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->lookupValue(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/EventNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-static {p2}, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->access$000(Lcom/swmansion/reanimated/nodes/EventNode$EventMap;)I

    move-result p2

    const-class v2, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-virtual {v1, p2, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object p2

    check-cast p2, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-virtual {p2, v0}, Lcom/swmansion/reanimated/nodes/ValueNode;->setValue(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Animated events must have event data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 0

    .line 77
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "receiveTouches is not support by animated events"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
