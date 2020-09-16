.class public Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "AppCenterReactNativeModule.java"


# instance fields
.field private final mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;->mApplication:Landroid/app/Application;

    .line 28
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/shared/AppCenterReactNativeShared;->configureAppCenter(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public getInstallId(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 82
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstallId()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;-><init>(Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public getLogLevel(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 76
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getLogLevel()I

    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AppCenterReactNative"

    return-object v0
.end method

.method public isEnabled(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$2;-><init>(Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public setCustomProperties(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/appcenter/ReactNativeUtils;->toCustomProperties(Lcom/facebook/react/bridge/ReadableMap;)Lcom/microsoft/appcenter/CustomProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->setCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V

    return-void
.end method

.method public setEnabled(ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p1

    new-instance v0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;

    invoke-direct {v0, p0, p2}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;-><init>(Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->setLogLevel(I)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 93
    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public startFromLibrary(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "bindingType"

    .line 39
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;->mApplication:Landroid/app/Application;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/AppCenter;->startFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AppCenter"

    const-string v1, "Unable to resolve App Center module"

    .line 43
    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
