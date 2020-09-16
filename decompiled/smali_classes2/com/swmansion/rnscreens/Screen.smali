.class public Lcom/swmansion/rnscreens/Screen;
.super Landroid/view/ViewGroup;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/Screen$StackAnimation;,
        Lcom/swmansion/rnscreens/Screen$StackPresentation;
    }
.end annotation


# static fields
.field private static sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mActive:Z

.field private mContainer:Lcom/swmansion/rnscreens/ScreenContainer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFragment:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mGestureEnabled:Z

.field private mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field private mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field private mTransitioning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/swmansion/rnscreens/Screen$1;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/Screen$1;-><init>()V

    sput-object v0, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 54
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    return-void
.end method

.method static synthetic access$000()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 19
    sget-object v0, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method


# virtual methods
.method protected getContainer()Lcom/swmansion/rnscreens/ScreenContainer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    return-object v0
.end method

.method protected getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object v0
.end method

.method public getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mActive:Z

    return v0
.end method

.method public isGestureEnabled()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 91
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    invoke-virtual {v0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 81
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->clearDisappearingChildren()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    if-eqz p1, :cond_0

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    .line 66
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 67
    new-instance p2, Lcom/swmansion/rnscreens/Screen$2;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/swmansion/rnscreens/Screen$2;-><init>(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReactContext;II)V

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 163
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mActive:Z

    .line 164
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->notifyChildUpdate()V

    :cond_1
    return-void
.end method

.method protected setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0
    .param p1    # Lcom/swmansion/rnscreens/ScreenContainer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    return-void
.end method

.method protected setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-void
.end method

.method public setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 115
    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
