.class public Lcom/lwansbrough/RCTCamera/RCTCameraViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RCTCameraViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/lwansbrough/RCTCamera/RCTCameraView;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND_START_PREVIEW:I = 0x2

.field public static final COMMAND_STOP_PREVIEW:I = 0x1

.field private static final REACT_CLASS:Ljava/lang/String; = "RCTCamera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/lwansbrough/RCTCamera/RCTCameraView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/lwansbrough/RCTCamera/RCTCameraView;
    .locals 1

    .line 27
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraView;

    invoke-direct {v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stopPreview"

    const-string v3, "startPreview"

    .line 32
    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTCamera"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    check-cast p1, Lcom/lwansbrough/RCTCamera/RCTCameraView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lwansbrough/RCTCamera/RCTCameraViewManager;->receiveCommand(Lcom/lwansbrough/RCTCamera/RCTCameraView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/lwansbrough/RCTCamera/RCTCameraView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->startPreview()V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p3

    const-string p2, "Unsupported command %d received by %s."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->stopPreview()V

    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public setAspect(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "aspect"
    .end annotation

    .line 61
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setAspect(I)V

    return-void
.end method

.method public setBarCodeTypes(Lcom/lwansbrough/RCTCamera/RCTCameraView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "barCodeTypes"
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setBarCodeTypes(Ljava/util/List;)V

    return-void
.end method

.method public setBarcodeScannerEnabled(Lcom/lwansbrough/RCTCamera/RCTCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "barcodeScannerEnabled"
    .end annotation

    .line 114
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setBarcodeScannerEnabled(Z)V

    return-void
.end method

.method public setCaptureAudio(Lcom/lwansbrough/RCTCamera/RCTCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "captureAudio"
    .end annotation

    return-void
.end method

.method public setCaptureMode(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "captureMode"
    .end annotation

    .line 69
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setCaptureMode(I)V

    return-void
.end method

.method public setCaptureQuality(Lcom/lwansbrough/RCTCamera/RCTCameraView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "captureQuality"
    .end annotation

    .line 84
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setCaptureQuality(Ljava/lang/String;)V

    return-void
.end method

.method public setCaptureTarget(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "captureTarget"
    .end annotation

    return-void
.end method

.method public setClearWindowBackground(Lcom/lwansbrough/RCTCamera/RCTCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clearWindowBackground"
    .end annotation

    .line 131
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setClearWindowBackground(Z)V

    return-void
.end method

.method public setFlashMode(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flashMode"
    .end annotation

    .line 94
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setFlashMode(I)V

    return-void
.end method

.method public setOrientation(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "orientation"
    .end annotation

    .line 104
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setOrientation(I)V

    return-void
.end method

.method public setTorchMode(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "torchMode"
    .end annotation

    .line 89
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setTorchMode(I)V

    return-void
.end method

.method public setType(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "type"
    .end annotation

    .line 79
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setCameraType(I)V

    return-void
.end method

.method public setZoom(Lcom/lwansbrough/RCTCamera/RCTCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "zoom"
    .end annotation

    .line 99
    invoke-virtual {p1, p2}, Lcom/lwansbrough/RCTCamera/RCTCameraView;->setZoom(I)V

    return-void
.end method
