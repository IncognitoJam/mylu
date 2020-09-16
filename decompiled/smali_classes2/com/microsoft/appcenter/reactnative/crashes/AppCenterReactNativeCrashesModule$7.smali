.class Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;
.super Ljava/lang/Object;
.source "AppCenterReactNativeCrashesModule.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->getUnprocessedCrashReports(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Ljava/util/Collection<",
        "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;->this$0:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

    iput-object p2, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;->accept(Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->convertErrorReportsToWritableArrayOrEmpty(Ljava/util/Collection;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
