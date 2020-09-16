.class Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "TimecodeSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimecodeSampleDescription"
.end annotation


# instance fields
.field flags:I

.field frameDuration:I

.field numberOfFrames:I

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom;

.field timeScale:I


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom;

    .line 65
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    const-wide/16 v0, 0x4

    .line 67
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 68
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;->flags:I

    .line 69
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;->timeScale:I

    .line 70
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;->frameDuration:I

    .line 71
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/TimecodeSampleDescriptionAtom$TimecodeSampleDescription;->numberOfFrames:I

    const-wide/16 v0, 0x1

    .line 72
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    return-void
.end method
