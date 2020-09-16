.class Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;
.super Ljava/lang/Object;
.source "TimeToSampleAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field sampleCount:J

.field sampleDuration:J

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;->this$0:Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;->sampleCount:J

    .line 63
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom$Entry;->sampleDuration:J

    return-void
.end method
