.class public Lcom/drew/metadata/mp4/boxes/SampleEntry;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "SampleEntry.java"


# instance fields
.field dataReferenceIndex:I

.field format:Ljava/lang/String;

.field numberOfEntries:J

.field sampleDescriptionSize:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 41
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/SampleEntry;->numberOfEntries:J

    .line 42
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/SampleEntry;->sampleDescriptionSize:J

    const/4 p2, 0x4

    .line 43
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/SampleEntry;->format:Ljava/lang/String;

    const-wide/16 v0, 0x6

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 45
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mp4/boxes/SampleEntry;->dataReferenceIndex:I

    return-void
.end method
