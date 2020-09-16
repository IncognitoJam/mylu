.class public abstract Lcom/microsoft/appcenter/utils/context/AbstractTokenContextListener;
.super Ljava/lang/Object;
.source "AbstractTokenContextListener.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAuthToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewUser(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTokenRequiresRefresh(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
