.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;
.super Ljava/util/HashMap;
.source "RCTCameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureModeConstants()Ljava/util/Map;
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

    .line 199
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "still"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
