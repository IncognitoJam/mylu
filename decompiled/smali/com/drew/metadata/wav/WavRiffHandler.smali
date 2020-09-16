.class public Lcom/drew/metadata/wav/WavRiffHandler;
.super Ljava/lang/Object;
.source "WavRiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/riff/RiffHandler;


# instance fields
.field private _currentList:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _directory:Lcom/drew/metadata/wav/WavDirectory;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_currentList:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/drew/metadata/wav/WavDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/wav/WavDirectory;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    .line 39
    iget-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public processChunk(Ljava/lang/String;[B)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "fmt "

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 70
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 71
    invoke-virtual {p1, v4}, Lcom/drew/lang/ByteArrayReader;->setMotorolaByteOrder(Z)V

    .line 72
    invoke-virtual {p1, v4}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result p2

    .line 73
    invoke-virtual {p1, v2}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v0

    .line 74
    invoke-virtual {p1, v3}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result v4

    const/16 v6, 0x8

    .line 75
    invoke-virtual {p1, v6}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result v6

    const/16 v7, 0xc

    .line 76
    invoke-virtual {p1, v7}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result v7

    if-eq p2, v5, :cond_1

    .line 86
    sget-object p1, Lcom/drew/metadata/wav/WavDirectory;->_audioEncodingMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    sget-object v8, Lcom/drew/metadata/wav/WavDirectory;->_audioEncodingMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/drew/metadata/wav/WavDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    const-string p2, "Unknown"

    invoke-virtual {p1, v5, p2}, Lcom/drew/metadata/wav/WavDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v8, 0xe

    .line 81
    invoke-virtual {p1, v8}, Lcom/drew/lang/ByteArrayReader;->getInt16(I)S

    move-result p1

    .line 82
    iget-object v8, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, p1}, Lcom/drew/metadata/wav/WavDirectory;->setInt(II)V

    .line 83
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    sget-object v8, Lcom/drew/metadata/wav/WavDirectory;->_audioEncodingMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/drew/metadata/wav/WavDirectory;->setString(ILjava/lang/String;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1, v2, v0}, Lcom/drew/metadata/wav/WavDirectory;->setInt(II)V

    .line 94
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1, v1, v4}, Lcom/drew/metadata/wav/WavDirectory;->setInt(II)V

    .line 95
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1, v3, v6}, Lcom/drew/metadata/wav/WavDirectory;->setInt(II)V

    .line 96
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v7}, Lcom/drew/metadata/wav/WavDirectory;->setInt(II)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "data"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 99
    :try_start_1
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1, v3}, Lcom/drew/metadata/wav/WavDirectory;->containsTag(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    array-length p1, p2

    int-to-double p1, p1

    iget-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/wav/WavDirectory;->getDouble(I)D

    move-result-wide v6

    div-double/2addr p1, v6

    double-to-int v0, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 101
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    div-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 102
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    div-int/2addr v0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v6, 0x0

    .line 103
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr p1, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    int-to-double v6, v6

    sub-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "%1$02d:%2$02d:%3$02d"

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p1}, Lcom/drew/metadata/wav/WavDirectory;->setString(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/drew/metadata/MetadataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 108
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    const-string p2, "Error calculating duration: bytes per second not found"

    invoke-virtual {p1, p2}, Lcom/drew/metadata/wav/WavDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_3
    sget-object v0, Lcom/drew/metadata/wav/WavDirectory;->_tagIntegerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    sget-object v1, Lcom/drew/metadata/wav/WavDirectory;->_tagIntegerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    array-length p2, p2

    sub-int/2addr p2, v5

    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/wav/WavDirectory;->setString(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 114
    iget-object p2, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_directory:Lcom/drew/metadata/wav/WavDirectory;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/drew/metadata/wav/WavDirectory;->addError(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public shouldAcceptChunk(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fmt "

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_currentList:Ljava/lang/String;

    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/drew/metadata/wav/WavDirectory;->_tagIntegerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public shouldAcceptList(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "INFO"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iput-object v0, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_currentList:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, ""

    .line 61
    iput-object p1, p0, Lcom/drew/metadata/wav/WavRiffHandler;->_currentList:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public shouldAcceptRiffIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "WAVE"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
