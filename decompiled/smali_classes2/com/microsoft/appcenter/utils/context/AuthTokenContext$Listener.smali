.class public interface abstract Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;
.super Ljava/lang/Object;
.source "AuthTokenContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/context/AuthTokenContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNewAuthToken(Ljava/lang/String;)V
.end method

.method public abstract onNewUser(Ljava/lang/String;)V
.end method

.method public abstract onTokenRequiresRefresh(Ljava/lang/String;)V
.end method
