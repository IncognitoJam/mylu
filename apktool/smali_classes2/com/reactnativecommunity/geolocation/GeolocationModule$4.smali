.class Lcom/reactnativecommunity/geolocation/GeolocationModule$4;
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


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$4;->this$0:Lcom/reactnativecommunity/geolocation/GeolocationModule;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$4;->val$error:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    .line 152
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$4;->val$error:Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    const-string v2, "Failed to check location permission."

    invoke-static {v1, v2}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
