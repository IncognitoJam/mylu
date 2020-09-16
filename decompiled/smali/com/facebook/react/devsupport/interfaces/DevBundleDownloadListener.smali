.class public interface abstract Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
.super Ljava/lang/Object;
.source "DevBundleDownloadListener.java"


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/facebook/react/bridge/NativeDeltaClient;)V
    .param p1    # Lcom/facebook/react/bridge/NativeDeltaClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
