.class public final enum Lorg/reactnative/camera/CameraViewManager$Events;
.super Ljava/lang/Enum;
.source "CameraViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactnative/camera/CameraViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reactnative/camera/CameraViewManager$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v1, 0x0

    const-string v2, "EVENT_CAMERA_READY"

    const-string v3, "onCameraReady"

    invoke-direct {v0, v2, v1, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 20
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v2, 0x1

    const-string v3, "EVENT_ON_MOUNT_ERROR"

    const-string v4, "onMountError"

    invoke-direct {v0, v3, v2, v4}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 21
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v3, 0x2

    const-string v4, "EVENT_ON_BAR_CODE_READ"

    const-string v5, "onBarCodeRead"

    invoke-direct {v0, v4, v3, v5}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 22
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v4, 0x3

    const-string v5, "EVENT_ON_FACES_DETECTED"

    const-string v6, "onFacesDetected"

    invoke-direct {v0, v5, v4, v6}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 23
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v5, 0x4

    const-string v6, "EVENT_ON_BARCODES_DETECTED"

    const-string v7, "onGoogleVisionBarcodesDetected"

    invoke-direct {v0, v6, v5, v7}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 24
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v6, 0x5

    const-string v7, "EVENT_ON_FACE_DETECTION_ERROR"

    const-string v8, "onFaceDetectionError"

    invoke-direct {v0, v7, v6, v8}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 25
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v7, 0x6

    const-string v8, "EVENT_ON_BARCODE_DETECTION_ERROR"

    const-string v9, "onGoogleVisionBarcodeDetectionError"

    invoke-direct {v0, v8, v7, v9}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 26
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v8, 0x7

    const-string v9, "EVENT_ON_TEXT_RECOGNIZED"

    const-string v10, "onTextRecognized"

    invoke-direct {v0, v9, v8, v10}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 27
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v9, 0x8

    const-string v10, "EVENT_ON_PICTURE_TAKEN"

    const-string v11, "onPictureTaken"

    invoke-direct {v0, v10, v9, v11}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 28
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v10, 0x9

    const-string v11, "EVENT_ON_PICTURE_SAVED"

    const-string v12, "onPictureSaved"

    invoke-direct {v0, v11, v10, v12}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 29
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v11, 0xa

    const-string v12, "EVENT_ON_RECORDING_START"

    const-string v13, "onRecordingStart"

    invoke-direct {v0, v12, v11, v13}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 30
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v12, 0xb

    const-string v13, "EVENT_ON_RECORDING_END"

    const-string v14, "onRecordingEnd"

    invoke-direct {v0, v13, v12, v14}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v0, 0xc

    .line 18
    new-array v0, v0, [Lorg/reactnative/camera/CameraViewManager$Events;

    sget-object v13, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v13, v0, v1

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v2

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v3

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v4

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v5

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v6

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v7

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v8

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v9

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v10

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v11

    sget-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

    aput-object v1, v0, v12

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    const-class v0, Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reactnative/camera/CameraViewManager$Events;

    return-object p0
.end method

.method public static values()[Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, [Lorg/reactnative/camera/CameraViewManager$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reactnative/camera/CameraViewManager$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
