.class Lcom/brentvatne/exoplayer/VideoEventEmitter;
.super Ljava/lang/Object;
.source "VideoEventEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/VideoEventEmitter$VideoEvents;
    }
.end annotation


# static fields
.field private static final EVENT_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "onVideoAudioBecomingNoisy"

.field private static final EVENT_AUDIO_FOCUS_CHANGE:Ljava/lang/String; = "onAudioFocusChanged"

.field private static final EVENT_BANDWIDTH:Ljava/lang/String; = "onVideoBandwidthUpdate"

.field private static final EVENT_BUFFER:Ljava/lang/String; = "onVideoBuffer"

.field private static final EVENT_END:Ljava/lang/String; = "onVideoEnd"

.field private static final EVENT_ERROR:Ljava/lang/String; = "onVideoError"

.field private static final EVENT_FULLSCREEN_DID_DISMISS:Ljava/lang/String; = "onVideoFullscreenPlayerDidDismiss"

.field private static final EVENT_FULLSCREEN_DID_PRESENT:Ljava/lang/String; = "onVideoFullscreenPlayerDidPresent"

.field private static final EVENT_FULLSCREEN_WILL_DISMISS:Ljava/lang/String; = "onVideoFullscreenPlayerWillDismiss"

.field private static final EVENT_FULLSCREEN_WILL_PRESENT:Ljava/lang/String; = "onVideoFullscreenPlayerWillPresent"

.field private static final EVENT_IDLE:Ljava/lang/String; = "onVideoIdle"

.field private static final EVENT_LOAD:Ljava/lang/String; = "onVideoLoad"

.field private static final EVENT_LOAD_START:Ljava/lang/String; = "onVideoLoadStart"

.field private static final EVENT_PLAYBACK_RATE_CHANGE:Ljava/lang/String; = "onPlaybackRateChange"

.field private static final EVENT_PROGRESS:Ljava/lang/String; = "onVideoProgress"

.field private static final EVENT_PROP_AUDIO_TRACKS:Ljava/lang/String; = "audioTracks"

.field private static final EVENT_PROP_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final EVENT_PROP_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final EVENT_PROP_DURATION:Ljava/lang/String; = "duration"

.field private static final EVENT_PROP_ERROR:Ljava/lang/String; = "error"

.field private static final EVENT_PROP_ERROR_EXCEPTION:Ljava/lang/String; = "errorException"

.field private static final EVENT_PROP_ERROR_STRING:Ljava/lang/String; = "errorString"

.field private static final EVENT_PROP_FAST_FORWARD:Ljava/lang/String; = "canPlayFastForward"

.field private static final EVENT_PROP_HAS_AUDIO_FOCUS:Ljava/lang/String; = "hasAudioFocus"

.field private static final EVENT_PROP_HEIGHT:Ljava/lang/String; = "height"

.field private static final EVENT_PROP_IS_BUFFERING:Ljava/lang/String; = "isBuffering"

.field private static final EVENT_PROP_NATURAL_SIZE:Ljava/lang/String; = "naturalSize"

.field private static final EVENT_PROP_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final EVENT_PROP_PLAYABLE_DURATION:Ljava/lang/String; = "playableDuration"

.field private static final EVENT_PROP_PLAYBACK_RATE:Ljava/lang/String; = "playbackRate"

.field private static final EVENT_PROP_REVERSE:Ljava/lang/String; = "canPlayReverse"

.field private static final EVENT_PROP_SEEKABLE_DURATION:Ljava/lang/String; = "seekableDuration"

.field private static final EVENT_PROP_SEEK_TIME:Ljava/lang/String; = "seekTime"

.field private static final EVENT_PROP_SLOW_FORWARD:Ljava/lang/String; = "canPlaySlowForward"

.field private static final EVENT_PROP_SLOW_REVERSE:Ljava/lang/String; = "canPlaySlowReverse"

.field private static final EVENT_PROP_STEP_BACKWARD:Ljava/lang/String; = "canStepBackward"

.field private static final EVENT_PROP_STEP_FORWARD:Ljava/lang/String; = "canStepForward"

.field private static final EVENT_PROP_TEXT_TRACKS:Ljava/lang/String; = "textTracks"

.field private static final EVENT_PROP_TIMED_METADATA:Ljava/lang/String; = "metadata"

.field private static final EVENT_PROP_VIDEO_TRACKS:Ljava/lang/String; = "videoTracks"

.field private static final EVENT_PROP_WIDTH:Ljava/lang/String; = "width"

.field private static final EVENT_READY:Ljava/lang/String; = "onReadyForDisplay"

.field private static final EVENT_RESUME:Ljava/lang/String; = "onPlaybackResume"

.field private static final EVENT_SEEK:Ljava/lang/String; = "onVideoSeek"

.field private static final EVENT_STALLED:Ljava/lang/String; = "onPlaybackStalled"

.field private static final EVENT_TIMED_METADATA:Ljava/lang/String; = "onTimedMetadata"

