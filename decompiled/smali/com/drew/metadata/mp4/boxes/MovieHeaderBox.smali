.class public Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "MovieHeaderBox.java"


# instance fields
.field protected creationTime:J

.field protected duration:J

.field protected matrix:[I

.field protected modificationTime:J

.field protected nextTrackID:J

.field protected rate:I

.field protected timescale:J

.field protected volume:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 47
    iget p2, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->version:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->creationTime:J

    .line 49
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->modificationTime:J

    .line 50
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->timescale:J

    .line 51
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->duration:J

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->creationTime:J

    .line 54
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->modificationTime:J

    .line 55
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->timescale:J

    .line 56
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->duration:J

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->rate:I

    .line 59
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->volume:I

    const-wide/16 v1, 0x2

    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const-wide/16 v1, 0x8

    .line 61
    invoke-virtual {p1, v1, v2}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 p2, 0x9

    .line 62
    new-array p2, p2, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    aput v2, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    aput v1, p2, v0

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->matrix:[I

    const-wide/16 v0, 0x18

    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 73
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->nextTrackID:J

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/Mp4Directory;)V
    .locals 9

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0x770

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 81
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 83
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->creationTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/16 v3, 0x100

    invoke-virtual {p1, v3, v2}, Lcom/drew/metadata/mp4/Mp4Directory;->setDate(ILjava/util/Date;)V

    .line 84
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->modificationTime:J

    mul-long v3, v3, v5

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/16 v0, 0x101

    invoke-virtual {p1, v0, v2}, Lcom/drew/metadata/mp4/Mp4Directory;->setDate(ILjava/util/Date;)V

    .line 87
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->duration:J

    iget-wide v2, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->timescale:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->duration:J

    .line 88
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->duration:J

    const/16 v2, 0x103

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/Mp4Directory;->setLong(IJ)V

    .line 89
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->timescale:J

    const/16 v2, 0x102

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/Mp4Directory;->setLong(IJ)V

    .line 91
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->matrix:[I

    const/16 v1, 0x10f

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/Mp4Directory;->setIntArray(I[I)V

    .line 94
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->rate:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-double v1, v1

    const v3, 0xffff

    and-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    .line 95
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v3, v7

    add-double/2addr v1, v3

    const/16 v0, 0x104

    .line 96
    invoke-virtual {p1, v0, v1, v2}, Lcom/drew/metadata/mp4/Mp4Directory;->setDouble(ID)V

    .line 99
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->volume:I

    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-double v1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v0

    .line 100
    invoke-static {v5, v6, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    const/16 v0, 0x105

    .line 101
    invoke-virtual {p1, v0, v1, v2}, Lcom/drew/metadata/mp4/Mp4Directory;->setDouble(ID)V

    .line 103
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->nextTrackID:J

    const/16 v2, 0x10e

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/Mp4Directory;->setLong(IJ)V

    return-void
.end method
