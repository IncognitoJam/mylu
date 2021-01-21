.class public Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "TimecodeInformationMediaAtom.java"


# instance fields
.field backgroundColor:[I

.field fontName:Ljava/lang/String;

.field textColor:[I

.field textFace:I

.field textFont:I

.field textSize:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/FullAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 46
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textFont:I

    .line 47
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textFace:I

    .line 48
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textSize:I

    const-wide/16 v0, 0x2

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/4 p2, 0x3

    .line 50
    new-array v0, p2, [I

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textColor:[I

    .line 51
    new-array p2, p2, [I

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p2, v2

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p2, v3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p2, v4

    iput-object p2, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->backgroundColor:[I

    .line 52
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->fontName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;)V
    .locals 4

    .line 57
    iget v0, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textFont:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setInt(II)V

    .line 58
    iget v0, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textFace:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Extend"

    .line 78
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Condense"

    .line 75
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Shadow"

    .line 72
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Outline"

    .line 69
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Underline"

    .line 66
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Italic"

    .line 63
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "Bold"

    .line 60
    invoke-virtual {p1, v3, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x7

    .line 81
    iget v1, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textSize:I

    invoke-virtual {p1, v0, v1}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setInt(II)V

    .line 82
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->textColor:[I

    invoke-virtual {p1, v2, v0}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setIntArray(I[I)V

    const/16 v0, 0x9

    .line 83
    iget-object v1, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->backgroundColor:[I

    invoke-virtual {p1, v0, v1}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setIntArray(I[I)V

    const/16 v0, 0xa

    .line 84
    iget-object v1, p0, Lcom/drew/metadata/mov/atoms/TimecodeInformationMediaAtom;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeDirectory;->setString(ILjava/lang/String;)V

    return-void
.end method
