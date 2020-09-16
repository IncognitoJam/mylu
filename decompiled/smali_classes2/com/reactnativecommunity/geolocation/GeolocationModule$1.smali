.class Lcom/reactnativecommunity/geolocation/GeolocationModule$1;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/GeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    invoke-static {v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->access$100(Lcom/reactnativecommunity/geolocation/GeolocationModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 53
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->access$000(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "geolocationDidChange"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const-string p3, "Provider "

    if-nez p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is out of service."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->access$200(Lcom/reactnativecommunity/geolocation/GeolocationModule;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 61
    iget-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->TIMEOUT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is temporarily unavailable."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->access$200(Lcom/reactnativecommunity/geolocation/GeolocationModule;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
