.class Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;
.super Ljava/lang/Object;
.source "AppCenterReactNativeCrashesModule.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->lastSessionCrashReport(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

    iput-object p2, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p1, :cond_0

    .line 87
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->convertErrorReportToWritableMapOrEmpty(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;->accept(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    return-void
.end method
