.class Lcom/brentvatne/exoplayer/ReactExoplayerView$4;
.super Ljava/lang/Object;
.source "ReactExoplayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

.field final synthetic val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;


# direct methods
.method constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 348
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-static {}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$700()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 350
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    invoke-static {v2, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$802(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 351
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 352
    invoke-static {v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 354
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 v0, 0x10000

    invoke-direct {v4, v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    .line 355
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v5

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v6

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v7

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1300(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    .line 356
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$002(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 357
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 358
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    .line 359
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/ExoPlayerView;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 360
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1500(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {v0, v2}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->setListener(Lcom/brentvatne/receiver/BecomingNoisyListener;)V

    .line 361
    invoke-static {}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$700()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->val$self:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 362
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1600(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1700(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V

    .line 363
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1802(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)Z

    .line 365
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 366
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Ljava/util/ArrayList;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2300(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    .line 372
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 376
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 379
    new-instance v2, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 382
    :goto_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 384
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I

    move-result v5

    iget-object v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2500(Lcom/brentvatne/exoplayer/ReactExoplayerView;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    .line 386
    :cond_4
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 387
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$1802(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)Z

    .line 389
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/VideoEventEmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->loadStart()V

    .line 390
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2602(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)Z

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2700(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    .line 395
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    .line 396
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$2900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method
