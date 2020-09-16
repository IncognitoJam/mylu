.class public Lcom/swmansion/rnscreens/ScreenFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScreenFragment.java"


# instance fields
.field protected mScreenView:Lcom/swmansion/rnscreens/Screen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Screen fragments should never be restored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnAppear()V

    return-void
.end method

.method private dispatchOnAppear()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 42
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 43
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/ScreenAppearEvent;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    .line 44
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/ScreenAppearEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method


# virtual methods
.method public getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment$1;-><init>(Lcom/swmansion/rnscreens/ScreenFragment;)V

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->postAfterTransition(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnAppear()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 70
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 71
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/ScreenDismissedEvent;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    .line 72
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/ScreenDismissedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_1
    return-void
.end method
