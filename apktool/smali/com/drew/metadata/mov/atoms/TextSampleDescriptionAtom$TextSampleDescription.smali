.class Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "TextSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextSampleDescription"
.end annotation


# instance fields
.field backgroundColor:[I

.field defaultTextBox:J

.field displayFlags:I

.field fontFace:I

.field fontNumber:I

.field foregroundColor:[I

.field textJustification:I

.field textName:Ljava/lang/String;

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom;

    .line 125
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 127
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->displayFlags:I

    .line 128
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->textJustification:I

    const/4 p1, 0x3

    .line 129
    new-array v0, p1, [I

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->backgroundColor:[I

    .line 130
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->defaultTextBox:J

    const-wide/16 v0, 0x8

    .line 131
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 132
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->fontNumber:I

    .line 133
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->fontFace:I

    const-wide/16 v0, 0x1

    .line 134
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const-wide/16 v0, 0x2

    .line 135
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 136
    new-array p1, p1, [I

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p1, v2

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p1, v3

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    aput v0, p1, v4

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->foregroundColor:[I

    .line 137
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TextSampleDescriptionAtom$TextSampleDescription;->textName:Ljava/lang/String;

    return-void
.end method
