.class public Lcom/microsoft/codepush/react/CodePushDialog;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CodePushDialog.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/codepush/react/CodePushDialog;)Landroid/app/Activity;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/codepush/react/CodePushDialog;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushDialog;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/codepush/react/CodePushDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/codepush/react/CodePushDialog;->showDialogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private showDialogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p6, 0x0

    .line 55
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 57
    new-instance p6, Lcom/microsoft/codepush/react/CodePushDialog$2;

    invoke-direct {p6, p0, p5}, Lcom/microsoft/codepush/react/CodePushDialog$2;-><init>(Lcom/microsoft/codepush/react/CodePushDialog;Lcom/facebook/react/bridge/Callback;)V

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p3, :cond_2

    .line 87
    invoke-virtual {v0, p3, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz p4, :cond_3

    .line 91
    invoke-virtual {v0, p4, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CodePushDialog"

    return-object v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 23
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/codepush/react/CodePushDialog;->showDialogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushDialog;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p6

    new-instance v7, Lcom/microsoft/codepush/react/CodePushDialog$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/codepush/react/CodePushDialog$1;-><init>(Lcom/microsoft/codepush/react/CodePushDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p6, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    :goto_1
    return-void
.end method
