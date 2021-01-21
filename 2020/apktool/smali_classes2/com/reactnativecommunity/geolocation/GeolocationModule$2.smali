.class Lcom/reactnativecommunity/geolocation/GeolocationModule$2;
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

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$success:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$success:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 133
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    const-string v1, "granted"

    if-ne p1, v1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$success:Lcom/facebook/react/bridge/Callback;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;->val$error:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    const-string v3, "Location permission was not granted."

    invoke-static {v2, v3}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
