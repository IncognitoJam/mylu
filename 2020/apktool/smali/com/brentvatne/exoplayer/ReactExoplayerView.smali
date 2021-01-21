.class Lcom/brentvatne/exoplayer/ReactExoplayerView;
.super Landroid/widget/FrameLayout;
.source "ReactExoplayerView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
.implements Lcom/brentvatne/receiver/BecomingNoisyListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

.field private static final REPORT_BANDWIDTH:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactExoplayerView"


# instance fields
.field private final audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

.field private final audioManager:Landroid/media/AudioManager;

.field private audioTrackType:Ljava/lang/String;

.field private audioTrackValue:Lcom/facebook/react/bridge/Dynamic;

.field private audioTracks:Lcom/facebook/react/bridge/ReadableArray;

.field private audioVolume:F

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private controls:Z

.field private disableFocus:Z

.field private final eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

.field private eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

.field private extension:Ljava/lang/String;

.field private isBuffering:Z

.field private isFullscreen:Z

.field private isInBackground:Z

.field private isPaused:Z

.field private loadVideoStarted:Z

.field private mProgressUpdateInterval:F

.field private mReportBandwidth:Z

.field private mainHandler:Landroid/os/Handler;

.field private maxBitRate:I

.field private maxBufferMs:I

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private minBufferMs:I

.field private minLoadRetryCount:I

.field private playInBackground:Z

.field private playPauseControlContainer:Landroid/view/View;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private playerNeedsSource:Z

.field private final progressHandler:Landroid/os/Handler;

.field private rate:F

.field private repeat:Z

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resumePosition:J

.field private resumeWindow:I

.field private seekTime:J

.field private srcUri:Landroid/net/Uri;

.field private textTrackType:Ljava/lang/String;

.field private textTrackValue:Lcom/facebook/react/bridge/Dynamic;

.field private textTracks:Lcom/facebook/react/bridge/ReadableArray;

.field private final themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private videoTrackType:Ljava/lang/String;

.field private videoTrackValue:Lcom/facebook/react/bridge/Dynamic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 95
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 96
    sget-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 119
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    .line 120
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    const/4 v0, 0x3

    .line 121
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 123
    iput-wide v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTime:J

    const/16 v1, 0x3a98

    .line 125
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minBufferMs:I

    const v1, 0xc350

    .line 126
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBufferMs:I

    const/16 v1, 0x9c4

    .line 127
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackMs:I

    const/16 v1, 0x1388

    .line 128
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackAfterRebufferMs:I

    const/high16 v1, 0x437a0000    # 250.0f

    .line 143
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    .line 144
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    .line 146
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    .line 155
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 179
    new-instance v0, Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-direct {v0, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    .line 181
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->createViews()V

    const-string v0, "audio"

    .line 183
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    .line 184
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 185
    new-instance p1, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p1, v0}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    .line 187
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method static synthetic access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/VideoEventEmitter;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minBufferMs:I

    return p0
.end method

.method static synthetic access$1100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBufferMs:I

    return p0
.end method

.method static synthetic access$1200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackMs:I

    return p0
.end method

