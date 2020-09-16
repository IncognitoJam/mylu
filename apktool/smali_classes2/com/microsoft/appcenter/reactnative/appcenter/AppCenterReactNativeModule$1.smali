.class Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;
.super Ljava/lang/Object;
.source "AppCenterReactNativeModule.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;->setEnabled(ZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;->this$0:Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule;

    iput-object p2, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/appcenter/AppCenterReactNativeModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
