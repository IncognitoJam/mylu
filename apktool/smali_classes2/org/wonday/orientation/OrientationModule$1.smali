.class Lorg/wonday/orientation/OrientationModule$1;
.super Landroid/view/OrientationEventListener;
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
.method constructor <init>(Lorg/wonday/orientation/OrientationModule;Landroid/content/Context;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOrientation changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-static {v0}, Lorg/wonday/orientation/OrientationModule;->access$000(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_1

    :cond_0
    const/16 v1, 0x163

    if-gt p1, v1, :cond_4

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x55

    if-le p1, v1, :cond_2

    const/16 v1, 0x5f

    if-ge p1, v1, :cond_2

    const-string v0, "LANDSCAPE-RIGHT"

    goto :goto_1

    :cond_2
    const/16 v1, 0xaf

    if-le p1, v1, :cond_3

    const/16 v1, 0xb9

    if-ge p1, v1, :cond_3

    const-string v0, "PORTRAIT-UPSIDEDOWN"

    goto :goto_1

    :cond_3
    const/16 v1, 0x109

    if-le p1, v1, :cond_5

    const/16 v1, 0x113

    if-ge p1, v1, :cond_5

    const-string v0, "LANDSCAPE-LEFT"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "PORTRAIT"

    .line 78
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-static {p1}, Lorg/wonday/orientation/OrientationModule;->access$000(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 80
    iget-object p1, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    invoke-static {p1, v0}, Lorg/wonday/orientation/OrientationModule;->access$002(Lorg/wonday/orientation/OrientationModule;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "deviceOrientation"

    .line 83
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    iget-object v0, v0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule$1;->this$0:Lorg/wonday/orientation/OrientationModule;

    iget-object v0, v0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 86
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "deviceOrientationDidChange"

    .line 87
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
