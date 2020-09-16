.class public Lorg/reactnative/camera/events/PictureSavedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PictureSavedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lorg/reactnative/camera/events/PictureSavedEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lorg/reactnative/camera/events/PictureSavedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResponse:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lorg/reactnative/camera/events/PictureSavedEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(ILcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 28
    iput-object p2, p0, Lorg/reactnative/camera/events/PictureSavedEvent;->mResponse:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method

.method public static obtain(ILcom/facebook/react/bridge/WritableMap;)Lorg/reactnative/camera/events/PictureSavedEvent;
    .locals 1

    .line 18
    sget-object v0, Lorg/reactnative/camera/events/PictureSavedEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactnative/camera/events/PictureSavedEvent;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lorg/reactnative/camera/events/PictureSavedEvent;

    invoke-direct {v0}, Lorg/reactnative/camera/events/PictureSavedEvent;-><init>()V

    .line 22
    :cond_0
    invoke-direct {v0, p0, p1}, Lorg/reactnative/camera/events/PictureSavedEvent;->init(ILcom/facebook/react/bridge/WritableMap;)V

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lorg/reactnative/camera/events/PictureSavedEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lorg/reactnative/camera/events/PictureSavedEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/reactnative/camera/events/PictureSavedEvent;->mResponse:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/reactnative/camera/events/PictureSavedEvent;->mResponse:Lcom/facebook/react/bridge/WritableMap;

    const-string v1, "data"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit16 v0, v0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
