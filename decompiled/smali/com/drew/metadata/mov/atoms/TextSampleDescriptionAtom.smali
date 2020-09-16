.class public Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;
.super Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom;
.source "TextSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/atoms/SampleDescriptionAtom<",
        "Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;",
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
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;)V
    .locals 11

    .line 48
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;->sampleDescriptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;

    .line 50
    iget v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v4, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    .line 52
    iget v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v3, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    const/4 v2, 0x3

    .line 54
    iget v6, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1, v2, v6}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    .line 56
    iget v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v6, 0x40

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v8, 0x4

    invoke-virtual {p1, v8, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    const/4 v2, 0x5

    .line 58
    iget v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v10, 0x80

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_4

    const-string v9, "Horizontal"

    goto :goto_4

    :cond_4
    const-string v9, "Vertical"

    :goto_4
    invoke-virtual {p1, v2, v9}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    const/4 v2, 0x6

    .line 60
    iget v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v10, 0x100

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_5

    const-string v9, "Reverse"

    goto :goto_5

    :cond_5
    const-string v9, "Normal"

    :goto_5
    invoke-virtual {p1, v2, v9}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    const/4 v2, 0x7

    .line 62
    iget v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v10, 0x200

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {p1, v2, v9}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    .line 64
    iget v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v9, 0x1000

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1, v5, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    const/16 v2, 0x9

    .line 66
    iget v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v10, 0x2000

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {p1, v2, v9}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    const/16 v2, 0xa

    .line 68
    iget v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    const/16 v10, 0x4000

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setBoolean(IZ)V

    .line 70
    iget v1, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->textJustification:I

    const/4 v2, -0x1

    const/16 v9, 0xb

    if-eq v1, v2, :cond_c

    if-eqz v1, :cond_b

    if-eq v1, v4, :cond_a

    goto :goto_9

    :cond_a
    const-string v1, "Center"

    .line 75
    invoke-virtual {p1, v9, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_9

    :cond_b
    const-string v1, "Left"

    .line 72
    invoke-virtual {p1, v9, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_9

    :cond_c
    const-string v1, "Right"

    .line 78
    invoke-virtual {p1, v9, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    :goto_9
    const/16 v1, 0xc

    .line 81
    iget-object v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->backgroundColor:[I

    invoke-virtual {p1, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setIntArray(I[I)V

    const/16 v1, 0xd

    .line 82
    iget-wide v9, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->defaultTextBox:J

    invoke-virtual {p1, v1, v9, v10}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setLong(IJ)V

    const/16 v1, 0xe

    .line 83
    iget v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->fontNumber:I

    invoke-virtual {p1, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setInt(II)V

    .line 85
    iget v1, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->fontFace:I

    const/16 v2, 0xf

    if-eq v1, v4, :cond_13

    if-eq v1, v3, :cond_12

    if-eq v1, v8, :cond_11

    if-eq v1, v5, :cond_10

    const/16 v3, 0x10

    if-eq v1, v3, :cond_f

    if-eq v1, v7, :cond_e

    if-eq v1, v6, :cond_d

    goto :goto_a

    :cond_d
    const-string v1, "Extend"

    .line 105
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_e
    const-string v1, "Condense"

    .line 102
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_f
    const-string v1, "Shadow"

    .line 99
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_10
    const-string v1, "Outline"

    .line 96
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v1, "Underline"

    .line 93
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_12
    const-string v1, "Italic"

    .line 90
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    goto :goto_a

    :cond_13
    const-string v1, "Bold"

    .line 87
    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

    :goto_a
    const/16 v1, 0x10

    .line 108
    iget-object v2, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->foregroundColor:[I

    invoke-virtual {p1, v1, v2}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setIntArray(I[I)V

    const/16 v1, 0x11

    .line 109
    iget-object v0, v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->textName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeTextDirectory;->setString(ILjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;->getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;

    move-result-object p1

    return-object p1
.end method

.method getSampleDescription(Lcom/drew/lang/SequentialReader;)Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;

    invoke-direct {v0, p0, p1}, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;-><init>(Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V

    return-object v0
.end method
