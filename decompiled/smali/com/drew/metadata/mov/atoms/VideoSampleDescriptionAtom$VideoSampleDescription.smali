.class Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "VideoSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoSampleDescription"
.end annotation


# instance fields
.field colorTableID:I

.field compressorName:Ljava/lang/String;

.field dataSize:J

.field depth:I

.field frameCount:I

.field height:I

.field horizontalResolution:J

.field revisionLevel:I

.field spatialQuality:J

.field temporalQuality:J

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;

.field vendor:Ljava/lang/String;

.field version:I

.field verticalResolution:J

.field width:I


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;

    .line 91
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 93
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->version:I

    .line 94
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->revisionLevel:I

    const/4 p1, 0x4

    .line 95
    invoke-virtual {p2, p1}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->vendor:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->temporalQuality:J

    .line 97
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->spatialQuality:J

    .line 98
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->width:I

    .line 99
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->height:I

    .line 100
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->horizontalResolution:J

    .line 101
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->verticalResolution:J

    .line 102
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->dataSize:J

    .line 103
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->frameCount:I

    .line 104
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->compressorName:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->depth:I

    .line 106
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->colorTableID:I

    return-void
.end method
