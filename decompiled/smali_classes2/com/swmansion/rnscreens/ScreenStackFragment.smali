.class public Lcom/swmansion/rnscreens/ScreenStackFragment;
.super Lcom/swmansion/rnscreens/ScreenFragment;
.source "ScreenStackFragment.java"


# static fields
.field private static final TOOLBAR_ELEVATION:F


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mScreenRootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mShadowHidden:Z

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    sput v0, Lcom/swmansion/rnscreens/ScreenStackFragment;->TOOLBAR_ELEVATION:F

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-void
.end method

.method private configureView()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 5

    .line 65
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 68
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 69
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v3, v1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 77
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 78
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public canNavigateBack()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_2

    .line 107
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStack;->getRootScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 111
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->canNavigateBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenStackFragment added into a non-stack container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismiss()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 126
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenStack;->dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenStackFragment added into a non-stack container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDismissable()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled()Z

    move-result v0

    return v0
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

    .line 93
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenRootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez p1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->configureView()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenRootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenRootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p1
.end method

.method public onStackUpdate()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mScreenView:Lcom/swmansion/rnscreens/Screen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/Screen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    :cond_0
    return-void
.end method

.method public removeToolbar()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 44
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 47
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setToolbarShadowHidden(Z)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mShadowHidden:Z

    if-eq v0, p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget v1, Lcom/swmansion/rnscreens/ScreenStackFragment;->TOOLBAR_ELEVATION:F

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setTargetElevation(F)V

    .line 53
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->mShadowHidden:Z

    :cond_1
    return-void
.end method
