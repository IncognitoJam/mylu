.class public Lorg/reactnative/camera/events/CameraMountErrorEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "CameraMountErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lorg/reactnative/camera/events/CameraMountErrorEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lorg/reactnative/camera/events/CameraMountErrorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lorg/reactnative/camera/events/CameraMountErrorEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 28
    iput-object p2, p0, Lorg/reactnative/camera/events/CameraMountErrorEvent;->mError:Ljava/lang/String;

    return-void
.end method

.method public static obtain(ILjava/lang/String;)Lorg/reactnative/camera/events/CameraMountErrorEvent;
    .locals 1

    .line 18
    sget-object v0, Lorg/reactnative/camera/events/CameraMountErrorEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactnative/camera/events/CameraMountErrorEvent;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lorg/reactnative/camera/events/CameraMountErrorEvent;

    invoke-direct {v0}, Lorg/reactnative/camera/events/CameraMountErrorEvent;-><init>()V

    .line 22
    :cond_0
    invoke-direct {v0, p0, p1}, Lorg/reactnative/camera/events/CameraMountErrorEvent;->init(ILjava/lang/String;)V

    return-object v0
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 47
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/reactnative/camera/events/CameraMountErrorEvent;->mError:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lorg/reactnative/camera/events/CameraMountErrorEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lorg/reactnative/camera/events/CameraMountErrorEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/reactnative/camera/events/CameraMountErrorEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
