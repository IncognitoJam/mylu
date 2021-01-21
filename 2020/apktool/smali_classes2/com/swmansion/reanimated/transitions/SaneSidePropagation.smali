.class public Lcom/swmansion/reanimated/transitions/SaneSidePropagation;
.super Landroidx/transition/SidePropagation;
.source "SaneSidePropagation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/transition/SidePropagation;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 3

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/transition/SidePropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-eqz p4, :cond_0

    .line 15
    invoke-virtual {p0, p3}, Lcom/swmansion/reanimated/transitions/SaneSidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    neg-long p1, p1

    :cond_1
    return-wide p1
.end method
