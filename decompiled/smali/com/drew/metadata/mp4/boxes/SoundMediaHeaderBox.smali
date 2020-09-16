.class public Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "SoundMediaHeaderBox.java"


# instance fields
.field balance:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 39
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;->balance:I

    const-wide/16 v0, 0x2

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V
    .locals 9

    .line 45
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;->balance:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    int-to-double v1, v1

    const v3, 0xffff

    and-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    .line 46
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    const/16 v0, 0x69

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setDouble(ID)V

    return-void
.end method
