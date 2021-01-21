.class public Lcom/drew/metadata/mov/atoms/SampleDescription;
.super Ljava/lang/Object;
.source "SampleDescription.java"


# instance fields
.field dataFormat:Ljava/lang/String;

.field dataReferenceIndex:I

.field sampleDescriptionSize:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/SampleDescription;->sampleDescriptionSize:J

    const/4 v0, 0x4

    .line 41
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/drew/metadata/mov/atoms/SampleDescription;->dataFormat:Ljava/lang/String;

    const-wide/16 v0, 0x6

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 43
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SampleDescription;->dataReferenceIndex:I

    return-void
.end method
