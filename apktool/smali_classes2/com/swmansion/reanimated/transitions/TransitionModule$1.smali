.class Lcom/swmansion/reanimated/transitions/TransitionModule$1;
.super Ljava/lang/Object;
.source "TransitionModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/transitions/TransitionModule;->animateNextTransition(ILcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/transitions/TransitionModule;

.field final synthetic val$config:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$rootTag:I


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/transitions/TransitionModule;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/swmansion/reanimated/transitions/TransitionModule$1;->this$0:Lcom/swmansion/reanimated/transitions/TransitionModule;

    iput p2, p0, Lcom/swmansion/reanimated/transitions/TransitionModule$1;->val$rootTag:I

    iput-object p3, p0, Lcom/swmansion/reanimated/transitions/TransitionModule$1;->val$config:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 5

    .line 27
    :try_start_0
    iget v0, p0, Lcom/swmansion/reanimated/transitions/TransitionModule$1;->val$rootTag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/TransitionModule$1;->val$config:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "transitions"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 31
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 33
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-static {v4}, Lcom/swmansion/reanimated/transitions/TransitionUtils;->inflate(Lcom/facebook/react/bridge/ReadableMap;)Landroidx/transition/Transition;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