.field static final Events:[Ljava/lang/String;


# instance fields
.field private final eventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "onVideoLoadStart"

    const-string v1, "onVideoLoad"

    const-string v2, "onVideoError"

    const-string v3, "onVideoProgress"

    const-string v4, "onVideoSeek"

    const-string v5, "onVideoEnd"

    const-string v6, "onVideoFullscreenPlayerWillPresent"

    const-string v7, "onVideoFullscreenPlayerDidPresent"

    const-string v8, "onVideoFullscreenPlayerWillDismiss"

    const-string v9, "onVideoFullscreenPlayerDidDismiss"

    const-string v10, "onPlaybackStalled"

    const-string v11, "onPlaybackResume"

    const-string v12, "onReadyForDisplay"

    const-string v13, "onVideoBuffer"

    const-string v14, "onVideoIdle"

    const-string v15, "onTimedMetadata"

    const-string v16, "onVideoAudioBecomingNoisy"

    const-string v17, "onAudioFocusChanged"

    const-string v18, "onPlaybackRateChange"

    const-string v19, "onVideoBandwidthUpdate"

    .line 51
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->Events:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->viewId:I

    .line 26
    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object p1, p0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->eventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-void
.end method

.method private receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->eventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget v1, p0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->viewId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method audioBecomingNoisy()V
    .locals 2

    const-string v0, "onVideoAudioBecomingNoisy"

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method audioFocusChanged(Z)V
    .locals 2

    .line 286
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "hasAudioFocus"

    .line 287
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onAudioFocusChanged"

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method bandwidthReport(D)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "bitrate"

    .line 182
    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVideoBandwidthUpdate"

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method buffering(Z)V
    .locals 2

    .line 198
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "isBuffering"

    .line 199
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onVideoBuffer"

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method end()V
    .locals 2

    const-string v0, "onVideoEnd"

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 228
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "errorString"

    .line 229
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorException"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "error"

    .line 232
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p2, "onVideoError"

    .line 233
    invoke-direct {p0, p2, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method fullscreenDidDismiss()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerDidDismiss"

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method fullscreenDidPresent()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerDidPresent"

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method fullscreenWillDismiss()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerWillDismiss"

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method fullscreenWillPresent()V
    .locals 2

    const-string v0, "onVideoFullscreenPlayerWillPresent"

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method idle()V
    .locals 2

    const-string v0, "onVideoIdle"

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method load(DDIILcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 4

    .line 142
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "duration"

    .line 143
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    div-double/2addr p3, v1

    const-string p1, "currentTime"

    .line 144
    invoke-interface {v0, p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 146
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string/jumbo p2, "width"

    .line 147
    invoke-interface {p1, p2, p5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "height"

    .line 148
    invoke-interface {p1, p2, p6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "orientation"

    if-le p5, p6, :cond_0

    const-string p3, "landscape"

    .line 150
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "portrait"

    .line 152
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "naturalSize"

    .line 154
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo p1, "videoTracks"

    .line 156
    invoke-interface {v0, p1, p9}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p1, "audioTracks"

    .line 157
    invoke-interface {v0, p1, p7}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string/jumbo p1, "textTracks"

    .line 158
    invoke-interface {v0, p1, p8}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p1, "canPlayFastForward"

    const/4 p2, 0x1

    .line 161
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlaySlowForward"

    .line 162
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlaySlowReverse"

    .line 163
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "canPlayReverse"

    .line 164
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepBackward"

    .line 166
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "canStepForward"

    .line 167
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onVideoLoad"

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method loadStart()V
    .locals 2

    const-string v0, "onVideoLoadStart"

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method playbackRateChange(F)V
    .locals 3

    .line 237
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    float-to-double v1, p1

    const-string p1, "playbackRate"

    .line 238
    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onPlaybackRateChange"

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method progressChanged(DDD)V
    .locals 4

    .line 173
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "currentTime"

    .line 174
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    div-double/2addr p3, v1

    const-string p1, "playableDuration"

    .line 175
    invoke-interface {v0, p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    div-double/2addr p5, v1

    const-string p1, "seekableDuration"

    .line 176
    invoke-interface {v0, p1, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVideoProgress"

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method ready()V
    .locals 2

    const-string v0, "onReadyForDisplay"

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method seek(JJ)V
    .locals 4

    .line 187
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    const-string v3, "currentTime"

    .line 188
    invoke-interface {v0, v3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    long-to-double p1, p3

    div-double/2addr p1, v1

    const-string p3, "seekTime"

    .line 189
    invoke-interface {v0, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onVideoSeek"

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method setViewId(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/brentvatne/exoplayer/VideoEventEmitter;->viewId:I

    return-void
.end method

.method timedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 7

    .line 243
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 247
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 249
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-string/jumbo v4, "value"

    const-string v5, "identifier"

    if-eqz v3, :cond_1

    .line 251
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 255
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    .line 256
    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 257
    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 260
    :goto_1
    iget-object v2, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 263
    invoke-interface {v6, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {v6, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 268
    :cond_1
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    if-eqz v3, :cond_2

    .line 270
    check-cast v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 272
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 273
    iget-object v6, v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "metadata"

    .line 281
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v0, "onTimedMetadata"

    .line 282
    invoke-direct {p0, v0, p1}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->receiveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
