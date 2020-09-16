.class Lcom/google/android/cameraview/CameraView$1;
.super Lcom/google/android/cameraview/DisplayOrientationDetector;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/CameraView;Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/android/cameraview/CameraView$1;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-direct {p0, p2}, Lcom/google/android/cameraview/DisplayOrientationDetector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDisplayOrientationChanged(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$1;->this$0:Lcom/google/android/cameraview/CameraView;

    iget-object v0, v0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl;->setDisplayOrientation(I)V

    .line 142
    iget-object p1, p0, Lcom/google/android/cameraview/CameraView$1;->this$0:Lcom/google/android/cameraview/CameraView;

    iget-object p1, p1, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {p1, p2}, Lcom/google/android/cameraview/CameraViewImpl;->setDeviceOrientation(I)V

    return-void
.end method
