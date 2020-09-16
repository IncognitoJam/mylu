.class Lorg/wonday/orientation/OrientationModule$2;
.super Landroid/content/BroadcastReceiver;
.source "OrientationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wonday/orientation/OrientationModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wonday/orientation/OrientationModule;


# direct methods
.method constructor <init>(Lorg/wonday/orientation/OrientationModule;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule$2;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lorg/wonday/orientation/OrientationModule$2;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-static {p1}, Lorg/wonday/orientation/OrientationModule;->access$100(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lorg/wonday/orientation/OrientationModule$2;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-static {p2, p1}, Lorg/wonday/orientation/OrientationModule;->access$202(Lorg/wonday/orientation/OrientationModule;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Orientation changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ReactNative"

    invoke-static {v0, p2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v0, "orientation"

    .line 113
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lorg/wonday/orientation/OrientationModule$2;->this$0:Lorg/wonday/orientation/OrientationModule;

    iget-object p1, p1, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lorg/wonday/orientation/OrientationModule$2;->this$0:Lorg/wonday/orientation/OrientationModule;

    iget-object p1, p1, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 116
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v0, "orientationDidChange"

    .line 117
    invoke-interface {p1, v0, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
