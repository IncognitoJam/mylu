.class public Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "MovieHeaderAtom.java"


# instance fields
.field creationTime:J

.field currentTime:J

.field duration:J

.field matrixStructure:[I

.field modificationTime:J

.field nextTrackID:J

.field posterTime:J

.field preferredRate:I

.field preferredVolume:I

.field previewDuration:J

.field previewTime:J

.field selectionDuration:J

.field selectionTime:J

.field timescale:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/FullAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 58
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->creationTime:J

    .line 59
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->modificationTime:J

    .line 60
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->timescale:J

    .line 61
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->duration:J

    .line 62
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->preferredRate:I

    .line 63
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->preferredVolume:I

    const-wide/16 v0, 0xa

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 p2, 0x9

    .line 65
    new-array p2, p2, [I

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x2

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x3

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x4

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x5

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x6

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/4 v1, 0x7

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    const/16 v1, 0x8

    aput v0, p2, v1

    iput-object p2, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->matrixStructure:[I

    .line 76
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->previewTime:J

    .line 77
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->previewDuration:J

    .line 78
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->posterTime:J

    .line 79
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->selectionTime:J

    .line 80
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->selectionDuration:J

    .line 81
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->currentTime:J

    .line 82
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->nextTrackID:J

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/QuickTimeDirectory;)V
    .locals 9

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0x770

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 90
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 92
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->creationTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/16 v3, 0x100

    invoke-virtual {p1, v3, v2}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setDate(ILjava/util/Date;)V

    .line 93
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->modificationTime:J

    mul-long v3, v3, v5

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/16 v0, 0x101

    invoke-virtual {p1, v0, v2}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setDate(ILjava/util/Date;)V

    .line 96
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->duration:J

    iget-wide v2, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->timescale:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->duration:J

    .line 97
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->duration:J

    const/16 v2, 0x103

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 98
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->timescale:J

    const/16 v2, 0x102

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 101
    iget v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->preferredRate:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-double v1, v1

    const v3, 0xffff

    and-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    .line 102
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v3, v7

    add-double/2addr v1, v3

    const/16 v0, 0x104

    .line 103
    invoke-virtual {p1, v0, v1, v2}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setDouble(ID)V

    .line 106
    iget v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->preferredVolume:I

    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-double v1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v0

    .line 107
    invoke-static {v5, v6, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    const/16 v0, 0x105

    .line 108
    invoke-virtual {p1, v0, v1, v2}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setDouble(ID)V

    .line 110
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->previewTime:J

    const/16 v2, 0x108

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 111
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->previewDuration:J

    const/16 v2, 0x109

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 112
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->posterTime:J

    const/16 v2, 0x10a

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 113
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->selectionTime:J

    const/16 v2, 0x10b

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 114
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->selectionDuration:J

    const/16 v2, 0x10c

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 115
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->currentTime:J

    const/16 v2, 0x10d

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    .line 116
    iget-wide v0, p0, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->nextTrackID:J

    const/16 v2, 0x10e

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setLong(IJ)V

    return-void
.end method
