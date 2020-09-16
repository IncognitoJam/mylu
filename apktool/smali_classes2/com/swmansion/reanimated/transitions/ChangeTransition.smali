.class final Lcom/swmansion/reanimated/transitions/ChangeTransition;
.super Landroidx/transition/Transition;
.source "ChangeTransition.java"


# instance fields
.field private final mChangeBounds:Landroidx/transition/ChangeBounds;

.field private final mChangeTransform:Landroidx/transition/ChangeTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 20
    new-instance v0, Landroidx/transition/ChangeTransform;

    invoke-direct {v0}, Landroidx/transition/ChangeTransform;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    .line 21
    new-instance v0, Landroidx/transition/ChangeBounds;

    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeTransform;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 33
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeBounds;->captureEndValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeTransform;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 27
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeBounds;->captureStartValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/transition/ChangeTransform;->setReparent(Z)V

    .line 67
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 78
    :cond_1
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p3, 0x2

    .line 79
    new-array p3, p3, [Landroid/animation/Animator;

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p2
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/ChangeTransform;->setDuration(J)Landroidx/transition/Transition;

    .line 39
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/ChangeBounds;->setDuration(J)Landroidx/transition/Transition;

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeTransform;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 53
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 54
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object p1

    return-object p1
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 1
    .param p1    # Landroidx/transition/TransitionPropagation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeTransform;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 60
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1}, Landroidx/transition/ChangeBounds;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 61
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    return-void
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeTransform:Landroidx/transition/ChangeTransform;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/ChangeTransform;->setStartDelay(J)Landroidx/transition/Transition;

    .line 46
    iget-object v0, p0, Lcom/swmansion/reanimated/transitions/ChangeTransition;->mChangeBounds:Landroidx/transition/ChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroidx/transition/ChangeBounds;->setStartDelay(J)Landroidx/transition/Transition;

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object p1

    return-object p1
.end method
