.class interface abstract Lcom/google/android/cameraview/CameraViewImpl$Callback;
.super Ljava/lang/Object;
.source "CameraViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraOpened()V
.end method

.method public abstract onFramePreview([BIII)V
.end method

.method public abstract onMountError()V
.end method

.method public abstract onPictureTaken([BI)V
.end method

.method public abstract onRecordingEnd()V
.end method

.method public abstract onRecordingStart(Ljava/lang/String;II)V
.end method

.method public abstract onVideoRecorded(Ljava/lang/String;II)V
.end method
