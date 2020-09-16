.class public Lcom/facebook/react/fabric/events/EventBeatManager;
.super Ljava/lang/Object;
.source "EventBeatManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/facebook/react/fabric/events/EventBeatManager;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/events/EventBeatManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 35
    iput-object p1, p0, Lcom/facebook/react/fabric/events/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/fabric/events/EventBeatManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventBeatManager;->beat()V

    return-void
.end method

.method private native beat()V
.end method

.method private dispatchEventsAsync()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isOnJSQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventBeatManager;->beat()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/events/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/facebook/react/fabric/events/EventBeatManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/fabric/events/EventBeatManager$1;-><init>(Lcom/facebook/react/fabric/events/EventBeatManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public onBatchEventDispatched()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/facebook/react/fabric/events/EventBeatManager;->dispatchEventsAsync()V

    return-void
.end method
