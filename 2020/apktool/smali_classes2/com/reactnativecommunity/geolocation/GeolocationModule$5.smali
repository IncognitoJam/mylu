.class Lcom/reactnativecommunity/geolocation/GeolocationModule$5;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/geolocation/GeolocationModule;->getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

.field final synthetic val$error:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$onPermissionDenied:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$onPermissionGranted:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$perms:Lcom/facebook/react/modules/permissions/PermissionsModule;

.field final synthetic val$success:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$perms:Lcom/facebook/react/modules/permissions/PermissionsModule;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$onPermissionGranted:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$onPermissionDenied:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p6, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$success:Lcom/facebook/react/bridge/Callback;

    iput-object p7, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 159
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$perms:Lcom/facebook/react/modules/permissions/PermissionsModule;

    new-instance v0, Lcom/facebook/react/bridge/PromiseImpl;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$onPermissionGranted:Lcom/facebook/react/bridge/Callback;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$onPermissionDenied:Lcom/facebook/react/bridge/Callback;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/modules/permissions/PermissionsModule;->requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$success:Lcom/facebook/react/bridge/Callback;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    :goto_0
    return-void
.end method
