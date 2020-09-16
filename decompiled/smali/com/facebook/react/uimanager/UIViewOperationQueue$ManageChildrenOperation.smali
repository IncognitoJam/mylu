.class final Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;
.super Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManageChildrenOperation"
.end annotation


# instance fields
.field private final mIndicesToDelete:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIndicesToRemove:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTagsToDelete:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mViewsToAdd:[Lcom/facebook/react/uimanager/ViewAtIndex;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Lcom/facebook/react/uimanager/ViewAtIndex;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 195
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    .line 197
    iput-object p3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mIndicesToRemove:[I

    .line 198
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mViewsToAdd:[Lcom/facebook/react/uimanager/ViewAtIndex;

    .line 199
    iput-object p5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mTagsToDelete:[I

    .line 200
    iput-object p6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mIndicesToDelete:[I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mTag:I

    iget-object v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mIndicesToRemove:[I

    iget-object v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mViewsToAdd:[Lcom/facebook/react/uimanager/ViewAtIndex;

    iget-object v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mTagsToDelete:[I

    iget-object v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ManageChildrenOperation;->mIndicesToDelete:[I

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V

    return-void
.end method
