.class public Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReactNativeFirebaseMessagingReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseMsgReceiver"

.field static notifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "RNFirebaseMsgReceiver"

    const-string v1, "broadcast received for message"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;

    move-result-object p2

    .line 32
    invoke-static {p1}, Lio/invertase/firebase/common/SharedUtils;->isAppInForeground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingSerializer;->remoteMessageToEvent(Lcom/google/firebase/messaging/RemoteMessage;Ljava/lang/Boolean;)Lio/invertase/firebase/common/ReactNativeFirebaseEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/invertase/firebase/common/ReactNativeFirebaseEventEmitter;->sendEvent(Lio/invertase/firebase/interfaces/NativeEvent;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    sget-object p2, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v2, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingHeadlessService;

    invoke-direct {p2, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "message"

    .line 49
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 52
    invoke-static {p1}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Background messages only work if the message priority is set to \'high\'"

    .line 56
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
