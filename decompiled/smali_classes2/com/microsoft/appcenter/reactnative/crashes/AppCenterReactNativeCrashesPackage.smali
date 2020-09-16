.class public Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesPackage;
.super Ljava/lang/Object;
.source "AppCenterReactNativeCrashesPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field private static final WHEN_TO_SEND_CRASHES_ASK_JAVASCRIPT:Ljava/lang/String; = "ASK_JAVASCRIPT"


# instance fields
.field private mCrashesModule:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating crashes module with crashListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logDebug(Ljava/lang/String;)V

    const-string v0, "ASK_JAVASCRIPT"

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 29
    new-instance v0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;-><init>(Landroid/app/Application;Z)V

    iput-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesPackage;->mCrashesModule:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

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

    .line 45
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

    .line 35
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesPackage;->mCrashesModule:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->setReactApplicationContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string p1, "Returning list containing crashes module"

    .line 37
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logDebug(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesPackage;->mCrashesModule:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;

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

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
