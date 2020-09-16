.class Lcom/microsoft/codepush/react/CodePushNativeModule$2;
.super Ljava/lang/Object;
.source "CodePushNativeModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule;->loadBundle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

.field final synthetic val$instanceManager:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$2;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$2;->val$instanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$2;->val$instanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground()V

    .line 152
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$2;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->initializeUpdateAfterRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$2;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$100(Lcom/microsoft/codepush/react/CodePushNativeModule;)V

    :goto_0
    return-void
.end method
