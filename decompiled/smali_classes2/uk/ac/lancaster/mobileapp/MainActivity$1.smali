.class Luk/ac/lancaster/mobileapp/MainActivity$1;
.super Lcom/facebook/react/ReactActivityDelegate;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/lancaster/mobileapp/MainActivity;->createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/ac/lancaster/mobileapp/MainActivity;


# direct methods
.method constructor <init>(Luk/ac/lancaster/mobileapp/MainActivity;Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Luk/ac/lancaster/mobileapp/MainActivity$1;->this$0:Luk/ac/lancaster/mobileapp/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/facebook/react/ReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 2

    .line 35
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEnabledRootView;

    iget-object v1, p0, Luk/ac/lancaster/mobileapp/MainActivity$1;->this$0:Luk/ac/lancaster/mobileapp/MainActivity;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEnabledRootView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
