.class public Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "MediaHeaderBox.java"


# instance fields
.field creationTime:J

.field duration:J

.field language:Ljava/lang/String;

.field modificationTime:J

.field timescale:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 43
    iget p2, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->version:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->creationTime:J

    .line 45
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->modificationTime:J

    .line 46
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->timescale:J

    .line 47
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->duration:J

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->creationTime:J

    .line 50
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->modificationTime:J

    .line 51
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->timescale:J

    .line 52
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->duration:J

    .line 54
    :goto_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p1

    .line 55
    new-instance p2, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [C

    const/4 v2, 0x0

    and-int/lit16 v3, p1, 0x7c00

    shr-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    aput-char v3, v1, v2

    and-int/lit16 v2, p1, 0x3e0

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    aput-char v2, v1, v0

    const/4 v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/lit8 p1, p1, 0x60

    int-to-char p1, p1

    aput-char p1, v1, v0

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->language:Ljava/lang/String;

    .line 59
    iget-wide p1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->creationTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long;

    .line 60
    iget-wide p1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->modificationTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long;

    .line 61
    iget-wide p1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->timescale:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    .line 62
    iget-wide p1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->duration:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_DURATION:Ljava/lang/Long;

    .line 63
    iget-object p1, p0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;->language:Ljava/lang/String;

    sput-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_LANGUAGE:Ljava/lang/String;

    return-void
.end method
