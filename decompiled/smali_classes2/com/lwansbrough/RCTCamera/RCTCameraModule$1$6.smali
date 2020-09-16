.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;
.super Ljava/util/HashMap;
.source "RCTCameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureTargetConstants()Ljava/util/Map;
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
.field final synthetic this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;


# direct methods
.method constructor <init>(Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "memory"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "disk"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "cameraRoll"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "temp"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
