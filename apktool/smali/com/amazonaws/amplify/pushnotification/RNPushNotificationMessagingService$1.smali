.class Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;
.super Ljava/lang/Object;
.source "RNPushNotificationMessagingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$hasData:Ljava/lang/Boolean;

.field final synthetic val$isForeground:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;Landroid/os/Bundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;

    iput-object p2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$isForeground:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$hasData:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$bundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$isForeground:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$hasData:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;->access$000(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;-><init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 85
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    :cond_1
    :goto_0
    return-void
.end method
