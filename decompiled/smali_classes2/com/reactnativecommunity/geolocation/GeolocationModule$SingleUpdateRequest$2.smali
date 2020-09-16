.class Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 340
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$900(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1300(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1400(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1500(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->access$000(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 343
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1700(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1600(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1, v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$902(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Z)Z

    .line 345
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1200(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1100(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1302(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Landroid/location/Location;)Landroid/location/Location;

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    .locals 0

    return-void
.end method
