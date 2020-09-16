.class Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;
.super Ljava/lang/Object;
.source "AppCenterReactNativeCrashesListener.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->access$100(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->access$000(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)Lcom/facebook/react/bridge/LifecycleEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 98
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->access$200(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)V

    return-void
.end method
