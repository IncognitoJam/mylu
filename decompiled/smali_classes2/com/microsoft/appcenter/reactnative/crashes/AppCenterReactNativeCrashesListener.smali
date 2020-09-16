.class Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;
.super Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
.source "AppCenterReactNativeCrashesListener.java"


# static fields
.field private static final ON_BEFORE_SENDING_EVENT:Ljava/lang/String; = "AppCenterErrorReportOnBeforeSending"

.field private static final ON_SENDING_FAILED_EVENT:Ljava/lang/String; = "AppCenterErrorReportOnSendingFailed"

.field private static final ON_SENDING_SUCCEEDED_EVENT:Ljava/lang/String; = "AppCenterErrorReportOnSendingSucceeded"


# instance fields
.field private lifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

.field private mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mPendingEvents:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener$1;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->lifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)Lcom/facebook/react/bridge/LifecycleEventListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->lifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->replayPendingEvents()V

    return-void
.end method

.method private replayPendingEvents()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0, v2, v1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 77
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 78
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mPendingEvents:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object p2, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->lifecycleEventListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBeforeSending(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending error report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logInfo(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "AppCenterErrorReportOnBeforeSending"

    .line 43
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->convertErrorReportToWritableMap(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to send onBeforeSending event:"

    .line 45
    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSendingFailed(Lcom/microsoft/appcenter/crashes/model/ErrorReport;Ljava/lang/Exception;)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send error report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    :try_start_0
    const-string p2, "AppCenterErrorReportOnSendingFailed"

    .line 55
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->convertErrorReportToWritableMap(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to send onSendingFailed event:"

    .line 57
    invoke-static {p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSendingSucceeded(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully Sent error report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logInfo(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "AppCenterErrorReportOnSendingSucceeded"

    .line 66
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->convertErrorReportToWritableMap(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to send onSendingSucceeded event:"

    .line 68
    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setReactApplicationContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method
