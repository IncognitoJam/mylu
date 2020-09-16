.class public Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;
.super Ljava/lang/Object;
.source "PreAllocateViewMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private final mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private final mIsLayoutable:Z

.field private final mProps:Lcom/facebook/react/bridge/ReadableMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mReactTag:I

.field private final mRootTag:I

.field private final mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V
    .locals 0
    .param p5    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 39
    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mRootTag:I

    .line 41
    iput-object p5, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    .line 42
    iput-object p6, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 43
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    .line 44
    iput-boolean p7, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 9

    .line 49
    sget-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing pre-allocation of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    iget-object v6, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v7, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    iget-boolean v8, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/react/fabric/mounting/MountingManager;->preallocateView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreAllocateViewMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rootTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mRootTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLayoutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mIsLayoutable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;->mProps:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
