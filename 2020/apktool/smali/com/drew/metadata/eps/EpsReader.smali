.class public Lcom/drew/metadata/eps/EpsReader;
.super Ljava/lang/Object;
.source "EpsReader.java"


# instance fields
.field private _previousTag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToDirectory(Lcom/drew/metadata/eps/EpsDirectory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/drew/metadata/eps/EpsDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/drew/metadata/eps/EpsDirectory;->_tagIntegerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    .line 180
    sget-object v0, Lcom/drew/metadata/eps/EpsDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/drew/metadata/eps/EpsDirectory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p3}, Lcom/drew/metadata/eps/EpsDirectory;->setString(ILjava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/eps/EpsReader;->_previousTag:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lcom/drew/metadata/eps/EpsReader;->_previousTag:I

    goto :goto_0

    .line 177
    :cond_2
    iget v0, p0, Lcom/drew/metadata/eps/EpsReader;->_previousTag:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/drew/metadata/eps/EpsReader;->_previousTag:I

    invoke-virtual {p1, v2}, Lcom/drew/metadata/eps/EpsDirectory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/drew/metadata/eps/EpsDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {p1, p3}, Lcom/drew/metadata/eps/EpsReader;->extractImageData(Lcom/drew/metadata/eps/EpsDirectory;Ljava/lang/String;)V

    .line 189
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/drew/metadata/eps/EpsReader;->_previousTag:I

    return-void
.end method

.method private static decodeHexCommentBlock(Lcom/drew/lang/SequentialReader;)[B
    .locals 13
    .param p0    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const/16 v6, 0xa

    if-nez v2, :cond_b

    .line 322
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v12, :cond_7

    const/4 v7, -0x1

    if-eq v3, v11, :cond_3

    if-eq v3, v9, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {v4}, Lcom/drew/metadata/eps/EpsReader;->tryHexToInt(B)I

    move-result v3

    if-ne v3, v7, :cond_2

    return-object v10

    :cond_2
    add-int/2addr v3, v5

    .line 367
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 352
    :cond_3
    invoke-static {v4}, Lcom/drew/metadata/eps/EpsReader;->tryHexToInt(B)I

    move-result v3

    if-eq v3, v7, :cond_4

    mul-int/lit8 v3, v3, 0x10

    move v5, v3

    const/4 v3, 0x3

    goto :goto_0

    :cond_4
    if-eq v4, v8, :cond_6

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    return-object v10

    :cond_6
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    if-eq v4, v7, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_9
    if-eq v4, v6, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v4, v7, :cond_0

    const/16 v3, 0x25

    if-eq v4, v3, :cond_a

    return-object v10

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :cond_b
    :goto_3
    if-eq v4, v6, :cond_c

    .line 376
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    goto :goto_3

    .line 378
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private extract(Lcom/drew/metadata/eps/EpsDirectory;Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V
    .locals 4
    .param p1    # Lcom/drew/metadata/eps/EpsDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    :goto_1
    invoke-virtual {p3}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 127
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_3

    return-void

    :cond_3
    const-string v2, ":"

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-direct {p0, p1, v1, v2}, Lcom/drew/metadata/eps/EpsReader;->addToDirectory(Lcom/drew/metadata/eps/EpsDirectory;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "%BeginPhotoshop"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    invoke-static {p2, p3}, Lcom/drew/metadata/eps/EpsReader;->extractPhotoshopData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V

    goto :goto_0

    :cond_5
    const-string v2, "%%BeginICCProfile"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    invoke-static {p2, p3}, Lcom/drew/metadata/eps/EpsReader;->extractIccData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V

    goto :goto_0

    :cond_6
    const-string v2, "%begin_xml_packet"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {p2, p3}, Lcom/drew/metadata/eps/EpsReader;->extractXmpData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V

    goto :goto_0
.end method

.method private static extractIccData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/drew/metadata/eps/EpsReader;->decodeHexCommentBlock(Lcom/drew/lang/SequentialReader;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v0}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    invoke-virtual {v0, v1, p0}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method private static extractImageData(Lcom/drew/metadata/eps/EpsDirectory;Ljava/lang/String;)V
    .locals 7
    .param p0    # Lcom/drew/metadata/eps/EpsDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/eps/EpsDirectory;->setString(ILjava/lang/String;)V

    const-string v0, " "

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 203
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 204
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 205
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v5, 0x1c

    .line 208
    invoke-virtual {p0, v5}, Lcom/drew/metadata/eps/EpsDirectory;->containsTag(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    invoke-virtual {p0, v5, v1}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    :cond_0
    const/16 v5, 0x1d

    .line 210
    invoke-virtual {p0, v5}, Lcom/drew/metadata/eps/EpsDirectory;->containsTag(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 211
    invoke-virtual {p0, v5, v3}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    :cond_1
    const/16 v5, 0x1e

    .line 212
    invoke-virtual {p0, v5}, Lcom/drew/metadata/eps/EpsDirectory;->containsTag(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 213
    invoke-virtual {p0, v5, p1}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    :cond_2
    const/16 v5, 0x1f

    .line 215
    invoke-virtual {p0, v5}, Lcom/drew/metadata/eps/EpsDirectory;->containsTag(I)Z

    move-result v6

    if-nez v6, :cond_7

    if-ne p1, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_0
    if-eqz v4, :cond_7

    mul-int v4, v4, v1

    mul-int v4, v4, v3

    .line 225
    invoke-virtual {p0, v5, v4}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    :cond_7
    return-void
.end method

.method private static extractPhotoshopData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-static {p1}, Lcom/drew/metadata/eps/EpsReader;->decodeHexCommentBlock(Lcom/drew/lang/SequentialReader;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    new-instance v0, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {v0}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    new-instance v1, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/drew/metadata/photoshop/PhotoshopReader;->extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method private static extractXmpData(Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V
    .locals 2
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xpacket end=\"w\"?>"

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/drew/metadata/eps/EpsReader;->readUntil(Lcom/drew/lang/SequentialReader;[B)[B

    move-result-object p1

    .line 257
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 258
    new-instance p1, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {p1}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/drew/metadata/xmp/XmpReader;->extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V

    return-void
.end method

.method private static readUntil(Lcom/drew/lang/SequentialReader;[B)[B
    .locals 6
    .param p0    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    .line 274
    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 278
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static tryHexToInt(B)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public extract(Ljava/io/InputStream;Lcom/drew/metadata/Metadata;)V
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/drew/lang/RandomAccessStreamReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 57
    new-instance v1, Lcom/drew/metadata/eps/EpsDirectory;

    invoke-direct {v1}, Lcom/drew/metadata/eps/EpsDirectory;-><init>()V

    .line 58
    invoke-virtual {p2, v1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v2}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v3

    const v4, -0x3a2f2c3a

    if-eq v3, v4, :cond_1

    const v0, 0x25215053

    if-eq v3, v0, :cond_0

    const-string p1, "File type not supported."

    .line 100
    invoke-virtual {v1, p1}, Lcom/drew/metadata/eps/EpsDirectory;->addError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 97
    new-instance v0, Lcom/drew/lang/StreamReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/drew/metadata/eps/EpsReader;->extract(Lcom/drew/metadata/eps/EpsDirectory;Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V

    goto/16 :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0, v2}, Lcom/drew/lang/RandomAccessStreamReader;->setMotorolaByteOrder(Z)V

    const/4 p1, 0x4

    .line 68
    invoke-virtual {v0, p1}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result p1

    const/16 v3, 0x8

    .line 69
    invoke-virtual {v0, v3}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v3

    const/16 v4, 0xc

    .line 70
    invoke-virtual {v0, v4}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v4

    const/16 v5, 0x10

    .line 71
    invoke-virtual {v0, v5}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v5

    const/16 v6, 0x14

    .line 72
    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v6

    const/16 v7, 0x18

    .line 73
    invoke-virtual {v0, v7}, Lcom/drew/lang/RandomAccessStreamReader;->getInt32(I)I

    move-result v7

    if-eqz v7, :cond_2

    const/16 v4, 0x20

    .line 78
    invoke-virtual {v1, v4, v7}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    const/16 v4, 0x21

    .line 79
    invoke-virtual {v1, v4, v6}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    .line 82
    :try_start_0
    new-instance v4, Lcom/drew/lang/ByteArrayReader;

    invoke-virtual {v0, v6, v7}, Lcom/drew/lang/RandomAccessStreamReader;->getBytes(II)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 83
    new-instance v5, Lcom/drew/imaging/tiff/TiffReader;

    invoke-direct {v5}, Lcom/drew/imaging/tiff/TiffReader;-><init>()V

    new-instance v6, Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;-><init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    invoke-virtual {v5, v4, v6, v2}, Lcom/drew/imaging/tiff/TiffReader;->processTiff(Lcom/drew/lang/RandomAccessReader;Lcom/drew/imaging/tiff/TiffHandler;I)V
    :try_end_0
    .catch Lcom/drew/imaging/tiff/TiffProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process TIFF data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/drew/imaging/tiff/TiffProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/eps/EpsDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const/16 v2, 0x22

    .line 88
    invoke-virtual {v1, v2, v5}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    const/16 v2, 0x23

    .line 89
    invoke-virtual {v1, v2, v4}, Lcom/drew/metadata/eps/EpsDirectory;->setInt(II)V

    .line 93
    :cond_3
    :goto_0
    new-instance v2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-virtual {v0, p1, v3}, Lcom/drew/lang/RandomAccessStreamReader;->getBytes(II)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    invoke-direct {p0, v1, p2, v2}, Lcom/drew/metadata/eps/EpsReader;->extract(Lcom/drew/metadata/eps/EpsDirectory;Lcom/drew/metadata/Metadata;Lcom/drew/lang/SequentialReader;)V

    :goto_1
    return-void
.end method
