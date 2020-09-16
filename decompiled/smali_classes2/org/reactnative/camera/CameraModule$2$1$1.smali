.class Lorg/reactnative/camera/CameraModule$2$1$1;
.super Ljava/util/HashMap;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule$2$1;->getFaceDetectionModeConstants()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/reactnative/camera/CameraModule$2$1;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule$2$1;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$2$1$1;->this$2:Lorg/reactnative/camera/CameraModule$2$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 104
    sget p1, Lorg/reactnative/facedetector/RNFaceDetector;->FAST_MODE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fast"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget p1, Lorg/reactnative/facedetector/RNFaceDetector;->ACCURATE_MODE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "accurate"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
