.class public Lcom/microsoft/codepush/react/CodePushBuilder;
.super Ljava/lang/Object;
.source "CodePushBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeploymentKey:Ljava/lang/String;

.field private mIsDebugMode:Z

.field private mPublicKeyResourceDescriptor:Ljava/lang/Integer;

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mDeploymentKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getServiceUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/codepush/react/CodePush;
    .locals 7

    .line 35
    new-instance v6, Lcom/microsoft/codepush/react/CodePush;

    iget-object v1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mDeploymentKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mIsDebugMode:Z

    iget-object v4, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mServerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mPublicKeyResourceDescriptor:Ljava/lang/Integer;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/codepush/react/CodePush;-><init>(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Integer;)V

    return-object v6
.end method

.method public setIsDebugMode(Z)Lcom/microsoft/codepush/react/CodePushBuilder;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mIsDebugMode:Z

    return-object p0
.end method

.method public setPublicKeyResourceDescriptor(I)Lcom/microsoft/codepush/react/CodePushBuilder;
    .locals 0

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mPublicKeyResourceDescriptor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/microsoft/codepush/react/CodePushBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushBuilder;->mServerUrl:Ljava/lang/String;

    return-object p0
.end method
