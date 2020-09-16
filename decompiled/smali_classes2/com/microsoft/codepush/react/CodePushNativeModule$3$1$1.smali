.class Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;
.super Ljava/lang/Object;
.source "CodePushNativeModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;->call(Lcom/microsoft/codepush/react/DownloadProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;->this$2:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    new-instance v2, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;

    invoke-direct {v2, p0}, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method
