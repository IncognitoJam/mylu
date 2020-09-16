.class public abstract Lcom/drew/lang/SequentialReader;
.super Ljava/lang/Object;
.source "SequentialReader.java"


# instance fields
.field private _isMotorolaByteOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return-void
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract getByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes([BII)V
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(I)[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDouble64()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat32()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt16()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    :goto_0
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, -0x100

    goto :goto_0
.end method

.method public getInt32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const/high16 v1, -0x1000000

    const/high16 v2, 0xff0000

    const v3, 0xff00

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    :goto_0
    or-int/2addr v0, v1

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public getInt64()J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 242
    iget-boolean v1, v0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const-wide/high16 v2, -0x100000000000000L

    const/16 v4, 0x38

    const-wide/high16 v5, 0xff000000000000L

    const/16 v7, 0x30

    const-wide v8, 0xff0000000000L

    const/16 v10, 0x28

    const-wide v11, 0xff00000000L

    const/16 v13, 0x20

    const/16 v16, 0x18

    const-wide/32 v17, 0xff0000

    const/16 v19, 0x10

    const-wide/32 v20, 0xff00

    const/16 v22, 0x8

    const-wide/16 v23, 0xff

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-long v14, v1

    shl-long/2addr v14, v4

    and-long v1, v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v7

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v10

    and-long/2addr v3, v8

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v13

    and-long/2addr v3, v11

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v16

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v19

    and-long v3, v3, v17

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v22

    and-long v3, v3, v20

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v23

    :goto_0
    or-long/2addr v1, v3

    return-wide v1

    .line 254
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-long v14, v1

    and-long v14, v14, v23

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-long v2, v1

    shl-long v1, v2, v22

    and-long v1, v1, v20

    or-long/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v14, v3

    shl-long v14, v14, v19

    and-long v14, v14, v17

    or-long/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v14, v3

    shl-long v14, v14, v16

    const-wide v16, 0xff000000L

    and-long v14, v14, v16

    or-long/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v14, v3

    shl-long v13, v14, v13

    and-long/2addr v11, v13

    or-long/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v11, v3

    shl-long v10, v11, v10

    and-long/2addr v8, v10

    or-long/2addr v1, v8

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    and-long/2addr v5, v7

    or-long/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v5, v3

    shl-long v3, v5, v4

    const-wide/high16 v5, -0x100000000000000L

    and-long/2addr v3, v5

    goto :goto_0
.end method

.method public getInt8()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    return v0
.end method

.method public getNullTerminatedBytes(I)[B
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    aput-byte v3, v0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    return-object v0

    .line 384
    :cond_1
    new-array p1, v2, [B

    if-lez v2, :cond_2

    .line 386
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p1
.end method

.method public getNullTerminatedString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object p1

    .line 360
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract getPosition()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getS15Fixed16()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const-wide/high16 v1, 0x40f0000000000000L    # 65536.0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-float v0, v0

    .line 278
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    float-to-double v4, v0

    int-to-double v6, v3

    div-double/2addr v6, v1

    add-double/2addr v4, v6

    double-to-float v0, v4

    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 285
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-float v3, v3

    float-to-double v3, v3

    int-to-double v5, v0

    div-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-float v0, v3

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 312
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method public getString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/nio/charset/Charset;
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

    .line 321
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 322
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 1
    .param p2    # Ljava/nio/charset/Charset;
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

    .line 328
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getUInt16()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    :goto_0
    or-int/2addr v0, v1

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public getUInt32()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const-wide v1, 0xff000000L

    const/16 v3, 0x18

    const-wide/32 v4, 0xff0000

    const/16 v6, 0x10

    const-wide/32 v7, 0xff00

    const/16 v9, 0x8

    const-wide/16 v10, 0xff

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    shl-long/2addr v12, v3

    and-long v0, v12, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v9

    and-long/2addr v2, v7

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v10

    or-long/2addr v0, v2

    return-wide v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    and-long/2addr v10, v12

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    shl-long/2addr v12, v9

    and-long/2addr v7, v12

    or-long/2addr v7, v10

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v9, v0

    shl-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v6, v0

    shl-long/2addr v6, v3

    and-long v0, v6, v1

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public isMotorolaByteOrder()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return v0
.end method

.method public setMotorolaByteOrder(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return-void
.end method

.method public abstract skip(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trySkip(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
