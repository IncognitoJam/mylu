.class public Lcom/drew/metadata/bmp/BmpReader;
.super Ljava/lang/Object;
.source "BmpReader.java"


# static fields
.field public static final BITMAP:I = 0x4d42

.field public static final OS2_BITMAP_ARRAY:I = 0x4142

.field public static final OS2_COLOR_ICON:I = 0x4943

.field public static final OS2_COLOR_POINTER:I = 0x5043

.field public static final OS2_ICON:I = 0x4349

.field public static final OS2_POINTER:I = 0x5450


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addError(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 394
    const-class v0, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/ErrorDirectory;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/drew/metadata/ErrorDirectory;

    invoke-direct {v0, p1}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0, p1}, Lcom/drew/metadata/ErrorDirectory;->addError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/bmp/BmpReader;->readFileHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;Z)V

    return-void
.end method

.method protected readBitmapHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/bmp/BmpHeaderDirectory;Lcom/drew/metadata/Metadata;)V
    .locals 16
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/bmp/BmpHeaderDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, -0x2

    .line 265
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInt(I)I

    move-result v2

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v3

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v5

    const/4 v6, -0x1

    .line 269
    invoke-virtual {v1, v6, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const/16 v6, 0xc

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v5, v6, :cond_0

    const/16 v11, 0x4d42

    if-ne v2, v11, :cond_0

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    goto/16 :goto_3

    :cond_0
    if-ne v5, v6, :cond_1

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    goto/16 :goto_3

    :cond_1
    const/4 v13, 0x5

    const-wide/16 v14, 0x4

    const/16 v6, 0x10

    if-eq v5, v6, :cond_d

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x6c

    const/16 v2, 0x38

    const/16 v11, 0x34

    const/16 v12, 0x28

    if-eq v5, v12, :cond_4

    if-eq v5, v11, :cond_4

    if-eq v5, v2, :cond_4

    if-eq v5, v6, :cond_4

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_3

    goto :goto_0

    .line 384
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected DIB header size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->addError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 328
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    invoke-virtual {v1, v10, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    invoke-virtual {v1, v9, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    invoke-virtual {v1, v13, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 334
    invoke-virtual {v0, v14, v15}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {v1, v7, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v1, v7, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const/16 v6, 0x9

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    if-ne v5, v12, :cond_5

    return-void

    .line 342
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v6

    const/16 v8, 0xc

    invoke-virtual {v1, v8, v6, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const/16 v6, 0xd

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const/16 v6, 0xe

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    if-ne v5, v11, :cond_6

    return-void

    :cond_6
    const/16 v6, 0xf

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    if-ne v5, v2, :cond_7

    return-void

    .line 352
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v6

    const/16 v2, 0x10

    .line 353
    invoke-virtual {v1, v2, v6, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const-wide/16 v8, 0x24

    .line 354
    invoke-virtual {v0, v8, v9}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 v2, 0x11

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v1, v2, v8, v9}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const/16 v2, 0x12

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v1, v2, v8, v9}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const/16 v2, 0x13

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v1, v2, v8, v9}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setLong(IJ)V

    const/16 v2, 0x6c

    if-ne v5, v2, :cond_8

    return-void

    :cond_8
    const/16 v2, 0x14

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 362
    sget-object v2, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_EMBEDDED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    invoke-virtual {v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->getValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_a

    sget-object v2, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_LINKED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    invoke-virtual {v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->getValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const-wide/16 v2, 0xc

    .line 377
    invoke-virtual {v0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto/16 :goto_3

    .line 363
    :cond_a
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v10

    add-long/2addr v3, v8

    cmp-long v5, v10, v3

    if-lez v5, :cond_b

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid profile data offset 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->addError(Ljava/lang/String;)V

    return-void

    .line 369
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v8

    sub-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 370
    sget-object v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_LINKED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    invoke-virtual {v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->getValue()J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_c

    const/16 v3, 0x15

    .line 371
    sget-object v4, Lcom/drew/lang/Charsets;->WINDOWS_1252:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v4}, Lcom/drew/lang/SequentialReader;->getNullTerminatedString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setString(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 373
    :cond_c
    new-instance v3, Lcom/drew/lang/ByteArrayReader;

    invoke-virtual {v0, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 374
    new-instance v0, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v0}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v2, v1}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    goto :goto_3

    .line 303
    :cond_d
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const/16 v2, 0x10

    if-le v5, v2, :cond_e

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    invoke-virtual {v1, v13, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 309
    invoke-virtual {v0, v14, v15}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const/16 v2, 0x9

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const-wide/16 v2, 0x6

    .line 314
    invoke-virtual {v0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 v2, 0xa

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    const-wide/16 v2, 0x8

    .line 320
    invoke-virtual {v0, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 v2, 0xb

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->setInt(II)V

    .line 322
    invoke-virtual {v0, v14, v15}, Lcom/drew/lang/SequentialReader;->skip(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "Internal error"

    .line 389
    invoke-virtual {v1, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->addError(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    const-string v0, "Unable to read BMP header"

    .line 387
    invoke-virtual {v1, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->addError(Ljava/lang/String;)V

    :cond_e
    :goto_3
    return-void
.end method

.method protected readFileHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;Z)V
    .locals 6
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    const/16 v2, 0x4142

    if-eq v0, v2, :cond_1

    const/16 p3, 0x4349

    if-eq v0, p3, :cond_0

    const/16 p3, 0x4943

    if-eq v0, p3, :cond_0

    const/16 p3, 0x4d42

    if-eq v0, p3, :cond_0

    const/16 p3, 0x5043

    if-eq v0, p3, :cond_0

    const/16 p3, 0x5450

    if-eq v0, p3, :cond_0

    .line 159
    :try_start_1
    new-instance p1, Lcom/drew/metadata/ErrorDirectory;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid BMP magic number 0x"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void

    :catch_0
    nop

    goto :goto_0

    .line 151
    :cond_0
    new-instance p3, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-direct {p3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :try_start_2
    invoke-virtual {p2, p3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    const/4 v1, -0x2

    .line 153
    invoke-virtual {p3, v1, v0}, Lcom/drew/metadata/Directory;->setInt(II)V

    const-wide/16 v0, 0xc

    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 156
    move-object v0, p3

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {p0, p1, v0, p2}, Lcom/drew/metadata/bmp/BmpReader;->readBitmapHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/bmp/BmpHeaderDirectory;Lcom/drew/metadata/Metadata;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, p3

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    :try_start_3
    const-string p1, "Invalid bitmap file - nested arrays not allowed"

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/bmp/BmpReader;->addError(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V

    return-void

    :cond_2
    const-wide/16 v2, 0x4

    .line 132
    invoke-virtual {p1, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 133
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v4

    .line 134
    invoke-virtual {p1, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/4 p3, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/drew/metadata/bmp/BmpReader;->readFileHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;Z)V

    const-wide/16 v2, 0x0

    cmp-long p3, v4, v2

    if-nez p3, :cond_3

    return-void

    .line 139
    :cond_3
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v2

    cmp-long p3, v2, v4

    if-lez p3, :cond_4

    const-string p1, "Invalid next header offset"

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/bmp/BmpReader;->addError(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V

    return-void

    .line 143
    :cond_4
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v2

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/4 p3, 0x1

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/drew/metadata/bmp/BmpReader;->readFileHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "Unable to read BMP file header"

    if-nez v1, :cond_5

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/bmp/BmpReader;->addError(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V

    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 120
    new-instance p3, Lcom/drew/metadata/ErrorDirectory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t determine bitmap type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/drew/metadata/ErrorDirectory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void
.end method
