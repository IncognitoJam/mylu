.class Lorg/reactnative/camera/CameraModule$2$9;
.super Ljava/util/HashMap;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule$2;->getGoogleVisionBarcodeModeConstants()Ljava/util/Map;
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

    .line 200
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$2$9;->this$1:Lorg/reactnative/camera/CameraModule$2;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "NORMAL"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ALTERNATE"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "INVERTED"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
