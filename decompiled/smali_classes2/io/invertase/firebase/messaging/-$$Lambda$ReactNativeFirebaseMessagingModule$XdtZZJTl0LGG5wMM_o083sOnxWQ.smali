.class public final synthetic Lio/invertase/firebase/messaging/-$$Lambda$ReactNativeFirebaseMessagingModule$XdtZZJTl0LGG5wMM_o083sOnxWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/messaging/-$$Lambda$ReactNativeFirebaseMessagingModule$XdtZZJTl0LGG5wMM_o083sOnxWQ;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/invertase/firebase/messaging/-$$Lambda$ReactNativeFirebaseMessagingModule$XdtZZJTl0LGG5wMM_o083sOnxWQ;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0}, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingModule;->lambda$sendMessage$8(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
