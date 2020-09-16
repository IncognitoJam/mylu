.class public Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "TimeToSampleAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;
    }
.end annotation


# instance fields
.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;",
            ">;"
        }
    .end annotation
.end field

.field numberOfEntries:J

.field sampleCount:J

.field sampleDuration:J


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
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->numberOfEntries:J

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->entries:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    int-to-long v0, p2

    .line 48
    iget-wide v2, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->numberOfEntries:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 49
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->entries:Ljava/util/ArrayList;

    new-instance v1, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;

    invoke-direct {v1, p0, p1}, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;-><init>(Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;Lcom/drew/lang/SequentialReader;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->sampleCount:J

    .line 52
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->sampleDuration:J

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V
    .locals 3

    .line 69
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->sampleDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0xe

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setFloat(IF)V

    return-void
.end method
