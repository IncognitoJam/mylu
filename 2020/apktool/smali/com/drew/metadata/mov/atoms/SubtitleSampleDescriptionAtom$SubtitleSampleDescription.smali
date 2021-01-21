.class Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "SubtitleSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubtitleSampleDescription"
.end annotation


# instance fields
.field defaultTextBox:J

.field displayFlags:I

.field fontFace:I

.field fontIdentifier:I

.field fontSize:I

.field foregroundColor:[I

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom;

    .line 57
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 59
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->displayFlags:I

    const-wide/16 v0, 0x1

    .line 60
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 61
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const-wide/16 v0, 0x4

    .line 62
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 63
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->defaultTextBox:J

    .line 64
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 65
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontIdentifier:I

    .line 66
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontFace:I

    .line 67
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->fontSize:I

    const/4 p1, 0x3

    .line 68
    new-array p1, p1, [I

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/SubtitleSampleDescriptionAtom$SubtitleSampleDescription;->foregroundColor:[I

    return-void
.end method
