.class Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;
.super Ljava/util/HashMap;
.source "RCTCameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;->getOrientationConstants()Ljava/util/Map;
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

    .line 219
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->this$1:Lcom/lwansbrough/RCTCamera/RCTCameraModule$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const p1, 0x7fffffff

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "landscapeLeft"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "landscapeRight"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "portrait"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "portraitUpsideDown"

    invoke-virtual {p0, v0, p1}, Lcom/lwansbrough/RCTCamera/RCTCameraModule$1$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
