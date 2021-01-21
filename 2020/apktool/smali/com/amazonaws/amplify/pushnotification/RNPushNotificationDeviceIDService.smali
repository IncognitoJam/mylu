.class public Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "RNPushNotificationDeviceIDService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNPushNotificationDeviceIDService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->sendRegistrationToken(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    return-void
.end method

.method private convertMessageToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refreshToken"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendRegistrationToken(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;

    invoke-direct {v0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->emitTokenReceived(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNPushNotificationDeviceIDService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, v0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->convertMessageToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    new-instance v2, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;

    invoke-direct {v2, p0, v0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;-><init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
