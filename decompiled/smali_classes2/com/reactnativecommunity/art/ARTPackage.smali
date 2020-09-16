.class public Lcom/reactnativecommunity/art/ARTPackage;
.super Ljava/lang/Object;
.source "ARTPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x4

    .line 27
    new-array p1, p1, [Lcom/facebook/react/uimanager/ViewManager;

    .line 28
    invoke-static {}, Lcom/reactnativecommunity/art/ARTRenderableViewManager;->createARTGroupViewManager()Lcom/reactnativecommunity/art/ARTRenderableViewManager;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 29
    invoke-static {}, Lcom/reactnativecommunity/art/ARTRenderableViewManager;->createARTShapeViewManager()Lcom/reactnativecommunity/art/ARTRenderableViewManager;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 30
    invoke-static {}, Lcom/reactnativecommunity/art/ARTRenderableViewManager;->createARTTextViewManager()Lcom/reactnativecommunity/art/ARTRenderableViewManager;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    new-instance v0, Lcom/reactnativecommunity/art/ARTSurfaceViewManager;

    invoke-direct {v0}, Lcom/reactnativecommunity/art/ARTSurfaceViewManager;-><init>()V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 27
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
