.class Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;
.super Ljava/lang/Object;
.source "RNPushNotificationDeviceIDService.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;

    iget-object v0, v0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->this$0:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;

    check-cast p1, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1$1;->this$1:Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;

    iget-object v1, v1, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;->access$000(Lcom/amazonaws/amplify/pushnotification/RNPushNotificationDeviceIDService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    return-void
.end method
