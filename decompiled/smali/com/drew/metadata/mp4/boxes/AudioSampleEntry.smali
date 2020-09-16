.class public Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;
.super Lcom/drew/metadata/mp4/boxes/SampleEntry;
.source "AudioSampleEntry.java"


# instance fields
.field channelcount:I

.field samplerate:J

.field samplesize:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/SampleEntry;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    const-wide/16 v0, 0x8

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 42
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->channelcount:I

    .line 43
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->samplesize:I

    const-wide/16 v0, 0x2

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 46
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->samplerate:J

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V
    .locals 3

    .line 54
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->channelcount:I

    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setInt(II)V

    .line 55
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->samplesize:I

    const/16 v1, 0x67

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setInt(II)V

    .line 56
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->samplerate:J

    const/16 v2, 0x68

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setLong(IJ)V

    return-void
.end method
