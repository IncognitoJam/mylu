.class Lcom/microsoft/codepush/react/CodePushDialog$2;
.super Ljava/lang/Object;
.source "CodePushDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushDialog;->showDialogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/codepush/react/CodePushDialog;

.field final synthetic val$successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushDialog;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->this$0:Lcom/microsoft/codepush/react/CodePushDialog;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 61
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 p1, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string p2, "Unknown button ID pressed."

    invoke-direct {p1, p2}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
