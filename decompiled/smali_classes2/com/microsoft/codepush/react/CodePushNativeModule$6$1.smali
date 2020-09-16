.class Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;
.super Ljava/lang/Object;
.source "CodePushNativeModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private appSuspendHandler:Landroid/os/Handler;

.field private lastPausedDate:Ljava/util/Date;

.field private loadBundleRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule$6;)V
    .locals 1

    .line 456
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->lastPausedDate:Ljava/util/Date;

    .line 458
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->appSuspendHandler:Landroid/os/Handler;

    .line 459
    new-instance p1, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1$1;

    invoke-direct {p1, p0}, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1$1;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;)V

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->loadBundleRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 4

    .line 486
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->lastPausedDate:Ljava/util/Date;

    .line 488
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget v0, v0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_SUSPEND:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget-object v0, v0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$700(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->appSuspendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->loadBundleRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget v2, v2, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$minimumBackgroundDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->appSuspendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->loadBundleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->lastPausedDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->lastPausedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 474
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget v2, v2, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    sget-object v3, Lcom/microsoft/codepush/react/CodePushInstallMode;->IMMEDIATE:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v3}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget-object v2, v2, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    .line 475
    invoke-static {v2}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$900(Lcom/microsoft/codepush/react/CodePushNativeModule;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    const-string v0, "Loading bundle on resume"

    .line 476
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;->this$1:Lcom/microsoft/codepush/react/CodePushNativeModule$6;

    iget-object v0, v0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$1100(Lcom/microsoft/codepush/react/CodePushNativeModule;)V

    :cond_1
    return-void
.end method
