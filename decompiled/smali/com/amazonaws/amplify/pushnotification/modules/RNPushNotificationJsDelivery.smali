.class public Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;
.super Ljava/lang/Object;
.source "RNPushNotificationJsDelivery.java"


# instance fields
.field private context:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public emitNotificationOpened(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-static {p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationCommon;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "dataJSON"

    .line 58
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification opened: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "emit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "remoteNotificationOpened"

    .line 61
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public emitNotificationReceived(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationCommon;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "dataJSON"

    .line 40
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "emit"

    const-string v1, "notification emit"

    .line 41
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "remoteNotificationReceived"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public emitTokenReceived(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-static {p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationCommon;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "dataJSON"

    .line 49
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "emit"

    const-string/jumbo v1, "token registration"

    .line 50
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "remoteTokenReceived"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
