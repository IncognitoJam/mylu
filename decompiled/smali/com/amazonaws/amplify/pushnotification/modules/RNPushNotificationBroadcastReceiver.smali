.class public Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNPushNotificationBroadcastReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RNPushNotificationBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMainActivityClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private openApp(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationBroadcastReceiver;->getMainActivityClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10200000

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "RNPushNotificationBroadcastReceiver"

    const-string v1, "broadcaster received"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v1, v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "notification"

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationJsDelivery;->emitNotificationOpened(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationBroadcastReceiver;->openApp(Landroid/content/Context;)V

    return-void
.end method
