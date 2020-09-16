.class public Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;
.super Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;
.source "SoundSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom<",
        "Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;",
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
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;->sampleDescriptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;

    .line 51
    iget-object v1, v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->dataFormat:Ljava/lang/String;

    const/16 v2, 0x301

    invoke-static {v2, v1}, Lcom/drew/metadata/mov/QuickTimeDictionary;->lookup(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->setString(ILjava/lang/String;)V

    .line 52
    iget v1, v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->numberOfChannels:I

    const/16 v2, 0x302

    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->setInt(II)V

    .line 53
    iget v0, v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;->sampleSize:I

    const/16 v1, 0x303

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->setInt(II)V

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
    invoke-virtual {p0, p1}, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;->getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;

    move-result-object p1

    return-object p1
.end method

.method getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;

    invoke-direct {v0, p0, p1}, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom$SoundSampleDescription;-><init>(Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V

    return-object v0
.end method
