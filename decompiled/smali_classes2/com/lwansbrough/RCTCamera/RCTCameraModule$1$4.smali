.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;
.super Ljava/util/HashMap;
.source "RCTCameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getCaptureQualityConstants()Ljava/util/Map;
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

    .line 184
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "low"

    .line 186
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "medium"

    .line 187
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "high"

    .line 188
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "photo"

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preview"

    .line 190
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "480p"

    .line 191
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "720p"

    .line 192
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "1080p"

    .line 193
    invoke-virtual {p0, p1, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
