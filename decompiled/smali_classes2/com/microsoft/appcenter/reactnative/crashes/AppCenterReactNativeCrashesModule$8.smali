.class Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;
.super Ljava/lang/Object;
.source "AppCenterReactNativeCrashesModule.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->sendCrashReportsOrAwaitUserConfirmationForFilteredIds(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

    iput-object p2, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
