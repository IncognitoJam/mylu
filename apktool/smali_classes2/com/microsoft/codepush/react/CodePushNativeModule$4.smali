.class Lcom/microsoft/codepush/react/CodePushNativeModule$4;
.super Landroid/os/AsyncTask;
.source "CodePushNativeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule;->getUpdateMetadata(ILcom/facebook/react/bridge/Promise;)V
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

.field final synthetic val$updateState:I


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule;Lcom/facebook/react/bridge/Promise;I)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput p3, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$updateState:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "packageHash"

    const/4 v0, 0x0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$600(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushUpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 315
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 317
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 319
    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {v2}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$700(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/SettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/microsoft/codepush/react/SettingsManager;->isPendingUpdate(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 322
    :cond_1
    iget p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$updateState:I

    sget-object v3, Lcom/microsoft/codepush/react/CodePushUpdateState;->PENDING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v3}, Lcom/microsoft/codepush/react/CodePushUpdateState;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 325
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_2
    iget p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$updateState:I

    sget-object v3, Lcom/microsoft/codepush/react/CodePushUpdateState;->RUNNING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v3}, Lcom/microsoft/codepush/react/CodePushUpdateState;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$600(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePushUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPreviousPackage()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-object v0

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->convertJsonObjectToWritable(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->access$000(Lcom/microsoft/codepush/react/CodePushNativeModule;)Lcom/microsoft/codepush/react/CodePush;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/codepush/react/CodePush;->isRunningBinaryVersion()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "_isDebugOnly"

    const/4 v3, 0x1

    .line 346
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string p1, "isPending"

    .line 350
    invoke-static {v1, p1, v2}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushUtils;->convertJsonObjectToWritable(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/codepush/react/CodePushMalformedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/codepush/react/CodePushUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 360
    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 355
    invoke-virtual {p1}, Lcom/microsoft/codepush/react/CodePushMalformedDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->this$0:Lcom/microsoft/codepush/react/CodePushNativeModule;

    invoke-virtual {p1}, Lcom/microsoft/codepush/react/CodePushNativeModule;->clearUpdates()V

    .line 357
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
