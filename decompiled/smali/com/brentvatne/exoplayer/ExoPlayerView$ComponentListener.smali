.class final Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
.implements Lcom/google/android/exoplayer2/text/TextRenderer$Output;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/ExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ExoPlayerView$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;-><init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$100(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$400(Lcom/brentvatne/exoplayer/ExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$500(Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 216
    iget-object p3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {p3}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$200(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getAspectRatio()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$200(Lcom/brentvatne/exoplayer/ExoPlayerView;)Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;

    move-result-object v0

    if-nez p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->setAspectRatio(F)V

    if-eqz p3, :cond_2

    .line 221
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$ComponentListener;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->access$300(Lcom/brentvatne/exoplayer/ExoPlayerView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
