.class public Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/rnscreens/ScreenContainer<",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_STACK_TAG:Ljava/lang/String; = "RN_SCREEN_LAST"


# instance fields
.field private final mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

.field private final mDismissed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final mStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 22
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$1;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 34
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$2;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$2;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    return-void
.end method

.method private setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 234
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    const-string v2, "RN_SCREEN_LAST"

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 236
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_2

    .line 237
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 238
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq p1, v0, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 250
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    return-object p1
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 1

    .line 68
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method public dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->onUpdate()V

    return-void
.end method

.method public getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 5

    .line 57
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    return-object v0
.end method

.method protected hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onAttachedToWindow()V

    .line 90
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 75
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 76
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    const-string v2, "RN_SCREEN_LAST"

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onDetachedFromWindow()V

    return-void
.end method

.method protected onUpdate()V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 115
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    if-ltz v0, :cond_6

    .line 127
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 128
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v3, :cond_4

    .line 131
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object v3

    sget-object v5, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    if-eq v3, v5, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    move-object v2, v4

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 141
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_7

    .line 143
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 144
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    .line 148
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Lcom/swmansion/rnscreens/ScreenStack$3;

    invoke-direct {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenStack$3;-><init>(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    :cond_9
    if-eqz v3, :cond_a

    .line 158
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1003

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_d

    .line 164
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_10

    const/16 v0, 0x1001

    .line 167
    sget-object v6, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v1, :cond_c

    if-eq v6, v5, :cond_b

    goto :goto_5

    :cond_b
    const/16 v0, 0x1003

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    .line 175
    :goto_5
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x2002

    .line 180
    sget-object v6, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v1, :cond_f

    if-eq v6, v5, :cond_e

    goto :goto_6

    :cond_e
    const/16 v0, 0x1003

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    .line 188
    :goto_6
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 191
    :cond_10
    :goto_7
    iput-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 193
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->tryCommitTransaction()V

    .line 198
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_11

    .line 199
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    .line 202
    :cond_11
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 203
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onStackUpdate()V

    goto :goto_8

    :cond_12
    return-void
.end method

.method protected removeAllScreens()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 103
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method protected removeScreenAt(I)V
    .locals 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method
