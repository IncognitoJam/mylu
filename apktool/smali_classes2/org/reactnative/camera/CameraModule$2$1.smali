.class Lorg/reactnative/camera/CameraModule$2$1;
.super Ljava/util/HashMap;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactnative/camera/CameraModule$2;
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
.field final synthetic this$1:Lorg/reactnative/camera/CameraModule$2;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule$2;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$2$1;->this$1:Lorg/reactnative/camera/CameraModule$2;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2$1;->getFaceDetectionModeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Mode"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2$1;->getFaceDetectionLandmarksConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Landmarks"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2$1;->getFaceDetectionClassificationsConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Classifications"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getFaceDetectionClassificationsConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$1$2;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$1$2;-><init>(Lorg/reactnative/camera/CameraModule$2$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getFaceDetectionLandmarksConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$1$3;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$1$3;-><init>(Lorg/reactnative/camera/CameraModule$2$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getFaceDetectionModeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$1$1;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$1$1;-><init>(Lorg/reactnative/camera/CameraModule$2$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
