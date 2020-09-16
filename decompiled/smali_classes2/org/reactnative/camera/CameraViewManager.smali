.class public Lorg/reactnative/camera/CameraViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "CameraViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reactnative/camera/CameraViewManager$Events;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lorg/reactnative/camera/RNCameraView;",
        ">;"
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "RNCamera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/reactnative/camera/CameraViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lorg/reactnative/camera/RNCameraView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lorg/reactnative/camera/RNCameraView;
    .locals 1

    .line 60
    new-instance v0, Lorg/reactnative/camera/RNCameraView;

    invoke-direct {v0, p1}, Lorg/reactnative/camera/RNCameraView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 67
    invoke-static {}, Lorg/reactnative/camera/CameraViewManager$Events;->values()[Lorg/reactnative/camera/CameraViewManager$Events;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 68
    invoke-virtual {v4}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "registrationName"

    invoke-static {v6, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCamera"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/CameraViewManager;->onDropViewInstance(Lorg/reactnative/camera/RNCameraView;)V

    return-void
.end method

.method public onDropViewInstance(Lorg/reactnative/camera/RNCameraView;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Lorg/reactnative/camera/RNCameraView;->onHostDestroy()V

    .line 49
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public setAutoFocus(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoFocus"
    .end annotation

    .line 100
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setAutoFocus(Z)V

    return-void
.end method

.method public setAutoFocusPointOfInterest(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoFocusPointOfInterest"
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "x"

    .line 111
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    const-string v1, "y"

    .line 112
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float p2, v1

    .line 113
    invoke-virtual {p1, v0, p2}, Lorg/reactnative/camera/RNCameraView;->setAutoFocusPointOfInterest(FF)V

    :cond_0
    return-void
.end method

.method public setBarCodeScanning(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "barCodeScannerEnabled"
    .end annotation

    .line 151
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setShouldScanBarCodes(Z)V

    return-void
.end method

.method public setBarCodeTypes(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "barCodeTypes"
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 143
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 144
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1, v0}, Lorg/reactnative/camera/RNCameraView;->setBarCodeTypes(Ljava/util/List;)V

    return-void
.end method

.method public setCameraId(Lorg/reactnative/camera/RNCameraView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cameraId"
    .end annotation

    .line 80
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraViewDimensions(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cameraViewDimensions"
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "width"

    .line 219
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    const-string v1, "height"

    .line 220
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int p2, v1

    .line 221
    invoke-virtual {p1, v0, p2}, Lorg/reactnative/camera/RNCameraView;->setCameraViewDimensions(II)V

    :cond_0
    return-void
.end method

.method public setExposureCompensation(Lorg/reactnative/camera/RNCameraView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "exposure"
    .end annotation

    .line 95
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setExposureCompensation(F)V

    return-void
.end method

.method public setFaceDetecting(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "faceDetectorEnabled"
    .end annotation

    .line 161
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setShouldDetectFaces(Z)V

    return-void
.end method

.method public setFaceDetectionClassifications(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "faceDetectionClassifications"
    .end annotation

    .line 176
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFaceDetectionClassifications(I)V

    return-void
.end method

.method public setFaceDetectionLandmarks(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "faceDetectionLandmarks"
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFaceDetectionLandmarks(I)V

    return-void
.end method

.method public setFaceDetectionMode(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "faceDetectionMode"
    .end annotation

    .line 166
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFaceDetectionMode(I)V

    return-void
.end method

.method public setFlashMode(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flashMode"
    .end annotation

    .line 90
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFlash(I)V

    return-void
.end method

.method public setFocusDepth(Lorg/reactnative/camera/RNCameraView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "focusDepth"
    .end annotation

    .line 105
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFocusDepth(F)V

    return-void
.end method

.method public setGoogleVisionBarcodeDetecting(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "googleVisionBarcodeDetectorEnabled"
    .end annotation

    .line 186
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setShouldGoogleDetectBarcodes(Z)V

    return-void
.end method

.method public setGoogleVisionBarcodeMode(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "googleVisionBarcodeMode"
    .end annotation

    .line 196
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setGoogleVisionBarcodeMode(I)V

    return-void
.end method

.method public setGoogleVisionBarcodeType(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "googleVisionBarcodeType"
    .end annotation

    .line 191
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setGoogleVisionBarcodeType(I)V

    return-void
.end method

.method public setPictureSize(Lorg/reactnative/camera/RNCameraView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pictureSize"
    .end annotation

    const-string v0, "None"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/cameraview/Size;->parse(Ljava/lang/String;)Lcom/google/android/cameraview/Size;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setPictureSize(Lcom/google/android/cameraview/Size;)V

    return-void
.end method

.method public setPlaySoundOnCapture(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "playSoundOnCapture"
    .end annotation

    .line 134
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setPlaySoundOnCapture(Z)V

    return-void
.end method

.method public setRatio(Lorg/reactnative/camera/RNCameraView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "ratio"
    .end annotation

    .line 85
    invoke-static {p2}, Lcom/google/android/cameraview/AspectRatio;->parse(Ljava/lang/String;)Lcom/google/android/cameraview/AspectRatio;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)V

    return-void
.end method

.method public setRectOfInterest(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "rectOfInterest"
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "x"

    .line 208
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    const-string v1, "y"

    .line 209
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "width"

    .line 210
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "height"

    .line 211
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p2, v3

    .line 212
    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/reactnative/camera/RNCameraView;->setRectOfInterest(FFFF)V

    :cond_0
    return-void
.end method

.method public setTextRecognizing(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textRecognizerEnabled"
    .end annotation

    .line 201
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setShouldRecognizeText(Z)V

    return-void
.end method

.method public setTracking(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "trackingEnabled"
    .end annotation

    .line 181
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setTracking(Z)V

    return-void
.end method

.method public setType(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "type"
    .end annotation

    .line 75
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setFacing(I)V

    return-void
.end method

.method public setUseCamera2Api(Lorg/reactnative/camera/RNCameraView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "useCamera2Api"
    .end annotation

    .line 156
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setUsingCamera2Api(Z)V

    return-void
.end method

.method public setWhiteBalance(Lorg/reactnative/camera/RNCameraView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "whiteBalance"
    .end annotation

    .line 124
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setWhiteBalance(I)V

    return-void
.end method

.method public setZoom(Lorg/reactnative/camera/RNCameraView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "zoom"
    .end annotation

    .line 119
    invoke-virtual {p1, p2}, Lorg/reactnative/camera/RNCameraView;->setZoom(F)V

    return-void
.end method
