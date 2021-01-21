.class public Lcom/reactnativecommunity/netinfo/NetInfoModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NetInfoModule.java"

# interfaces
.implements Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller$ConnectivityChangedCallback;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCNetInfo"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNCNetInfo"


# instance fields
.field private final mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

.field private final mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/netinfo/NetworkCallbackConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/netinfo/BroadcastReceiverConnectivityReceiver;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    .line 33
    :goto_0
    new-instance v0, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-direct {v0, p1, p0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;-><init>(Landroid/content/Context;Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller$ConnectivityChangedCallback;)V

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    return-void
.end method


# virtual methods
.method public getCurrentState(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getCurrentState(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCNetInfo"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->register()V

    .line 39
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;->register()V

    return-void
.end method

.method public onAmazonFireDeviceConnectivityChanged(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->setIsInternetReachableOverride(Z)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mAmazonConnectivityChecker:Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/AmazonFireDeviceConnectivityPoller;->unregister()V

    .line 45
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/NetInfoModule;->mConnectivityReceiver:Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->unregister()V

    return-void
.end method
