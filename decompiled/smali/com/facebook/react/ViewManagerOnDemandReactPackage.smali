.class public interface abstract Lcom/facebook/react/ViewManagerOnDemandReactPackage;
.super Ljava/lang/Object;
.source "ViewManagerOnDemandReactPackage.java"


# virtual methods
.method public abstract createViewManager(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getViewManagerNames(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
