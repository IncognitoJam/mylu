.class public Lcom/drew/metadata/jpeg/JpegDhtReader;
.super Ljava/lang/Object;
.source "JpegDhtReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Lcom/drew/lang/SequentialReader;I)[B
    .locals 5
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 90
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Marker "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/drew/imaging/jpeg/JpegSegmentType;->fromByte(B)Lcom/drew/imaging/jpeg/JpegSegmentType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " found inside DHT segment"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    :goto_1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 7
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 60
    const-class v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;-><init>()V

    .line 63
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 67
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->available()I

    move-result p2

    if-lez p2, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result p2

    and-int/lit16 v1, p2, 0xf0

    shr-int/lit8 v1, v1, 0x4

    .line 69
    invoke-static {v1}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;->typeOf(I)Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;

    move-result-object v1

    and-int/lit8 p2, p2, 0xf

    const/16 v2, 0x10

    .line 72
    invoke-direct {p0, p1, v2}, Lcom/drew/metadata/jpeg/JpegDhtReader;->getBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v2

    .line 74
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-byte v6, v2, v4

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/drew/metadata/jpeg/JpegDhtReader;->getBytes(Lcom/drew/lang/SequentialReader;I)[B

    move-result-object v3

    .line 78
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getTables()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;

    invoke-direct {v5, v1, p2, v2, v3}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;-><init>(Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable$HuffmanTableClass;I[B[B)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->addError(Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getTables()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->setInt(II)V

    return-void
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 1
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

    .line 44
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

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

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 50
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p3}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/drew/metadata/jpeg/JpegDhtReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method
