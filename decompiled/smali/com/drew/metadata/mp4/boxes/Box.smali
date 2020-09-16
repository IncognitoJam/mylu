.class public Lcom/drew/metadata/mp4/boxes/Box;
.super Ljava/lang/Object;
.source "Box.java"


# instance fields
.field public size:J

.field public type:Ljava/lang/String;

.field public usertype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    const/4 v0, 0x4

    .line 39
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    .line 40
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 46
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mp4/boxes/Box;->usertype:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-wide v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    .line 53
    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    .line 54
    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->usertype:Ljava/lang/String;

    iput-object p1, p0, Lcom/drew/metadata/mp4/boxes/Box;->usertype:Ljava/lang/String;

    return-void
.end method
