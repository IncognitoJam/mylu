.class Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;
.super Ljava/lang/Object;
.source "RNPushNotificationDeviceIDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->onTokenRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;

    iput-object p2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->access$000(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;-><init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 66
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    :cond_1
    :goto_0
    return-void
.end method
