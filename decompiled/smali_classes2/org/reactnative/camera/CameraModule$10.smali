.class Lorg/reactnative/camera/CameraModule$10;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule;->getAvailablePictureSizes(Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/CameraModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$ratio:Ljava/lang/String;

.field final synthetic val$viewTag:I


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$10;->this$0:Lorg/reactnative/camera/CameraModule;

    iput p2, p0, Lorg/reactnative/camera/CameraModule$10;->val$viewTag:I

    iput-object p3, p0, Lorg/reactnative/camera/CameraModule$10;->val$ratio:Ljava/lang/String;

    iput-object p4, p0, Lorg/reactnative/camera/CameraModule$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 2

    .line 390
    :try_start_0
    iget v0, p0, Lorg/reactnative/camera/CameraModule$10;->val$viewTag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/reactnative/camera/RNCameraView;

    .line 391
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Lorg/reactnative/camera/RNCameraView;->isCameraOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lorg/reactnative/camera/CameraModule$10;->val$ratio:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/cameraview/AspectRatio;->parse(Ljava/lang/String;)Lcom/google/android/cameraview/AspectRatio;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/reactnative/camera/RNCameraView;->getAvailablePictureSizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    .line 394
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/Size;

    .line 395
    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/CameraModule$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 399
    :cond_1
    iget-object p1, p0, Lorg/reactnative/camera/CameraModule$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "E_CAMERA_UNAVAILABLE"

    const-string v1, "Camera is not running"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 402
    :catch_0
    iget-object p1, p0, Lorg/reactnative/camera/CameraModule$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "E_CAMERA_BAD_VIEWTAG"

    const-string v1, "getAvailablePictureSizesAsync: Expected a Camera component"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
