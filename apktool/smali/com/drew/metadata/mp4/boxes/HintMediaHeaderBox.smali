.class public Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "HintMediaHeaderBox.java"


# instance fields
.field avgPDUsize:I

.field avgbitrate:J

.field maxPDUsize:I

.field maxbitrate:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 42
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->maxPDUsize:I

    .line 43
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->avgPDUsize:I

    .line 44
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->maxbitrate:J

    .line 45
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->avgbitrate:J

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4HintDirectory;)V
    .locals 3

    .line 50
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->maxPDUsize:I

    const/16 v1, 0x65

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->setInt(II)V

    .line 51
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->avgPDUsize:I

    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->setInt(II)V

    .line 52
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->maxbitrate:J

    const/16 v2, 0x67

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->setLong(IJ)V

    .line 53
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/HintMediaHeaderBox;->avgbitrate:J

    const/16 v2, 0x68

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->setLong(IJ)V

    return-void
.end method
