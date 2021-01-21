.class public Lcom/drew/metadata/jpeg/JpegReader;
.super Ljava/lang/Object;
.source "JpegReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 5

    .line 74
    new-instance v0, Lcom/drew/metadata/jpeg/JpegDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/jpeg/JpegDirectory;-><init>()V

    .line 75
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 78
    iget-byte p2, p3, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    sget-object p3, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    iget-byte p3, p3, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    sub-int/2addr p2, p3

    const/4 p3, -0x3

    invoke-virtual {v0, p3, p2}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 80
    new-instance p2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {p2, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 84
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    const/4 p1, 0x3

    .line 85
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 86
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p1

    const/4 v1, 0x5

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    :goto_0
    if-ge p3, p1, :cond_0

    .line 94
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v1

    .line 95
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v2

    .line 96
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v3

    .line 97
    new-instance v4, Lcom/drew/metadata/jpeg/JpegComponent;

    invoke-direct {v4, v1, v2, v3}, Lcom/drew/metadata/jpeg/JpegComponent;-><init>(III)V

    add-int/lit8 v1, p3, 0x6

    .line 98
    invoke-virtual {v0, v1, v4}, Lcom/drew/metadata/jpeg/JpegDirectory;->setObject(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->addError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 45
    new-array v0, v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;",
            "Lcom/drew/metadata/Metadata;",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 68
    invoke-virtual {p0, v0, p2, p3}, Lcom/drew/metadata/jpeg/JpegReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
