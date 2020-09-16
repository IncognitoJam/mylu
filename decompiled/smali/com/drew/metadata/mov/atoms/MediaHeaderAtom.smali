.class public Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "MediaHeaderAtom.java"


# instance fields
.field creationTime:J

.field duration:J

.field language:I

.field modificationTime:J

.field quality:I

.field timescale:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/FullAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 46
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->creationTime:J

    .line 47
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->modificationTime:J

    .line 48
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->timescale:J

    .line 49
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->duration:J

    .line 50
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->language:I

    .line 51
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->quality:I

    .line 54
    iget-wide p1, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->creationTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long;

    .line 55
    iget-wide p1, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->modificationTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long;

    .line 56
    iget-wide p1, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->timescale:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    .line 57
    iget-wide p1, p0, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;->duration:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_DURATION:Ljava/lang/Long;

    return-void
.end method
