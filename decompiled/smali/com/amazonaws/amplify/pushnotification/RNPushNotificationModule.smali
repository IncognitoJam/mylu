.class public Lcom/amazonaws/amplify/pushnotification/RNPushNotificationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPushNotificationModule.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RNPushNotificationModule"


# instance fields
.field private receiverRegistered:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string p1, "RNPushNotificationModule"

    const-string v0, "constructing RNPushNotificationModule"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationModule;->receiverRegistered:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNPushNotification"

    return-object v0
.end method

.method public getToken(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNPushNotificationModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "RNPushNotificationModule"

    const-string v2, "initializing RNPushNotificationModule"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationModule;->receiverRegistered:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationModule;->receiverRegistered:Z

    const-string v2, "registering receiver"

    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 60
    new-instance v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationBroadcastReceiver;

    invoke-direct {v1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationBroadcastReceiver;-><init>()V

    .line 61
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.amazonaws.amplify.pushnotification.NOTIFICATION_OPENED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
