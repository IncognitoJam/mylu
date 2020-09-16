.class Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;
.super Ljava/lang/Object;
.source "AppCenterReactNativeModule.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;->getInstallId(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;->this$0:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

    iput-object p2, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;->accept(Ljava/util/UUID;)V

    return-void
.end method

.method public accept(Ljava/util/UUID;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
