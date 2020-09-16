.class public Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactExoplayerViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROP_BUFFER_CONFIG:Ljava/lang/String; = "bufferConfig"

.field private static final PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:Ljava/lang/String; = "bufferForPlaybackAfterRebufferMs"

.field private static final PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_MS:Ljava/lang/String; = "bufferForPlaybackMs"

.field private static final PROP_BUFFER_CONFIG_MAX_BUFFER_MS:Ljava/lang/String; = "maxBufferMs"

.field private static final PROP_BUFFER_CONFIG_MIN_BUFFER_MS:Ljava/lang/String; = "minBufferMs"

.field private static final PROP_CONTROLS:Ljava/lang/String; = "controls"

.field private static final PROP_DISABLE_FOCUS:Ljava/lang/String; = "disableFocus"

.field private static final PROP_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final PROP_HIDE_SHUTTER_VIEW:Ljava/lang/String; = "hideShutterView"

.field private static final PROP_MAXIMUM_BIT_RATE:Ljava/lang/String; = "maxBitRate"

.field private static final PROP_MIN_LOAD_RETRY_COUNT:Ljava/lang/String; = "minLoadRetryCount"

.field private static final PROP_MUTED:Ljava/lang/String; = "muted"

.field private static final PROP_PAUSED:Ljava/lang/String; = "paused"

.field private static final PROP_PLAY_IN_BACKGROUND:Ljava/lang/String; = "playInBackground"

.field private static final PROP_PROGRESS_UPDATE_INTERVAL:Ljava/lang/String; = "progressUpdateInterval"

.field private static final PROP_RATE:Ljava/lang/String; = "rate"

.field private static final PROP_REPEAT:Ljava/lang/String; = "repeat"

.field private static final PROP_REPORT_BANDWIDTH:Ljava/lang/String; = "reportBandwidth"

.field private static final PROP_RESIZE_MODE:Ljava/lang/String; = "resizeMode"

.field private static final PROP_SEEK:Ljava/lang/String; = "seek"

.field private static final PROP_SELECTED_AUDIO_TRACK:Ljava/lang/String; = "selectedAudioTrack"

.field private static final PROP_SELECTED_AUDIO_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_AUDIO_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SELECTED_TEXT_TRACK:Ljava/lang/String; = "selectedTextTrack"

.field private static final PROP_SELECTED_TEXT_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_TEXT_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SELECTED_VIDEO_TRACK:Ljava/lang/String; = "selectedVideoTrack"

.field private static final PROP_SELECTED_VIDEO_TRACK_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SELECTED_VIDEO_TRACK_VALUE:Ljava/lang/String; = "value"

.field private static final PROP_SRC:Ljava/lang/String; = "src"

.field private static final PROP_SRC_HEADERS:Ljava/lang/String; = "requestHeaders"

.field private static final PROP_SRC_TYPE:Ljava/lang/String; = "type"

.field private static final PROP_SRC_URI:Ljava/lang/String; = "uri"

.field private static final PROP_TEXT_TRACKS:Ljava/lang/String; = "textTracks"

.field private static final PROP_USE_TEXTURE_VIEW:Ljava/lang/String; = "useTextureView"

.field private static final PROP_VOLUME:Ljava/lang/String; = "volume"

.field private static final REACT_CLASS:Ljava/lang/String; = "RCTVideo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method

