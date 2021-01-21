.class public Lcom/drew/metadata/webp/WebpRiffHandler;
.super Ljava/lang/Object;
.source "WebpRiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/riff/RiffHandler;


# instance fields
.field private final _metadata:Lcom/drew/metadata/Metadata;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

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

    .line 80
    new-instance v0, Lcom/drew/metadata/webp/WebpDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/webp/WebpDirectory;-><init>()V

    const-string v1, "EXIF"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance p1, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {p1}, Lcom/drew/metadata/exif/ExifReader;-><init>()V

    new-instance v0, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    iget-object p2, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, v0, p2}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "ICCP"

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance p1, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {p1}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v0, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    iget-object p2, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, v0, p2}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "XMP "

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    new-instance p1, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {p1}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    iget-object v0, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "VP8X"

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    array-length v1, p2

    if-ne v1, v2, :cond_3

    .line 88
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 89
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 94
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/drew/lang/RandomAccessReader;->getBit(I)Z

    move-result p2

    .line 97
    invoke-virtual {p1, v6}, Lcom/drew/lang/RandomAccessReader;->getBit(I)Z

    move-result v1

    .line 101
    invoke-virtual {p1, v6}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result v2

    const/4 v4, 0x7

    .line 102
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result p1

    add-int/2addr v2, v7

    .line 104
    invoke-virtual {v0, v5, v2}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    add-int/2addr p1, v7

    .line 105
    invoke-virtual {v0, v7, p1}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 106
    invoke-virtual {v0, v3, v1}, Lcom/drew/metadata/webp/WebpDirectory;->setBoolean(IZ)V

    .line 107
    invoke-virtual {v0, v6, p2}, Lcom/drew/metadata/webp/WebpDirectory;->setBoolean(IZ)V

    .line 109
    iget-object p1, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "VP8L"

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz v1, :cond_5

    array-length v1, p2

    if-le v1, v6, :cond_5

    .line 115
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 116
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 122
    :try_start_1
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result p2

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_4

    return-void

    .line 124
    :cond_4
    invoke-virtual {p1, v7}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p2

    .line 125
    invoke-virtual {p1, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    .line 126
    invoke-virtual {p1, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v3

    .line 127
    invoke-virtual {p1, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p1

    and-int/lit8 v4, v1, 0x3f

    shl-int/2addr v4, v9

    or-int/2addr p2, v4

    and-int/lit8 p1, p1, 0xf

    shl-int/2addr p1, v2

    shl-int/lit8 v2, v3, 0x2

    or-int/2addr p1, v2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v8

    or-int/2addr p1, v1

    add-int/2addr p2, v7

    .line 133
    invoke-virtual {v0, v5, p2}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    add-int/2addr p1, v7

    .line 134
    invoke-virtual {v0, v7, p1}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 136
    iget-object p1, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 139
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :cond_5
    const-string v1, "VP8 "

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    array-length p1, p2

    const/16 v1, 0x9

    if-le p1, v1, :cond_8

    .line 142
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 143
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 150
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p2

    const/16 v1, 0x9d

    if-ne p2, v1, :cond_7

    invoke-virtual {p1, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p2

    if-ne p2, v7, :cond_7

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p2

    const/16 v1, 0x2a

    if-eq p2, v1, :cond_6

    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {p1, v8}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result p2

    .line 155
    invoke-virtual {p1, v9}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result p1

    .line 157
    invoke-virtual {v0, v5, p2}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 158
    invoke-virtual {v0, v7, p1}, Lcom/drew/metadata/webp/WebpDirectory;->setInt(II)V

    .line 160
    iget-object p1, p0, Lcom/drew/metadata/webp/WebpRiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_7
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/webp/WebpDirectory;->addError(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public shouldAcceptChunk(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "VP8X"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VP8L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VP8 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EXIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ICCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XMP "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public shouldAcceptList(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public shouldAcceptRiffIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "WEBP"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
