.class public final Lcom/brentvatne/exoplayer/ExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "ExoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;
    }
.end annotation


# instance fields
.field private final componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

.field private context:Landroid/content/Context;

.field private hideShutterView:Z

.field private final layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final measureAndLayout:Ljava/lang/Runnable;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final shutterView:Landroid/view/View;

.field private final subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private surfaceView:Landroid/view/View;

.field private useTextureView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    .line 176
    new-instance v0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ExoPlayerView$1;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 61
    new-instance v0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ExoPlayerView$1;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 66
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    new-instance v1, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-direct {v1, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    .line 68
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v1, v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    const v2, 0x106000c

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 75
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 77
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 79
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView()V

    .line 81
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1, p2, v2}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2, v1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {p0, p1, p3, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brentvatne/exoplayer/ExoPlayerView;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brentvatne/exoplayer/ExoPlayerView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateForCurrentTrackSelections()V

    return-void
.end method

.method private setVideoView()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 90
    :cond_0
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateForCurrentTrackSelections()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v2, v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateShutterViewVisibility()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSurfaceView()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iput-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->removeViewAt(I)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v1, v3}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setVideoView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public setHideShutterView(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideShutterView:Z

    .line 173
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateShutterViewVisibility()V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 127
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 128
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 129
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 132
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->shutterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setVideoView()V

    .line 135
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 136
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 137
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->componentListener:Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_2
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout:Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 149
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    if-eq p1, v0, :cond_0

    .line 166
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView;->useTextureView:Z

    .line 167
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView()V

    :cond_0
    return-void
.end method
