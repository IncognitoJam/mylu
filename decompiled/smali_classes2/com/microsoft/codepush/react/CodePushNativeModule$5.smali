.class Lcom/microsoft/codepush/react/CodePushNativeModule$5;
.super Landroid/os/AsyncTask;
.source "CodePushNativeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule;->getNewStatusReport(Lcom/facebook/react/bridge/Promise;)V
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

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 372
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->needToReportRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/CodePush;->setNeedToReportRollback(Z)V

    .line 378
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$700(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/SettingsManager;->getFailedUpdates()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_3

    .line 381
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->convertJsonObjectToWritable(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$800(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->getRollbackReport(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception v0

    .line 389
    :try_start_2
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Unable to read failed updates information stored in SharedPreferences."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->didUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$600(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$800(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    move-result-object v1

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->convertJsonObjectToWritable(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->getUpdateReport(Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-object p1

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePush;->isRunningBinaryVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$800(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePush;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->getBinaryUpdateReport(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-object p1

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$800(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushTelemetryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/codepush/react/CodePushTelemetryManager;->getRetryStatusReport()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-object p1

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 417
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 418
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method
