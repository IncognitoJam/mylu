.class Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;
.super Ljava/lang/Object;
.source "RNPushNotificationMessagingService.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;

    iget-object v0, v0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;

    check-cast p1, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;

    iget-object v1, v1, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$bundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;

    iget-object v2, v2, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$isForeground:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;

    iget-object v3, v3, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService$1;->val$hasData:Ljava/lang/Boolean;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;->access$000(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationMessagingService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