.method private convertToIntDef(Ljava/lang/String;)I
    .locals 1

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 300
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ResizeMode;->toResizeMode(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startsWithValidScheme(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "asset://"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static toStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 4
    .param p0    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 316
    :cond_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 320
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/brentvatne/exoplayer/ReactExoplayerView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/brentvatne/exoplayer/ReactExoplayerView;
    .locals 1

    .line 70
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-direct {v0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 80
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/brentvatne/exoplayer/VideoEventEmitter;->Events:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "registrationName"

    .line 82
    invoke-static {v5, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "ScaleNone"

    const-string v3, "ScaleAspectFit"

    const-string v5, "ScaleToFill"

    const-string v7, "ScaleAspectFill"

    .line 89
    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTVideo"

    return-object v0
.end method

.method public minLoadRetryCount(Lcom/brentvatne/exoplayer/ReactExoplayerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minLoadRetryCount"
    .end annotation

    .line 237
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMinLoadRetryCountModifier(I)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->onDropViewInstance(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanUpResources()V

    return-void
.end method

.method public setBufferConfig(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bufferConfig"
    .end annotation

    if-eqz p2, :cond_4

    const-string v0, "minBufferMs"

    .line 277
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a98

    :goto_0
    const-string v1, "maxBufferMs"

    .line 279
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const v1, 0xc350

    :goto_1
    const-string v2, "bufferForPlaybackMs"

    .line 281
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x9c4

    :goto_2
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 283
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_3

    :cond_3
    const/16 p2, 0x1388

    .line 285
    :goto_3
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setBufferConfig(IIII)V

    :cond_4
    return-void
.end method

.method public setControls(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "controls"
    .end annotation

    .line 267
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    return-void
.end method

.method public setDisableFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disableFocus"
    .end annotation

    .line 247
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setDisableFocus(Z)V

    return-void
.end method

.method public setFullscreen(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "fullscreen"
    .end annotation

    .line 252
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    return-void
.end method

.method public setHideShutterView(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "hideShutterView"
    .end annotation

    .line 262
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setHideShutterView(Z)V

    return-void
.end method

.method public setMaxBitRate(Lcom/brentvatne/exoplayer/ReactExoplayerView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxBitRate"
    .end annotation

    .line 232
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMaxBitRateModifier(I)V

    return-void
.end method

.method public setMuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "muted"
    .end annotation

    .line 202
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMutedModifier(Z)V

    return-void
.end method

.method public setPaused(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "paused"
    .end annotation

    .line 197
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method public setPlayInBackground(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "playInBackground"
    .end annotation

    .line 242
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayInBackground(Z)V

    return-void
.end method

.method public setProgressUpdateInterval(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 250.0f
        name = "progressUpdateInterval"
    .end annotation

    .line 212
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setProgressUpdateInterval(F)V

    return-void
.end method

.method public setPropTextTracks(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textTracks"
    .end annotation

    .line 192
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setTextTracks(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setRate(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rate"
    .end annotation

    .line 227
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRateModifier(F)V

    return-void
.end method

.method public setRepeat(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "repeat"
    .end annotation

    .line 144
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRepeatModifier(Z)V

    return-void
.end method

.method public setReportBandwidth(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "reportBandwidth"
    .end annotation

    .line 217
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setReportBandwidth(Z)V

    return-void
.end method

.method public setResizeMode(Lcom/brentvatne/exoplayer/ReactExoplayerView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    .line 139
    invoke-direct {p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->convertToIntDef(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setResizeModeModifier(I)V

    return-void
.end method

.method public setSeek(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "seek"
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    .line 222
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    return-void
.end method

.method public setSelectedAudioTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedAudioTrack"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v1, "type"

    .line 167
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string/jumbo v2, "value"

    .line 169
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object p2

    move-object v0, p2

    :cond_1
    move-object p2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 172
    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedAudioTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSelectedTextTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedTextTrack"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v1, "type"

    .line 181
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string/jumbo v2, "value"

    .line 183
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object p2

    move-object v0, p2

    :cond_1
    move-object p2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 186
    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTextTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSelectedVideoTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedVideoTrack"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v1, "type"

    .line 153
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string/jumbo v2, "value"

    .line 155
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object p2

    move-object v0, p2

    :cond_1
    move-object p2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 158
    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedVideoTrack(Ljava/lang/String;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setSrc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uri"

    .line 100
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string/jumbo v2, "type"

    .line 101
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v4, "requestHeaders"

    .line 102
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    invoke-static {p2}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->toStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v3

    .line 105
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 109
    :cond_3
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;->startsWithValidScheme(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 110
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 113
    invoke-virtual {p1, p2, v2, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSrc(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    .line 116
    invoke-virtual {p2, v1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_5

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "raw"

    .line 122
    invoke-virtual {p2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_5
    if-lez p2, :cond_6

    .line 129
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 131
    invoke-virtual {p1, p2, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRawSrc(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setUseTextureView(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "useTextureView"
    .end annotation

    .line 257
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setUseTextureView(Z)V

    return-void
.end method

.method public setVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "volume"
    .end annotation

    .line 207
    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setVolumeModifier(F)V

    return-void
.end method
