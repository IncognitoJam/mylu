.class public abstract Lcom/drew/lang/RandomAccessReader;
.super Ljava/lang/Object;
.source "RandomAccessReader.java"


# instance fields
.field private _isMotorolaByteOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    div-int/lit8 v0, p1, 0x8

    .line 143
    rem-int/lit8 p1, p1, 0x8

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shr-int p1, v0, p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract getByte(I)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(II)[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDouble64(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getInt64(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat32(I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt16(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 212
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    int-to-short p1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getInt24(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 234
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    const/high16 v2, 0xff0000

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 241
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getInt32(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 284
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    const/high16 v2, 0xff0000

    const/high16 v3, -0x1000000

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 292
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getInt64(I)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x8

    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 310
    iget-boolean v3, v0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const/16 v4, 0x18

    const-wide v5, 0xff00000000L

    const/16 v7, 0x20

    const-wide v8, 0xff0000000000L

    const/16 v10, 0x28

    const-wide/high16 v11, 0xff000000000000L

    const/16 v13, 0x30

    const-wide/high16 v14, -0x100000000000000L

    const/16 v16, 0x38

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual/range {p0 .. p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    int-to-long v2, v3

    shl-long v2, v2, v16

    and-long/2addr v2, v14

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v14}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v14

    int-to-long v14, v14

    shl-long v13, v14, v13

    and-long/2addr v11, v13

    or-long/2addr v2, v11

    add-int/lit8 v11, v1, 0x2

    invoke-virtual {v0, v11}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v11

    int-to-long v11, v11

    shl-long v10, v11, v10

    and-long/2addr v8, v10

    or-long/2addr v2, v8

    add-int/lit8 v8, v1, 0x3

    invoke-virtual {v0, v8}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v8

    int-to-long v8, v8

    shl-long v7, v8, v7

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {v0, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v5

    int-to-long v5, v5

    shl-long v4, v5, v4

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    invoke-virtual {v0, v4}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v0, v4}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    :goto_0
    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long v1, v2, v4

    return-wide v1

    :cond_0
    add-int/lit8 v2, v1, 0x7

    .line 322
    invoke-virtual {v0, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v2

    int-to-long v2, v2

    shl-long v2, v2, v16

    and-long/2addr v2, v14

    add-int/lit8 v14, v1, 0x6

    invoke-virtual {v0, v14}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v14

    int-to-long v14, v14

    shl-long v13, v14, v13

    and-long/2addr v11, v13

    or-long/2addr v2, v11

    add-int/lit8 v11, v1, 0x5

    invoke-virtual {v0, v11}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v11

    int-to-long v11, v11

    shl-long v10, v11, v10

    and-long/2addr v8, v10

    or-long/2addr v2, v8

    add-int/lit8 v8, v1, 0x4

    invoke-virtual {v0, v8}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v8

    int-to-long v8, v8

    shl-long v7, v8, v7

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v0, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v5

    int-to-long v5, v5

    shl-long v4, v5, v4

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual/range {p0 .. p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    goto :goto_0
.end method

.method public getInt8(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    return p1
.end method

.method public abstract getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getNullTerminatedBytes(II)[B
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, p2, :cond_1

    return-object p1

    .line 440
    :cond_1
    new-array p2, v1, [B

    if-lez v1, :cond_2

    .line 442
    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p2
.end method

.method public getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getNullTerminatedStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 0
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object p1

    .line 415
    new-instance p2, Lcom/drew/metadata/StringValue;

    invoke-direct {p2, p1, p3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public getS15Fixed16(I)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 345
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const-wide/high16 v1, 0x40f0000000000000L    # 65536.0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-float v0, v0

    add-int/lit8 v3, p1, 0x2

    .line 348
    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    float-to-double v3, v0

    int-to-double v5, p1

    div-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-float p1, v3

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 353
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-float v0, v0

    add-int/lit8 v3, p1, 0x1

    .line 355
    invoke-virtual {p0, v3}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getString(IILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    .line 388
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 390
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method public getString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 1
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getUInt16(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 190
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getUInt32(I)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 258
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    const-wide/16 v1, 0xff

    const-wide/32 v3, 0xff00

    const/16 v5, 0x8

    const-wide/32 v6, 0xff0000

    const/16 v8, 0x10

    const-wide v9, 0xff000000L

    const/16 v11, 0x18

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v12, v0

    shl-long v11, v12, v11

    and-long/2addr v9, v11

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v11, v0

    shl-long/2addr v11, v8

    and-long/2addr v6, v11

    or-long/2addr v6, v9

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v8, v5

    and-long/2addr v3, v8

    or-long/2addr v3, v6

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    :goto_0
    int-to-long v5, p1

    and-long v0, v5, v1

    or-long/2addr v0, v3

    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 266
    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v12, v0

    shl-long v11, v12, v11

    and-long/2addr v9, v11

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v11, v0

    shl-long/2addr v11, v8

    and-long/2addr v6, v11

    or-long/2addr v6, v9

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v8, v5

    and-long/2addr v3, v8

    or-long/2addr v3, v6

    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    goto :goto_0
.end method

.method public getUInt8(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/drew/lang/RandomAccessReader;->validateIndex(II)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public isMotorolaByteOrder()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    return v0
.end method

.method protected abstract isValidIndex(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setMotorolaByteOrder(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/drew/lang/RandomAccessReader;->_isMotorolaByteOrder:Z

    return-void
.end method

.method public abstract toUnshiftedOffset(I)I
.end method

.method protected abstract validateIndex(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
