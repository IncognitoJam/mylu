.class Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "SoundSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundSampleDescription"
.end annotation


# instance fields
.field compressionID:I

.field numberOfChannels:I

.field packetSize:I

.field revisionLevel:I

.field sampleRate:J

.field sampleSize:I

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;

.field vendor:I

.field version:I


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;

    .line 69
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 71
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->version:I

    .line 72
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->revisionLevel:I

    .line 73
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->vendor:I

    .line 74
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->numberOfChannels:I

    .line 75
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->sampleSize:I

    .line 76
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->compressionID:I

    .line 77
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->packetSize:I

    .line 78
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->sampleRate:J

    return-void
.end method
