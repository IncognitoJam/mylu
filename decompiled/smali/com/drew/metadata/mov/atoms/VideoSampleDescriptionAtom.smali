.class public Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;
.super Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;
.source "VideoSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom<",
        "Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 49
    iget-object v2, v0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;->sampleDescriptions:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;

    .line 51
    iget-object v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->vendor:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4, v3, v1}, Lcom/drew/metadata/mov/QuickTimeDictionary;->setLookup(ILjava/lang/String;Lcom/drew/metadata/Directory;)V

    .line 52
    iget-object v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->dataFormat:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v4, v3, v1}, Lcom/drew/metadata/mov/QuickTimeDictionary;->setLookup(ILjava/lang/String;Lcom/drew/metadata/Directory;)V

    .line 54
    iget-wide v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->temporalQuality:J

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v4}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setLong(IJ)V

    .line 55
    iget-wide v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->spatialQuality:J

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3, v4}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setLong(IJ)V

    .line 56
    iget v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->width:I

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setInt(II)V

    .line 57
    iget v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->height:I

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setInt(II)V

    .line 58
    iget-object v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->compressorName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setString(ILjava/lang/String;)V

    .line 60
    iget v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->depth:I

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setInt(II)V

    .line 61
    iget v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->colorTableID:I

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setInt(II)V

    .line 63
    iget-wide v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->horizontalResolution:J

    const-wide/32 v5, -0x10000

    and-long/2addr v3, v5

    const/16 v7, 0x10

    shr-long/2addr v3, v7

    long-to-double v3, v3

    .line 64
    iget-wide v8, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->horizontalResolution:J

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-double v8, v8

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v8, v8, v16

    add-double/2addr v3, v8

    const/4 v8, 0x6

    .line 65
    invoke-virtual {v1, v8, v3, v4}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setDouble(ID)V

    .line 67
    iget-wide v3, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->verticalResolution:J

    and-long/2addr v3, v5

    shr-long/2addr v3, v7

    long-to-double v3, v3

    .line 68
    iget-wide v5, v2, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;->verticalResolution:J

    and-long/2addr v5, v10

    long-to-double v5, v5

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    const/4 v2, 0x7

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setDouble(ID)V

    return-void
.end method

.method bridge synthetic getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SampleDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;->getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;

    move-result-object p1

    return-object p1
.end method

.method getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;

    invoke-direct {v0, p0, p1}, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom$VideoSampleDescription;-><init>(Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V

    return-object v0
.end method
