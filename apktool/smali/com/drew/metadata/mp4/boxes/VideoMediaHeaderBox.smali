.class public Lcom/drew/metadata/mp4/boxes/VideoMediaHeaderBox;
.super Lcom/drew/metadata/mp4/boxes/FullBox;
.source "VideoMediaHeaderBox.java"


# instance fields
.field graphicsMode:I

.field opcolor:[I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FullBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 40
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VideoMediaHeaderBox;->graphicsMode:I

    const/4 p2, 0x3

    .line 41
    new-array p2, p2, [I

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    const/4 v0, 0x2

    aput p1, p2, v0

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/VideoMediaHeaderBox;->opcolor:[I

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/VideoMediaHeaderBox;->opcolor:[I

    const/16 v1, 0x70

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setIntArray(I[I)V

    .line 47
    iget v0, p0, Lcom/drew/metadata/mp4/boxes/VideoMediaHeaderBox;->graphicsMode:I

    const/16 v1, 0x6f

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setInt(II)V

    return-void
.end method
