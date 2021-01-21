.class public Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "TimeToSampleBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;
    }
.end annotation


# instance fields
.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;",
            ">;"
        }
    .end annotation
.end field

.field entryCount:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 43
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->entryCount:J

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->entries:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    int-to-long v0, p2

    .line 45
    iget-wide v2, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->entryCount:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 46
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->entries:Ljava/util/ArrayList;

    new-instance v7, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;-><init>(Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;JJ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const/16 v2, 0x68

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setDouble(ID)V

    return-void
.end method

.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->entries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;

    iget-wide v1, v1, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;->sampleDelta:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x72

    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setFloat(IF)V

    return-void
.end method
