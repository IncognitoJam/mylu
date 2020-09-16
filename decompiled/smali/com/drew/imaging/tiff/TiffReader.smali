.class public Lcom/drew/imaging/tiff/TiffReader;
.super Ljava/lang/Object;
.source "TiffReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateTagOffset(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method public static processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V
    .locals 28
    .param p0    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/imaging/tiff/TiffHandler;",
            "Lcom/drew/lang/RandomAccessReader;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v1, 0x0

    .line 113
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    int-to-long v2, v10

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    if-gez v10, :cond_1

    goto/16 :goto_9

    .line 126
    :cond_1
    invoke-virtual {v9, v10}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_3

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    shr-int/lit8 v2, v2, 0x8

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v9, v3}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_3
    move-object v15, v1

    move v14, v2

    mul-int/lit8 v1, v14, 0xc

    const/4 v7, 0x2

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v10

    int-to-long v1, v1

    .line 139
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    const-string v0, "Illegally sized IFD"

    .line 140
    invoke-interface {v8, v0}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v15, :cond_4

    .line 248
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_4
    return-void

    :cond_5
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v6, v14, :cond_15

    .line 149
    :try_start_3
    invoke-static {v10, v6}, Lcom/drew/imaging/tiff/TiffReader;->calculateTagOffset(II)I

    move-result v1

    .line 152
    invoke-virtual {v9, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v5

    add-int/lit8 v2, v1, 0x2

    .line 155
    invoke-virtual {v9, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    .line 156
    invoke-static {v4}, Lcom/drew/imaging/tiff/TiffDataFormat;->fromTiffFormatCode(I)Lcom/drew/imaging/tiff/TiffDataFormat;

    move-result-object v2

    add-int/lit8 v3, v1, 0x4

    .line 159
    invoke-virtual {v9, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v12

    if-nez v2, :cond_a

    .line 163
    invoke-interface {v8, v5, v4, v12, v13}, Lcom/drew/imaging/tiff/TiffHandler;->tryCustomProcessFormat(IIJ)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v1, "Invalid TIFF tag format code %d for tag 0x%04X"

    .line 167
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v2, v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x1

    aput-object v3, v2, v17

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    add-int/lit8 v1, v16, 0x1

    const/4 v2, 0x5

    if-le v1, v2, :cond_7

    const-string v0, "Stopping processing as too many errors seen in TIFF IFD"

    .line 170
    invoke-interface {v8, v0}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v15, :cond_6

    .line 248
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_6
    return-void

    :cond_7
    move/from16 v16, v1

    :goto_2
    move/from16 v20, v6

    move/from16 v24, v14

    move-object/from16 v25, v15

    :cond_8
    const/16 v19, 0x2

    goto/16 :goto_8

    :cond_9
    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 175
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_a
    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 177
    invoke-virtual {v2}, Lcom/drew/imaging/tiff/TiffDataFormat;->getComponentSizeBytes()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v2, v2

    mul-long v2, v2, v12

    :goto_3
    const-string v7, "Illegal TIFF tag pointer offset"

    const-wide/16 v20, 0x4

    cmp-long v22, v2, v20

    if-lez v22, :cond_c

    add-int/lit8 v1, v1, 0x8

    .line 183
    :try_start_5
    invoke-virtual {v9, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v22

    add-long v24, v22, v2

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v26

    cmp-long v1, v24, v26

    if-lez v1, :cond_b

    .line 186
    invoke-interface {v8, v7}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_b
    move/from16 v24, v14

    move-object/from16 v25, v15

    int-to-long v14, v11

    add-long v14, v14, v22

    goto :goto_4

    :cond_c
    move/from16 v24, v14

    move-object/from16 v25, v15

    add-int/lit8 v1, v1, 0x8

    int-to-long v14, v1

    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v1, v14, v22

    if-ltz v1, :cond_13

    .line 195
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v26

    cmp-long v1, v14, v26

    if-lez v1, :cond_d

    goto/16 :goto_7

    :cond_d
    cmp-long v1, v2, v22

    if-ltz v1, :cond_12

    add-long v22, v14, v2

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v26

    cmp-long v1, v22, v26

    if-lez v1, :cond_e

    goto :goto_6

    :cond_e
    mul-long v20, v20, v12

    cmp-long v1, v2, v20

    if-nez v1, :cond_10

    move/from16 v20, v6

    const/4 v1, 0x0

    const/16 v21, 0x0

    :goto_5
    int-to-long v6, v1

    cmp-long v22, v6, v12

    if-gez v22, :cond_11

    .line 211
    invoke-interface {v8, v5}, Lcom/drew/imaging/tiff/TiffHandler;->tryEnterSubIfd(I)Z

    move-result v6

    if-eqz v6, :cond_f

    mul-int/lit8 v6, v1, 0x4

    int-to-long v6, v6

    add-long/2addr v6, v14

    long-to-int v7, v6

    .line 213
    invoke-virtual {v9, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v6

    add-int/2addr v6, v11

    .line 214
    invoke-static {v8, v9, v0, v6, v11}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    const/16 v21, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    move/from16 v20, v6

    const/16 v21, 0x0

    :cond_11
    if-nez v21, :cond_8

    long-to-int v15, v14

    long-to-int v7, v2

    move-object/from16 v1, p0

    move v2, v15

    move-object/from16 v3, p2

    move v14, v4

    move/from16 v4, p4

    move/from16 v21, v5

    move-object/from16 v5, p1

    move/from16 v6, v21

    const/16 v19, 0x2

    .line 220
    invoke-interface/range {v1 .. v7}, Lcom/drew/imaging/tiff/TiffHandler;->customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z

    move-result v1

    if-nez v1, :cond_14

    long-to-int v4, v12

    move-object/from16 v1, p0

    move/from16 v2, v21

    move v3, v15

    move v5, v14

    move-object/from16 v6, p1

    .line 222
    invoke-static/range {v1 .. v6}, Lcom/drew/imaging/tiff/TiffReader;->processTag(Lcom/drew/imaging/tiff/TiffHandler;IIIILcom/drew/lang/RandomAccessReader;)V

    goto :goto_8

    :cond_12
    :goto_6
    move/from16 v20, v6

    const/16 v19, 0x2

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal number of bytes for TIFF tag data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    :goto_7
    move/from16 v20, v6

    const/16 v19, 0x2

    .line 196
    invoke-interface {v8, v7}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    :cond_14
    :goto_8
    add-int/lit8 v6, v20, 0x1

    move/from16 v14, v24

    move-object/from16 v15, v25

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_15
    move v2, v14

    move-object/from16 v25, v15

    .line 227
    invoke-static {v10, v2}, Lcom/drew/imaging/tiff/TiffReader;->calculateTagOffset(II)I

    move-result v1

    .line 228
    invoke-virtual {v9, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    if-eqz v1, :cond_1a

    add-int/2addr v1, v11

    int-to-long v2, v1

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_17

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v25, :cond_16

    .line 248
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_16
    return-void

    :cond_17
    if-ge v1, v10, :cond_19

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v25, :cond_18

    .line 248
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_18
    return-void

    .line 241
    :cond_19
    :try_start_7
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->hasFollowerIfd()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 242
    invoke-static {v8, v9, v0, v1, v11}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 246
    :cond_1a
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v25, :cond_1b

    .line 248
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_1b
    return-void

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v25, v15

    goto :goto_a

    :cond_1c
    :goto_9
    :try_start_8
    const-string v0, "Ignored IFD marked to start outside data segment"

    .line 121
    invoke-interface {v8, v0}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v25, v1

    :goto_a
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    if-eqz v25, :cond_1d

    .line 248
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_1d
    throw v0
.end method

.method private static processTag(Lcom/drew/imaging/tiff/TiffHandler;IIIILcom/drew/lang/RandomAccessReader;)V
    .locals 7
    .param p0    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p4, :pswitch_data_0

    const/4 p2, 0x2

    .line 370
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Invalid TIFF tag format code %d for tag 0x%04X"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_0
    if-ne p3, v1, :cond_0

    .line 299
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getDouble64(I)D

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/drew/imaging/tiff/TiffHandler;->setDouble(ID)V

    goto/16 :goto_a

    .line 301
    :cond_0
    new-array p4, p3, [D

    :goto_0
    if-ge v0, p3, :cond_1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    .line 303
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getDouble64(I)D

    move-result-wide v1

    aput-wide v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setDoubleArray(I[D)V

    goto/16 :goto_a

    :pswitch_1
    if-ne p3, v1, :cond_2

    .line 289
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setFloat(IF)V

    goto/16 :goto_a

    .line 291
    :cond_2
    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    .line 293
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_3
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setFloatArray(I[F)V

    goto/16 :goto_a

    :pswitch_2
    if-ne p3, v1, :cond_4

    .line 269
    new-instance p3, Lcom/drew/lang/Rational;

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p4

    int-to-long v0, p4

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p2

    int-to-long p4, p2

    invoke-direct {p3, v0, v1, p4, p5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-interface {p0, p1, p3}, Lcom/drew/imaging/tiff/TiffHandler;->setRational(ILcom/drew/lang/Rational;)V

    goto/16 :goto_a

    :cond_4
    if-le p3, v1, :cond_14

    .line 271
    new-array p4, p3, [Lcom/drew/lang/Rational;

    :goto_2
    if-ge v0, p3, :cond_5

    .line 273
    new-instance v1, Lcom/drew/lang/Rational;

    mul-int/lit8 v2, v0, 0x8

    add-int v3, p2, v2

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    int-to-long v3, v3

    add-int/lit8 v5, p2, 0x4

    add-int/2addr v5, v2

    invoke-virtual {p5, v5}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    int-to-long v5, v2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    :cond_5
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    goto/16 :goto_a

    :pswitch_3
    if-ne p3, v1, :cond_6

    .line 350
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32s(II)V

    goto/16 :goto_a

    .line 352
    :cond_6
    new-array p4, p3, [I

    :goto_3
    if-ge v0, p3, :cond_7

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    .line 354
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 355
    :cond_7
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32sArray(I[I)V

    goto/16 :goto_a

    :pswitch_4
    if-ne p3, v1, :cond_8

    .line 329
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16s(II)V

    goto/16 :goto_a

    .line 331
    :cond_8
    new-array p4, p3, [S

    :goto_4
    if-ge v0, p3, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    .line 333
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v1

    aput-short v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 334
    :cond_9
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16sArray(I[S)V

    goto/16 :goto_a

    .line 262
    :pswitch_5
    invoke-virtual {p5, p2, p3}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setByteArray(I[B)V

    goto/16 :goto_a

    :pswitch_6
    if-ne p3, v1, :cond_a

    .line 309
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8s(IB)V

    goto/16 :goto_a

    .line 311
    :cond_a
    new-array p4, p3, [B

    :goto_5
    if-ge v0, p3, :cond_b

    add-int v1, p2, v0

    .line 313
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v1

    aput-byte v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 314
    :cond_b
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8sArray(I[B)V

    goto/16 :goto_a

    :pswitch_7
    if-ne p3, v1, :cond_c

    .line 279
    new-instance p3, Lcom/drew/lang/Rational;

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide p4

    invoke-direct {p3, v0, v1, p4, p5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-interface {p0, p1, p3}, Lcom/drew/imaging/tiff/TiffHandler;->setRational(ILcom/drew/lang/Rational;)V

    goto/16 :goto_a

    :cond_c
    if-le p3, v1, :cond_14

    .line 281
    new-array p4, p3, [Lcom/drew/lang/Rational;

    :goto_6
    if-ge v0, p3, :cond_d

    .line 283
    new-instance v1, Lcom/drew/lang/Rational;

    mul-int/lit8 v2, v0, 0x8

    add-int v3, p2, v2

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v3

    add-int/lit8 v5, p2, 0x4

    add-int/2addr v5, v2

    invoke-virtual {p5, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 284
    :cond_d
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    goto :goto_a

    :pswitch_8
    if-ne p3, v1, :cond_e

    .line 361
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32u(IJ)V

    goto :goto_a

    .line 363
    :cond_e
    new-array p4, p3, [J

    :goto_7
    if-ge v0, p3, :cond_f

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    .line 365
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v1

    aput-wide v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 366
    :cond_f
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32uArray(I[J)V

    goto :goto_a

    :pswitch_9
    if-ne p3, v1, :cond_10

    .line 339
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16u(II)V

    goto :goto_a

    .line 341
    :cond_10
    new-array p4, p3, [I

    :goto_8
    if-ge v0, p3, :cond_11

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    .line 343
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 344
    :cond_11
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16uArray(I[I)V

    goto :goto_a

    :pswitch_a
    const/4 p4, 0x0

    .line 265
    invoke-virtual {p5, p2, p3, p4}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setString(ILcom/drew/metadata/StringValue;)V

    goto :goto_a

    :pswitch_b
    if-ne p3, v1, :cond_12

    .line 319
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8u(IS)V

    goto :goto_a

    .line 321
    :cond_12
    new-array p4, p3, [S

    :goto_9
    if-ge v0, p3, :cond_13

    add-int v1, p2, v0

    .line 323
    invoke-virtual {p5, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    aput-short v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 324
    :cond_13
    invoke-interface {p0, p1, p4}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8uArray(I[S)V

    :cond_14
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public processTiff(Lcom/drew/lang/RandomAccessReader;Lcom/drew/imaging/tiff/TiffHandler;I)V
    .locals 8
    .param p1    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/tiff/TiffProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1, p3}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v0

    const/16 v1, 0x4d4d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4949

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :goto_0
    add-int/lit8 v0, p3, 0x2

    .line 64
    invoke-virtual {p1, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    .line 65
    invoke-interface {p2, v1}, Lcom/drew/imaging/tiff/TiffHandler;->setTiffMarker(I)V

    add-int/lit8 v1, p3, 0x4

    .line 67
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    add-int/2addr v1, p3

    int-to-long v2, v1

    .line 71
    invoke-virtual {p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    const-string v1, "First IFD offset is beyond the end of the TIFF data segment -- trying default offset"

    .line 72
    invoke-interface {p2, v1}, Lcom/drew/imaging/tiff/TiffHandler;->warn(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x4

    .line 77
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    invoke-static {p2, p1, v0, v1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return-void

    .line 60
    :cond_2
    new-instance p1, Lcom/drew/imaging/tiff/TiffProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unclear distinction between Motorola/Intel byte ordering: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/drew/imaging/tiff/TiffProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
