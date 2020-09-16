.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;
.super Ljava/util/HashMap;
.source "RCTCameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule;->getConstants()Ljava/util/Map;
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
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->this$0:Lcom/lwansbrough/RCTCamera/RCTCameraModule;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getAspectConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Aspect"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getBarCodeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "BarCodeType"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getTypeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Type"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureQualityConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "CaptureQuality"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureModeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "CaptureMode"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureTargetConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "CaptureTarget"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getOrientationConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Orientation"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getFlashModeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "FlashMode"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getTorchModeConstants()Ljava/util/Map;

    move-result-object p1

    const-string v0, "TorchMode"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getAspectConstants()Ljava/util/Map;
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

    .line 157
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$1;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$1;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

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

    .line 167
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$2;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$2;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCaptureModeConstants()Ljava/util/Map;
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

    .line 199
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCaptureQualityConstants()Ljava/util/Map;
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

    .line 184
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCaptureTargetConstants()Ljava/util/Map;
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

    .line 208
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

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

    .line 231
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$8;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$8;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getOrientationConstants()Ljava/util/Map;
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

    .line 219
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getTorchModeConstants()Ljava/util/Map;
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

    .line 241
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$9;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$9;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

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

    .line 175
    new-instance v0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$3;

    invoke-direct {v0, p0}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$3;-><init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
