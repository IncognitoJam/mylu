.class Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 324
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 327
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$900(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1000(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/reactnativecommunity/geolocation/PositionError;->TIMEOUT:I

    const-string v6, "Location request timed out"

    invoke-static {v5, v6}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1200(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$1100(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "ReactNative"

    const-string v3, "LocationModule: Location request timed out"

    .line 331
    invoke-static {v1, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {v1, v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->access$902(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Z)Z

    .line 334
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
