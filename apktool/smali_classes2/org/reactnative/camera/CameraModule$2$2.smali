.class Lorg/reactnative/camera/CameraModule$2$2;
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

    .line 128
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$2$2;->this$1:Lorg/reactnative/camera/CameraModule$2;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sget-object p1, Lorg/reactnative/barcodedetector/BarcodeFormatUtils;->REVERSE_FORMATS:Ljava/util/Map;

    const-string v0, "BarcodeType"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lorg/reactnative/camera/CameraModule$2$2;->this$1:Lorg/reactnative/camera/CameraModule$2;

    invoke-static {p1}, Lorg/reactnative/camera/CameraModule$2;->access$000(Lorg/reactnative/camera/CameraModule$2;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "BarcodeMode"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
