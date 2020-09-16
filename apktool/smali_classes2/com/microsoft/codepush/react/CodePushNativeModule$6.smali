.class Lcom/microsoft/codepush/react/CodePushNativeModule$6;
.super Landroid/os/AsyncTask;
.source "CodePushNativeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule;->installUpdate(Lcom/facebook/react/bridge/ReadableMap;IILcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

.field final synthetic val$installMode:I

.field final synthetic val$minimumBackgroundDuration:I

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$updatePackage:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/ReadableMap;IILcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$updatePackage:Lcom/facebook/react/bridge/ReadableMap;

    iput p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    iput p4, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$minimumBackgroundDuration:I

    iput-object p5, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 429
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$600(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$updatePackage:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushUtils;->convertReadableToJsonObject(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v2}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$700(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->installPackage(Lorg/json/JSONObject;Z)V

    .line 435
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$updatePackage:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "packageHash"

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->tryGetString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$700(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/codepush/react/SettingsManager;->savePendingUpdate(Ljava/lang/String;Z)V

    .line 442
    iget v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_RESUME:Lcom/microsoft/codepush/react/CodePushInstallMode;

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->IMMEDIATE:Lcom/microsoft/codepush/react/CodePushInstallMode;

    .line 446
    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$installMode:I

    sget-object v1, Lcom/microsoft/codepush/react/CodePushInstallMode;->ON_NEXT_SUSPEND:Lcom/microsoft/codepush/react/CodePushInstallMode;

    .line 447
    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushInstallMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    iget v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$minimumBackgroundDuration:I

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$902(Lcom/microsoft/codepush/react/CodePushNativeModule;I)I

    .line 454
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$1000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/LifecycleEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    new-instance v1, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;

    invoke-direct {v1, p0}, Lcom/microsoft/codepush/react/CodePushNativeModule$6$1;-><init>(Lcom/microsoft/codepush/react/CodePushNativeModule$6;)V

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$1002(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/LifecycleEventListener;)Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 498
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$1200(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$1000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/facebook/react/bridge/LifecycleEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_2
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Update package to be installed has no hash."

    invoke-direct {v0, v1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 504
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 505
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method
