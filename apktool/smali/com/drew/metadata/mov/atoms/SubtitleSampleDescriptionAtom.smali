.class public Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;
.super Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;
.source "SubtitleSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom<",
        "Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;",
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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;)V
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;->sampleDescriptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;

    .line 77
    iget v2, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->displayFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v4, v2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setBoolean(IZ)V

    .line 78
    iget v2, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->displayFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setBoolean(IZ)V

    const/4 v2, 0x3

    .line 79
    iget v5, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->displayFlags:I

    const/high16 v6, -0x40000000    # -2.0f

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setBoolean(IZ)V

    .line 81
    iget-wide v1, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->defaultTextBox:J

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setLong(IJ)V

    const/4 v1, 0x5

    .line 82
    iget v2, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontIdentifier:I

    invoke-virtual {p1, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setInt(II)V

    .line 83
    iget v1, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontFace:I

    const/4 v2, 0x6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "Underline"

    .line 91
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "Italic"

    .line 88
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "Bold"

    .line 85
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setString(ILjava/lang/String;)V

    :goto_2
    const/4 v1, 0x7

    .line 94
    iget v2, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontSize:I

    invoke-virtual {p1, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setInt(II)V

    const/16 v1, 0x8

    .line 95
    iget-object v0, v0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->foregroundColor:[I

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleDirectory;->setIntArray(I[I)V

    return-void
.end method

.method bridge synthetic getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SampleDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;->getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;

    move-result-object p1

    return-object p1
.end method

.method getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
