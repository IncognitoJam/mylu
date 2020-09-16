.class public Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativePackage;
.super Ljava/lang/Object;
.source "AppCenterReactNativePackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private module:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

    invoke-direct {v0, p1}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativePackage;->module:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

    return-void
.end method


# virtual methods
.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativePackage;->module:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