.method static synthetic access$1300(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackAfterRebufferMs:I

    return p0
.end method

.method static synthetic access$1400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/ExoPlayerView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    return p0
.end method

.method static synthetic access$200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return p0
.end method

.method static synthetic access$2000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/net/Uri;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildTextSources()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->extension:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    return p0
.end method

.method static synthetic access$2500(Lcom/brentvatne/exoplayer/ReactExoplayerView;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerControl()V

    return-void
.end method

.method static synthetic access$2800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->applyModifiers()V

    return-void
.end method

.method static synthetic access$300(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->togglePlayerControlVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/Player$EventListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .locals 1

    .line 79
    sget-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p0
.end method

.method static synthetic access$802(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p1
.end method

.method static synthetic access$900(Lcom/brentvatne/exoplayer/ReactExoplayerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    return p0
.end method

.method private addPlayerControl()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 321
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 324
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyModifiers()V
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRepeatModifier(Z)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestHeaders:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 27

    move-object/from16 v0, p0

    .line 402
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 402
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 419
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v7, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    return-object v1

    .line 422
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget v6, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    iget-object v7, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object v1

    .line 406
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v11

    new-instance v12, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v12, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget v13, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    const-wide/16 v14, 0x7530

    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const/16 v17, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object v1

    .line 411
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v20

    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    const-wide/16 v23, 0x7530

    iget-object v4, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, p1

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v25, v4

    invoke-direct/range {v18 .. v26}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-object v1
.end method

.method private buildTextSource(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 7

    const/4 v0, -0x1

    .line 449
    invoke-static {p1, p3, v0, p4}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 450
    new-instance p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V

    return-object p1
.end method

.method private buildTextSources()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/facebook/react/bridge/ReadableArray;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 433
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v3, "language"

    .line 435
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    .line 436
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 437
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v5, "uri"

    .line 438
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "type"

    .line 439
    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildTextSource(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 442
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private clearResumePosition()V
    .locals 2

    const/4 v0, -0x1

    .line 546
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 547
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    .line 201
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    sget-object v1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    if-eq v0, v1, :cond_0

    .line 202
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 205
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    new-instance v1, Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 209
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAudioTrackInfo()Lcom/facebook/react/bridge/WritableArray;
    .locals 11

    .line 655
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 657
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 658
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v3

    if-eqz v1, :cond_4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_4

    .line 663
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 664
    :goto_0
    iget v6, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_4

    .line 665
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 666
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    const-string v8, "index"

    .line 667
    invoke-interface {v7, v8, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 668
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-string v9, ""

    if-eqz v8, :cond_1

    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    const-string/jumbo v10, "title"

    invoke-interface {v7, v10, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v10, "type"

    invoke-interface {v7, v10, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v8, v9

    :goto_2
    const-string v10, "language"

    invoke-interface {v7, v10, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget v8, v6, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ne v8, v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v2, [Ljava/lang/Object;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-float v6, v6

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v6, v10

    .line 672
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v3

    const-string v6, "%.2fMbps"

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v6, "bitrate"

    .line 671
    invoke-interface {v7, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method

.method private getGroupIndexForDefaultLocale(Lcom/google/android/exoplayer2/source/TrackGroupArray;)I
    .locals 6

    .line 1024
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1029
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1031
    :goto_0
    iget v4, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_3

    .line 1032
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 1033
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1034
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private getTextTrackInfo()Lcom/facebook/react/bridge/WritableArray;
    .locals 9

    .line 706
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 709
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 714
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 715
    :goto_0
    iget v4, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_3

    .line 716
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 717
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    const-string v6, "index"

    .line 718
    invoke-interface {v5, v6, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 719
    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-string v7, ""

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    const-string/jumbo v8, "title"

    invoke-interface {v5, v8, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v8, "type"

    invoke-interface {v5, v8, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v6, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    :cond_2
    const-string v4, "language"

    invoke-interface {v5, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getVideoTrackInfo()Lcom/facebook/react/bridge/WritableArray;
    .locals 11

    .line 678
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 681
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_7

    .line 686
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 687
    :goto_0
    iget v5, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_7

    .line 688
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    .line 690
    :goto_1
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_6

    .line 691
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 692
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 693
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v9, v3, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_2
    const-string/jumbo v10, "width"

    invoke-interface {v8, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 694
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v9, v3, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_3
    const-string v10, "height"

    invoke-interface {v8, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 695
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ne v9, v3, :cond_3

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    :goto_4
    const-string v10, "bitrate"

    invoke-interface {v8, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 696
    iget-object v9, v7, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const-string v9, ""

    :goto_5
    const-string v10, "codecs"

    invoke-interface {v8, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v9, v7, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 698
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_5
    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    :goto_6
    const-string/jumbo v9, "trackId"

    .line 697
    invoke-interface {v8, v9, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_7
    return-object v0
.end method

.method private initializePlayer()V
    .locals 4

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;

    invoke-direct {v1, p0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initializePlayerControl()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 290
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    .line 291
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_play_pause_container:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    .line 310
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private static isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 2

    .line 830
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 835
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 838
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v1
.end method

.method private onBuffering(Z)V
    .locals 1

    .line 728
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 732
    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    if-eqz p1, :cond_1

    .line 734
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->buffering(Z)V

    goto :goto_0

    .line 736
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->buffering(Z)V

    :goto_0
    return-void
.end method

.method private onStopPlayback()V
    .locals 2

    .line 532
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    .line 535
    :cond_0
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    .line 536
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private pausePlayback()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    .line 523
    :cond_0
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private reLayout(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private releasePlayer()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    .line 456
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 457
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    .line 458
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 459
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 463
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->removeListener()V

    .line 464
    sget-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method private reloadSource()V
    .locals 1

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 906
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method private requestAudioFocus()Z
    .locals 3

    .line 468
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private setPlayWhenReady(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 485
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startPlayback()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    .line 512
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    if-nez v0, :cond_4

    .line 513
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    :cond_4
    return-void
.end method

.method private startProgressHandler()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopPlayback()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    .line 528
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    return-void
.end method

.method private togglePlayerControlVisibility()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    :goto_0
    return-void
.end method

.method private updateResumePosition()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    .line 541
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private videoLoaded()V
    .locals 13

    .line 641
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    .line 643
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Lcom/facebook/react/bridge/Dynamic;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedAudioTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    .line 644
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Lcom/facebook/react/bridge/Dynamic;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedVideoTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    .line 645
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Lcom/facebook/react/bridge/Dynamic;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTextTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    .line 646
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 647
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->width:I

    move v8, v2

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 648
    iget v0, v1, Lcom/google/android/exoplayer2/Format;->height:I

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 649
    :goto_1
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-double v4, v0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-double v6, v0

    .line 650
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getAudioTrackInfo()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTextTrackInfo()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfo()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v12

    .line 649
    invoke-virtual/range {v3 .. v12}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->load(DDIILcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->stopPlayback()V

    return-void
.end method

.method public getTrackRendererIndex(I)I
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 846
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 217
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->audioBecomingNoisy()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->audioFocusChanged(Z)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->audioFocusChanged(Z)V

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    const/4 v2, -0x3

    if-ne p1, v2, :cond_2

    .line 579
    iget p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 582
    iget p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 0

    .line 260
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    long-to-double p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->bandwidthReport(D)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->stopPlayback()V

    return-void
.end method

.method public onHostPause()V
    .locals 1

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    .line 242
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->timedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->playbackRateChange(F)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 6

    .line 791
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 792
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v0

    .line 793
    instance-of v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v3, :cond_4

    .line 795
    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 797
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    if-eqz v2, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/brentvatne/react/R$string;->error_querying_decoders:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/brentvatne/react/R$string;->error_no_secure_decoder:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/brentvatne/react/R$string;->error_no_decoder:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/brentvatne/react/R$string;->error_instantiating_decoder:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 813
    :cond_3
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_4

    .line 814
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    .line 815
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brentvatne/react/R$string;->unrecognized_media_format:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v2, :cond_5

    .line 818
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v3, v2, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 820
    :cond_5
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 821
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 822
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    .line 823
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    goto :goto_3

    .line 825
    :cond_6
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    :goto_3
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", playbackState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "unknown"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 625
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ended"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 626
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p2}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->end()V

    .line 627
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    goto :goto_0

    .line 614
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ready"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 615
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p2}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->ready()V

    const/4 p2, 0x0

    .line 616
    invoke-direct {p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    .line 617
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->startProgressHandler()V

    .line 618
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoLoaded()V

    .line 620
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p2, :cond_4

    .line 621
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    goto :goto_0

    .line 610
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "buffering"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    goto :goto_0

    .line 606
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "idle"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 607
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p2}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->idle()V

    :cond_4
    :goto_0
    const-string p2, "ReactExoplayerView"

    .line 633
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    :cond_0
    if-nez p1, :cond_1

    .line 750
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 751
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 752
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->end()V

    :cond_1
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 5

    .line 763
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->seek(JJ)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 764
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTime:J

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1088
    iput-wide p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTime:J

    .line 1089
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setBufferConfig(IIII)V
    .locals 0

    .line 1166
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minBufferMs:I

    .line 1167
    iput p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBufferMs:I

    .line 1168
    iput p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackMs:I

    .line 1169
    iput p4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferForPlaybackAfterRebufferMs:I

    .line 1170
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    .line 1171
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method public setControls(Z)V
    .locals 1

    .line 1180
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    .line 1181
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1183
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addPlayerControl()V

    goto :goto_0

    .line 1185
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1187
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisableFocus(Z)V
    .locals 0

    .line 1121
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    .line 1125
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1128
    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    .line 1130
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1134
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1135
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1137
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz v0, :cond_3

    .line 1138
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1006

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    .line 1146
    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->fullscreenWillPresent()V

    .line 1147
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1148
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->fullscreenDidPresent()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->fullscreenWillDismiss()V

    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1153
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->fullscreenDidDismiss()V

    :goto_1
    return-void
.end method

.method public setHideShutterView(Z)V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setHideShutterView(Z)V

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 194
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/exoplayer/VideoEventEmitter;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->setViewId(I)V

    return-void
.end method

.method public setMaxBitRateModifier(I)V
    .locals 2

    .line 1103
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    .line 1104
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    .line 1105
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v1, :cond_0

    const v1, 0x7fffffff

    .line 1106
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 1105
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_1
    return-void
.end method

.method public setMinLoadRetryCountModifier(I)V
    .locals 0

    .line 1111
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->minLoadRetryCount:I

    .line 1112
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    .line 1113
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    return-void
.end method

.method public setMutedModifier(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1072
    :goto_0
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    .line 1073
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    .line 1074
    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setPausedModifier(Z)V
    .locals 1

    .line 1061
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    .line 1062
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->startPlayback()V

    goto :goto_0

    .line 1066
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pausePlayback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayInBackground(Z)V
    .locals 0

    .line 1117
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    return-void
.end method

.method public setProgressUpdateInterval(F)V
    .locals 0

    .line 877
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return-void
.end method

.method public setRateModifier(F)V
    .locals 2

    .line 1094
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    .line 1096
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    .line 1097
    new-instance p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 1098
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setRawSrc(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 887
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 889
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    .line 890
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->extension:Ljava/lang/String;

    .line 891
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reloadSource()V

    :cond_1
    return-void
.end method

.method public setRepeatModifier(Z)V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 920
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 922
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 925
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    return-void
.end method

.method public setReportBandwidth(Z)V
    .locals 0

    .line 881
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    return-void
.end method

.method public setResizeModeModifier(I)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setResizeMode(I)V

    return-void
.end method

.method public setSelectedAudioTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    .line 1049
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    .line 1050
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Lcom/facebook/react/bridge/Dynamic;

    .line 1051
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Lcom/facebook/react/bridge/Dynamic;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSelectedTextTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    .line 1055
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    .line 1056
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Lcom/facebook/react/bridge/Dynamic;

    .line 1057
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Lcom/facebook/react/bridge/Dynamic;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSelectedTrack(ILjava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 10

    .line 929
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 930
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 934
    :cond_1
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 939
    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    const/4 v3, 0x1

    .line 941
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    .line 943
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string p2, "default"

    .line 947
    :cond_3
    iget-object v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v6

    .line 948
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v6

    .line 949
    invoke-virtual {v6, v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v6

    .line 950
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v6

    const-string v7, "disabled"

    .line 952
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 953
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    :cond_4
    const-string v7, "language"

    .line 955
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p2, 0x0

    .line 956
    :goto_0
    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p2, v3, :cond_f

    .line 957
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 958
    iget-object v7, v3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-interface {p3}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "title"

    .line 963
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 p2, 0x0

    .line 964
    :goto_1
    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p2, v3, :cond_f

    .line 965
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 966
    iget-object v7, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {p3}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_5

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    const-string v7, "index"

    .line 971
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 972
    invoke-interface {p3}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p2

    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p2, v3, :cond_f

    .line 973
    invoke-interface {p3}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p2

    goto :goto_5

    :cond_9
    const-string v7, "resolution"

    .line 975
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 976
    invoke-interface {p3}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p2

    const/4 p3, 0x0

    const/4 v3, -0x1

    .line 977
    :goto_2
    iget v7, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p3, v7, :cond_c

    .line 978
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v8, 0x0

    .line 979
    :goto_3
    iget v9, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_b

    .line 980
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 981
    iget v9, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v9, p2, :cond_a

    aput v8, v4, v5

    move v3, p3

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_c
    move p2, v3

    goto :goto_5

    :cond_d
    const/4 p2, 0x3

    if-ne v0, p2, :cond_e

    .line 988
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x12

    if-le p2, p3, :cond_e

    .line 990
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string p3, "captioning"

    .line 991
    invoke-virtual {p2, p3}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    if-eqz p2, :cond_f

    .line 992
    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 993
    invoke-direct {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Lcom/google/android/exoplayer2/source/TrackGroupArray;)I

    move-result p2

    goto :goto_5

    :cond_e
    if-ne v0, v3, :cond_f

    .line 996
    invoke-direct {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Lcom/google/android/exoplayer2/source/TrackGroupArray;)I

    move-result p2

    goto :goto_5

    :cond_f
    const/4 p2, -0x1

    :goto_5
    if-ne p2, v1, :cond_11

    const/4 p3, 0x2

    if-ne p1, p3, :cond_11

    .line 999
    iget p1, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz p1, :cond_11

    .line 1001
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    .line 1002
    iget p2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v4, p2, [I

    const/4 p2, 0x0

    .line 1004
    :goto_6
    iget p3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge p2, p3, :cond_10

    .line 1005
    aput p2, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    :cond_11
    if-ne p2, v1, :cond_12

    .line 1010
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    .line 1014
    :cond_12
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 1015
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    .line 1016
    invoke-virtual {p1, v0, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    new-instance p3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {p3, p2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 1017
    invoke-virtual {p1, v0, v2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    .line 1019
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 1020
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public setSelectedVideoTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    .line 1043
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    .line 1044
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Lcom/facebook/react/bridge/Dynamic;

    .line 1045
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Lcom/facebook/react/bridge/Dynamic;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSrc(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 863
    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 865
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->srcUri:Landroid/net/Uri;

    .line 866
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->extension:Ljava/lang/String;

    .line 867
    iput-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestHeaders:Ljava/util/Map;

    .line 868
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    sget-object p2, Lcom/brentvatne/exoplayer/ReactExoplayerView;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestHeaders:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 871
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reloadSource()V

    :cond_1
    return-void
.end method

.method public setTextTracks(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTracks:Lcom/facebook/react/bridge/ReadableArray;

    .line 901
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reloadSource()V

    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setUseTextureView(Z)V

    return-void
.end method

.method public setVolumeModifier(F)V
    .locals 1

    .line 1080
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    .line 1081
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    .line 1082
    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method
