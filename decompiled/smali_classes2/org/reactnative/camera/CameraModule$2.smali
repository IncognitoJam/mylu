.class Lorg/reactnative/camera/CameraModule$2;
.super Ljava/util/HashMap;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule;->getConstants()Ljava/util/Map;
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
.field final synthetic this$0:Lorg/reactnative/camera/CameraModule;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule;)V
    .locals 1

    .line 86
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$2;->this$0:Lorg/reactnative/camera/CameraModule;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getTypeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Type"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getFlashModeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "FlashMode"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getAutoFocusConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "AutoFocus"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getWhiteBalanceConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "WhiteBalance"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getVideoQualityConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "VideoQuality"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getBarCodeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "BarCodeType"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance p1, Lorg/reactnative/camera/CameraModule$2$1;

    invoke-direct {p1, p0}, Lorg/reactnative/camera/CameraModule$2$1;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "FaceDetection"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance p1, Lorg/reactnative/camera/CameraModule$2$2;

    invoke-direct {p1, p0}, Lorg/reactnative/camera/CameraModule$2$2;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "GoogleVisionBarcodeDetection"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance p1, Lorg/reactnative/camera/CameraModule$2$3;

    invoke-direct {p1, p0}, Lorg/reactnative/camera/CameraModule$2$3;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "Orientation"

    invoke-virtual {p0, v0, p1}, Lorg/reactnative/camera/CameraModule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/reactnative/camera/CameraModule$2;)Ljava/util/Map;
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/reactnative/camera/CameraModule$2;->getGoogleVisionBarcodeModeConstants()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAutoFocusConstants()Ljava/util/Map;
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

    .line 166
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$6;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$6;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getBarCodeConstants()Ljava/util/Map;
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

    .line 210
    sget-object v0, Lorg/reactnative/camera/CameraModule;->VALID_BARCODE_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method private getFlashModeConstants()Ljava/util/Map;
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

    .line 155
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$5;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$5;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getGoogleVisionBarcodeModeConstants()Ljava/util/Map;
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

    .line 200
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$9;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$9;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getTypeConstants()Ljava/util/Map;
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

    .line 146
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$4;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$4;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getVideoQualityConstants()Ljava/util/Map;
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

    .line 188
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$8;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$8;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getWhiteBalanceConstants()Ljava/util/Map;
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

    .line 175
    new-instance v0, Lorg/reactnative/camera/CameraModule$2$7;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2$7;-><init>(Lorg/reactnative/camera/CameraModule$2;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
