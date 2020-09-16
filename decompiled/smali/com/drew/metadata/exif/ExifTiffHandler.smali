.class public Lcom/drew/metadata/exif/ExifTiffHandler;
.super Lcom/drew/metadata/tiff/DirectoryTiffHandler;
.source "ExifTiffHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;-><init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private static getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/drew/lang/RandomAccessReader;
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

    .line 366
    :try_start_0
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/drew/lang/BufferBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static handlePrintIM(Lcom/drew/metadata/Directory;I)Z
    .locals 2
    .param p0    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const v1, 0xc4a5

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xe00

    if-ne p1, v1, :cond_2

    .line 597
    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/RicohMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;

    if-nez p1, :cond_1

    instance-of p0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    if-eqz p0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static processBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V
    .locals 5
    .param p0    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_6

    .line 325
    invoke-virtual {p0, v1}, Lcom/drew/metadata/Directory;->hasTagName(I)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 327
    invoke-virtual {p0, v2}, Lcom/drew/metadata/Directory;->hasTagName(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 329
    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    goto :goto_4

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 331
    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    goto :goto_4

    .line 334
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    new-array v2, p5, [S

    const/4 v3, 0x0

    .line 336
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    add-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    .line 337
    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    goto :goto_3

    .line 340
    :cond_3
    new-array v2, p5, [I

    const/4 v3, 0x0

    .line 341
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    add-int v4, v1, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    .line 342
    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 343
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, p5, -0x1

    add-int/2addr v1, v2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static processKodakMakernote(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 3
    .param p0    # Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/16 v0, 0x8

    add-int/2addr p1, v0

    const/4 v1, 0x0

    .line 674
    :try_start_0
    sget-object v2, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1, v0, v2}, Lcom/drew/lang/RandomAccessReader;->getStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    add-int/lit8 v0, p1, 0x9

    .line 675
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0xa

    .line 676
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0xc

    .line 677
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0xe

    .line 678
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x10

    .line 679
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x12

    const/4 v1, 0x2

    .line 680
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setByteArray(I[B)V

    add-int/lit8 v0, p1, 0x14

    const/4 v1, 0x4

    .line 681
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setByteArray(I[B)V

    add-int/lit8 v0, p1, 0x18

    .line 682
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x1b

    .line 683
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x1c

    .line 684
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v0

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x1d

    .line 685
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x1e

    .line 686
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x20

    .line 687
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v0

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setLong(IJ)V

    add-int/lit8 v0, p1, 0x24

    .line 688
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v0

    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x38

    add-int/lit8 v1, p1, 0x38

    .line 689
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x40

    add-int/lit8 v1, p1, 0x40

    .line 690
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x5c

    add-int/lit8 v1, p1, 0x5c

    .line 691
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x5d

    add-int/lit8 v1, p1, 0x5d

    .line 692
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x5e

    add-int/lit8 v1, p1, 0x5e

    .line 693
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x60

    add-int/lit8 v1, p1, 0x60

    .line 694
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x62

    add-int/lit8 v1, p1, 0x62

    .line 695
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x64

    add-int/lit8 v1, p1, 0x64

    .line 696
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x66

    add-int/lit8 v1, p1, 0x66

    .line 697
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x68

    add-int/lit8 v1, p1, 0x68

    .line 698
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x6b

    add-int/lit8 p1, p1, 0x6b

    .line 699
    invoke-virtual {p2, p1}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing Kodak makernote data: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->addError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processMakernote(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;)Z
    .locals 19
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 380
    iget-object v5, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v6, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {v5, v6}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x10f

    .line 382
    invoke-virtual {v5, v6}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x2

    .line 384
    invoke-static {v4, v1, v6}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 385
    invoke-static {v4, v1, v8}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    .line 386
    invoke-static {v4, v1, v9}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    .line 387
    invoke-static {v4, v1, v10}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    .line 388
    invoke-static {v4, v1, v11}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    .line 389
    invoke-static {v4, v1, v13}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    .line 390
    invoke-static {v4, v1, v14}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v15

    const/16 v11, 0x9

    .line 391
    invoke-static {v4, v1, v11}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xa

    .line 392
    invoke-static {v4, v1, v14}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0xc

    move-object/from16 v16, v11

    .line 393
    invoke-static {v4, v1, v14}, Lcom/drew/metadata/exif/ExifTiffHandler;->getReaderString(Lcom/drew/lang/RandomAccessReader;II)Ljava/lang/String;

    move-result-object v11

    .line 395
    invoke-virtual/range {p4 .. p4}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v14

    move/from16 v17, v14

    const-string v14, "OLYMP\u0000"

    .line 397
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v18, v7

    if-nez v14, :cond_26

    const-string v14, "EPSON"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    const-string v14, "AGFA"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v14, "OLYMPUS\u0000II"

    .line 402
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 406
    const-class v3, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0xc

    .line 407
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_2
    if-eqz v5, :cond_3

    .line 408
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    const-string v7, "MINOLTA"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 411
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 412
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_3
    if-eqz v5, :cond_7

    .line 413
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v14, "NIKON"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v5, "Nikon"

    .line 414
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v5, v1, 0x6

    .line 423
    invoke-virtual {v4, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 433
    iget-object v1, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    const-string v2, "Unsupported Nikon makernote data ignored."

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 429
    :cond_4
    const-class v3, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0x12

    const/16 v5, 0xa

    add-int/2addr v1, v5

    .line 430
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    .line 425
    :cond_5
    const-class v5, Lcom/drew/metadata/exif/makernotes/NikonType1MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v5, 0x8

    add-int/2addr v1, v5

    .line 426
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    .line 438
    :cond_6
    const-class v5, Lcom/drew/metadata/exif/makernotes/NikonType2MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 439
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_7
    const-string v7, "SONY CAM"

    .line 441
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "SONY DSC"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eqz v5, :cond_9

    const-string v7, "SONY"

    .line 445
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    invoke-virtual {v4, v1, v7}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v14

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_9

    .line 448
    const-class v5, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 449
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_9
    const-string v7, "SEMC MS\u0000\u0000\u0000\u0000\u0000"

    .line 450
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    .line 452
    invoke-virtual {v4, v7}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 454
    const-class v5, Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x14

    .line 455
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_a
    const-string v7, "SIGMA\u0000\u0000\u0000"

    .line 456
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "FOVEON\u0000\u0000"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_4

    :cond_b
    const-string v7, "KDK"

    .line 459
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v2, "KDK INFO"

    .line 460
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 461
    new-instance v2, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;-><init>()V

    .line 462
    iget-object v3, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 463
    invoke-static {v2, v1, v4}, Lcom/drew/metadata/exif/ExifTiffHandler;->processKodakMakernote(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto/16 :goto_7

    :cond_c
    const-string v7, "Canon"

    .line 464
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 465
    const-class v5, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 466
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_d
    if-eqz v5, :cond_f

    .line 467
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v14, "CASIO"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v5, "QVC\u0000\u0000\u0000"

    .line 468
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 469
    const-class v5, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/4 v5, 0x6

    add-int/2addr v1, v5

    .line 470
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    .line 472
    :cond_e
    const-class v5, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 473
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_f
    const-string v7, "FUJIFILM"

    .line 475
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v12, 0x0

    if-nez v7, :cond_23

    const-string v7, "Fujifilm"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_3

    :cond_10
    const-string v7, "KYOCERA"

    .line 484
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 486
    const-class v5, Lcom/drew/metadata/exif/makernotes/KyoceraMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x16

    .line 487
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_11
    const-string v7, "LEICA"

    .line 488
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 489
    invoke-virtual {v4, v12}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    const-string v6, "LEICA\u0000\u0001\u0000"

    .line 498
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "LEICA\u0000\u0004\u0000"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "LEICA\u0000\u0005\u0000"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "LEICA\u0000\u0006\u0000"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "LEICA\u0000\u0007\u0000"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_1

    :cond_12
    const-string v6, "Leica Camera AG"

    .line 506
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 507
    const-class v5, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v6, 0x8

    add-int/2addr v1, v6

    .line 508
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_13
    const/16 v6, 0x8

    .line 509
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 511
    const-class v5, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/2addr v1, v6

    .line 512
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_14
    return v12

    .line 504
    :cond_15
    :goto_1
    const-class v3, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0x8

    .line 505
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_16
    const-string v7, "Panasonic\u0000\u0000\u0000"

    .line 516
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 520
    const-class v5, Lcom/drew/metadata/exif/makernotes/PanasonicMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v5, 0xc

    add-int/2addr v1, v5

    .line 521
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_17
    const-string v7, "AOC\u0000"

    .line 522
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 528
    const-class v3, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0x6

    .line 529
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_18
    if-eqz v5, :cond_1a

    .line 530
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PENTAX"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ASAHI"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 537
    :cond_19
    const-class v3, Lcom/drew/metadata/exif/makernotes/PentaxMakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 538
    invoke-static {v0, v4, v2, v1, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_1a
    const-string v7, "SANYO\u0000\u0001\u0000"

    .line 544
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 545
    const-class v3, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0x8

    .line 546
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_1b
    if-eqz v5, :cond_1e

    .line 547
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ricoh"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v3, "Rv"

    move-object/from16 v5, v18

    .line 548
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "Rev"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_2

    :cond_1c
    const-string v3, "Ricoh"

    .line 555
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    .line 557
    invoke-virtual {v4, v3}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 558
    const-class v3, Lcom/drew/metadata/exif/makernotes/RicohMakernoteDirectory;

    invoke-virtual {v0, v3}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v3, v1, 0x8

    .line 559
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto/16 :goto_7

    :cond_1d
    :goto_2
    return v12

    :cond_1e
    const-string v7, "Apple iOS\u0000"

    .line 561
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 563
    invoke-virtual/range {p4 .. p4}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v3

    const/4 v5, 0x1

    .line 564
    invoke-virtual {v4, v5}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 565
    const-class v5, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    add-int/lit8 v5, v1, 0xe

    .line 566
    invoke-static {v0, v4, v2, v5, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 567
    invoke-virtual {v4, v3}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_7

    .line 568
    :cond_1f
    invoke-virtual {v4, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v6

    const v7, 0xf101

    if-ne v6, v7, :cond_20

    .line 569
    new-instance v2, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;-><init>()V

    .line 570
    iget-object v3, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 571
    invoke-static {v2, v1, v4}, Lcom/drew/metadata/exif/ExifTiffHandler;->processReconyxHyperFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto :goto_7

    :cond_20
    const-string v6, "RECONYXUF"

    move-object/from16 v7, v16

    .line 572
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 573
    new-instance v2, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;-><init>()V

    .line 574
    iget-object v3, v0, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 575
    invoke-static {v2, v1, v4}, Lcom/drew/metadata/exif/ExifTiffHandler;->processReconyxUltraFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V

    goto :goto_7

    :cond_21
    const-string v6, "SAMSUNG"

    .line 576
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 578
    const-class v5, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 579
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_7

    :cond_22
    return v12

    .line 477
    :cond_23
    :goto_3
    invoke-virtual {v4, v12}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    add-int/lit8 v3, v1, 0x8

    .line 481
    invoke-virtual {v4, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 482
    const-class v5, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 483
    invoke-static {v0, v4, v2, v3, v1}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_7

    .line 457
    :cond_24
    :goto_4
    const-class v5, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v5, 0xa

    add-int/2addr v1, v5

    .line 458
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_7

    .line 442
    :cond_25
    :goto_5
    const-class v5, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v5, 0xc

    add-int/2addr v1, v5

    .line 443
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    goto :goto_7

    .line 400
    :cond_26
    :goto_6
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {v0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    const/16 v5, 0x8

    add-int/2addr v1, v5

    .line 401
    invoke-static {v0, v4, v2, v1, v3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    :cond_27
    :goto_7
    move/from16 v1, v17

    .line 586
    invoke-virtual {v4, v1}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    const/4 v1, 0x1

    return v1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private static processPrintIM(Lcom/drew/metadata/exif/PrintIMDirectory;ILcom/drew/lang/RandomAccessReader;I)V
    .locals 6
    .param p0    # Lcom/drew/metadata/exif/PrintIMDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p1, "Empty PrintIM data"

    .line 625
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xf

    if-gt p3, v0, :cond_1

    const-string p1, "Bad PrintIM data"

    .line 630
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    return-void

    .line 634
    :cond_1
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0xc

    invoke-virtual {p2, p1, v1, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PrintIM"

    .line 636
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "Invalid PrintIM header"

    .line 637
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, p1, 0xe

    .line 642
    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v4, v4, 0x10

    if-ge p3, v4, :cond_4

    .line 646
    invoke-virtual {p2}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 647
    invoke-virtual {p2}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 648
    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    mul-int/lit8 v4, v2, 0x6

    add-int/lit8 v4, v4, 0x10

    if-ge p3, v4, :cond_3

    const-string p1, "Bad PrintIM size"

    .line 650
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PrintIMDirectory;->addError(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object p3, v3

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    move v2, v3

    :goto_0
    const/16 v3, 0x8

    .line 655
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/PrintIMDirectory;->setObject(ILjava/lang/Object;)V

    :goto_1
    if-ge v1, v2, :cond_5

    add-int/lit8 v0, p1, 0x10

    mul-int/lit8 v3, v1, 0x6

    add-int/2addr v0, v3

    .line 659
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    .line 660
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v4

    .line 662
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/drew/metadata/exif/PrintIMDirectory;->setObject(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 666
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_6
    return-void
.end method

.method private static processReconyxHyperFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 12
    .param p0    # Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-virtual {p2, p1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setObject(ILjava/lang/Object;)V

    add-int/lit8 v0, p1, 0x2

    .line 709
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    .line 710
    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    .line 711
    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    const/4 v5, 0x1

    .line 712
    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x6

    invoke-virtual {p2, v7}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%04X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 713
    new-array v8, v5, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v6, :cond_0

    .line 723
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    aput-object v6, v0, v7

    const-string v2, "%d.%d.%d.%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 725
    :cond_0
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v9

    const-string v2, "%d.%d.%d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing Reconyx HyperFire makernote data: build \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not in the expected format and will be omitted from Firmware Version."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->addError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, p1, 0xc

    .line 729
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    .line 730
    new-array v0, v9, [I

    add-int/lit8 v2, p1, 0xe

    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    aput v3, v0, v1

    add-int/2addr v2, v9

    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    aput v2, v0, v5

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setIntArray(I[I)V

    add-int/lit8 v0, p1, 0x12

    .line 737
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    add-int/2addr v0, v9

    .line 738
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v0

    const/16 v0, 0x12

    .line 739
    invoke-virtual {p0, v0, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x16

    .line 741
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    .line 742
    invoke-virtual {p2, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    .line 743
    invoke-virtual {p2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    add-int/lit8 v6, v0, 0x6

    .line 744
    invoke-virtual {p2, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v6

    add-int/lit8 v10, v0, 0x8

    .line 745
    invoke-virtual {p2, v10}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v10

    add-int/lit8 v0, v0, 0xa

    .line 746
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v0

    if-ltz v2, :cond_1

    const/16 v11, 0x3c

    if-ge v2, v11, :cond_1

    if-ltz v3, :cond_1

    if-ge v3, v11, :cond_1

    if-ltz v4, :cond_1

    const/16 v11, 0x18

    if-ge v4, v11, :cond_1

    if-lt v6, v5, :cond_1

    const/16 v11, 0xd

    if-ge v6, v11, :cond_1

    if-lt v10, v5, :cond_1

    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    if-lt v0, v5, :cond_1

    const/16 v11, 0x270f

    if-gt v0, v11, :cond_1

    const/4 v11, 0x6

    .line 754
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v8

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v0

    const-string v0, "%4d:%2d:%2d %2d:%2d:%2d"

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    goto :goto_2

    .line 757
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing Reconyx HyperFire makernote data: Date/Time Original "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid date/time."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->addError(Ljava/lang/String;)V

    :goto_2
    const/16 v0, 0x24

    add-int/lit8 v1, p1, 0x24

    .line 760
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x26

    add-int/lit8 v1, p1, 0x26

    .line 761
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x28

    add-int/lit8 v1, p1, 0x28

    .line 762
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x2a

    .line 764
    new-instance v1, Lcom/drew/metadata/StringValue;

    add-int/lit8 v2, p1, 0x2a

    const/16 v3, 0x1c

    invoke-virtual {p2, v2, v3}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v2

    sget-object v3, Lcom/drew/lang/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    const/16 v0, 0x48

    add-int/lit8 v1, p1, 0x48

    .line 767
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x4a

    add-int/lit8 v1, p1, 0x4a

    .line 768
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x4c

    add-int/lit8 v1, p1, 0x4c

    .line 769
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x4e

    add-int/lit8 v1, p1, 0x4e

    .line 770
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x50

    add-int/lit8 v1, p1, 0x50

    .line 771
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x52

    add-int/lit8 v1, p1, 0x52

    .line 772
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setInt(II)V

    const/16 v0, 0x54

    add-int/lit8 v1, p1, 0x54

    .line 773
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setDouble(ID)V

    const/16 v0, 0x56

    add-int/lit8 p1, p1, 0x56

    const/16 v1, 0x2c

    .line 774
    sget-object v2, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    return-void
.end method

.method private static processReconyxUltraFireMakernote(Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 5
    .param p0    # Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    sget-object v0, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v1, 0x9

    invoke-virtual {p2, p1, v1, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    add-int/lit8 v0, p1, 0x34

    .line 800
    sget-object v2, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3, v2}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    invoke-virtual {p0, v2, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 801
    new-array v0, v0, [I

    add-int/lit8 v2, p1, 0x35

    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v4

    aput v4, v0, v1

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x35

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setIntArray(I[I)V

    add-int/lit8 v0, p1, 0x3b

    .line 809
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    add-int/lit8 v1, v0, 0x1

    .line 810
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    add-int/lit8 v1, v0, 0x2

    .line 811
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    add-int/lit8 v1, v0, 0x3

    .line 812
    invoke-virtual {p2, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    add-int/lit8 v0, v0, 0x4

    .line 813
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    add-int/lit8 v0, p1, 0x43

    .line 827
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setInt(II)V

    add-int/lit8 v0, p1, 0x48

    .line 831
    invoke-virtual {p2, v0}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v0

    const/16 v1, 0x48

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setInt(II)V

    .line 833
    new-instance v0, Lcom/drew/metadata/StringValue;

    add-int/lit8 v1, p1, 0x4b

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v1

    sget-object v2, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v1, 0x4b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    const/16 v0, 0x50

    add-int/2addr p1, v0

    .line 835
    sget-object v1, Lcom/drew/lang/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v2, 0x14

    invoke-virtual {p2, p1, v2, v1}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxUltraFireMakernoteDirectory;->setString(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z
    .locals 10
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            "II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move v0, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 189
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v9, p5}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v9

    if-eqz v9, :cond_0

    return v7

    :cond_0
    if-nez v6, :cond_1

    return v8

    :cond_1
    const v9, 0x927c

    if-ne v5, v9, :cond_2

    .line 200
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    if-eqz v9, :cond_2

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/drew/metadata/exif/ExifTiffHandler;->processMakernote(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;)Z

    move-result v0

    return v0

    :cond_2
    const v9, 0x83bb

    if-ne v5, v9, :cond_4

    .line 205
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-eqz v9, :cond_4

    .line 207
    invoke-virtual {p4, p1}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_3

    .line 208
    invoke-virtual {p4, p1, v6}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    .line 209
    new-instance v2, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v2}, Lcom/drew/metadata/iptc/IptcReader;-><init>()V

    new-instance v3, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v3, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    iget-object v4, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    array-length v0, v0

    int-to-long v5, v0

    iget-object v0, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-wide p4, v5

    move-object/from16 p6, v0

    invoke-virtual/range {p1 .. p6}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V

    return v8

    :cond_3
    return v7

    :cond_4
    const/16 v9, 0x2bc

    if-ne v5, v9, :cond_5

    .line 216
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-eqz v9, :cond_5

    .line 217
    new-instance v2, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v2}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    invoke-virtual {p4, p1, v6}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedBytes(II)[B

    move-result-object v0

    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    iget-object v4, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v0, v3, v4}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return v8

    .line 221
    :cond_5
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-static {v9, p5}, Lcom/drew/metadata/exif/ExifTiffHandler;->handlePrintIM(Lcom/drew/metadata/Directory;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 223
    new-instance v2, Lcom/drew/metadata/exif/PrintIMDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/PrintIMDirectory;-><init>()V

    .line 224
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/PrintIMDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 225
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 226
    invoke-static {v2, p1, p4, v6}, Lcom/drew/metadata/exif/ExifTiffHandler;->processPrintIM(Lcom/drew/metadata/exif/PrintIMDirectory;ILcom/drew/lang/RandomAccessReader;I)V

    return v8

    .line 232
    :cond_6
    iget-object v9, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v9, v9, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-eqz v9, :cond_f

    const/16 v9, 0x2010

    if-eq v5, v9, :cond_e

    const/16 v9, 0x2020

    if-eq v5, v9, :cond_d

    const/16 v9, 0x2040

    if-eq v5, v9, :cond_c

    const/16 v9, 0x2050

    if-eq v5, v9, :cond_b

    const/16 v9, 0x3000

    if-eq v5, v9, :cond_a

    const/16 v9, 0x4000

    if-eq v5, v9, :cond_9

    const/16 v9, 0x2030

    if-eq v5, v9, :cond_8

    const/16 v9, 0x2031

    if-eq v5, v9, :cond_7

    goto :goto_0

    .line 247
    :cond_7
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 248
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 243
    :cond_8
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 244
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 263
    :cond_9
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 264
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 259
    :cond_a
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 260
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 255
    :cond_b
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 256
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 251
    :cond_c
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 252
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 239
    :cond_d
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 240
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 235
    :cond_e
    const-class v5, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    invoke-virtual {p0, v5}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 236
    invoke-static {p0, p4, p2, p1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    return v8

    .line 269
    :cond_f
    :goto_0
    iget-object v2, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v2, v2, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    if-eq v5, v2, :cond_12

    const/16 v2, 0x27

    if-eq v5, v2, :cond_11

    const/16 v2, 0x119

    if-eq v5, v2, :cond_10

    goto :goto_1

    .line 286
    :cond_10
    new-instance v2, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;-><init>()V

    .line 287
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 288
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 289
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x1

    move v3, p1

    move-object v4, p4

    move/from16 v5, p6

    move-object v6, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/drew/metadata/exif/ExifTiffHandler;->processBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    return v8

    .line 280
    :cond_11
    new-instance v2, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;-><init>()V

    .line 281
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/PanasonicRawWbInfo2Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 282
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 283
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x3

    move v3, p1

    move-object v4, p4

    move/from16 v5, p6

    move-object v6, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/drew/metadata/exif/ExifTiffHandler;->processBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    return v8

    .line 274
    :cond_12
    new-instance v2, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;

    invoke-direct {v2}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;-><init>()V

    .line 275
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 276
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 277
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x2

    move v3, p1

    move-object v4, p4

    move/from16 v5, p6

    move-object v6, v7

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/drew/metadata/exif/ExifTiffHandler;->processBinary(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;ILjava/lang/Boolean;I)V

    return v8

    :cond_13
    :goto_1
    const/16 v2, 0x2e

    if-ne v5, v2, :cond_15

    .line 295
    iget-object v2, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v2, v2, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v2, :cond_15

    .line 296
    invoke-virtual {p4, p1, v6}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v0

    .line 299
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 301
    :try_start_0
    invoke-static {v2}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/metadata/Directory;

    .line 303
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 304
    iget-object v3, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {v3, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_14
    return v8

    :catch_0
    move-exception v0

    .line 310
    iget-object v2, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading JpgFromRaw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 308
    iget-object v2, v1, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing JpgFromRaw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/drew/imaging/jpeg/JpegProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    :cond_15
    :goto_3
    return v7
.end method

.method public hasFollowerIfd()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v0, v0, Lcom/drew/metadata/exif/ExifIFD0Directory;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v0, v0, Lcom/drew/metadata/exif/ExifImageDirectory;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v0, v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    const/16 v2, 0x129

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const-class v0, Lcom/drew/metadata/exif/ExifImageDirectory;

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_1

    .line 152
    :cond_3
    const-class v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    :goto_1
    return v1
.end method

.method public setTiffMarker(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/tiff/TiffProcessingException;
        }
    .end annotation

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f52

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5352

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/drew/imaging/tiff/TiffProcessingException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unexpected TIFF marker: 0x%X"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/imaging/tiff/TiffProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    const-class p1, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    const-class p1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method

.method public tryCustomProcessFormat(IIJ)Ljava/lang/Long;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 p1, 0xd

    if-ne p2, p1, :cond_0

    const-wide/16 p1, 0x4

    mul-long p3, p3, p1

    .line 169
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const-wide/16 p1, 0x0

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public tryEnterSubIfd(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14a

    if-ne p1, v1, :cond_0

    .line 85
    const-class p1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x8769

    if-ne p1, v1, :cond_2

    .line 91
    const-class p1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    :cond_2
    const v1, 0x8825

    if-ne p1, v1, :cond_3

    .line 96
    const-class p1, Lcom/drew/metadata/exif/GpsDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    if-eqz v1, :cond_4

    const v1, 0xa005

    if-ne p1, v1, :cond_4

    .line 103
    const-class p1, Lcom/drew/metadata/exif/ExifInteropDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    instance-of v1, v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    if-eqz v1, :cond_d

    const/16 v1, 0x2010

    if-eq p1, v1, :cond_c

    const/16 v1, 0x2020

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2040

    if-eq p1, v1, :cond_a

    const/16 v1, 0x2050

    if-eq p1, v1, :cond_9

    const/16 v1, 0x3000

    if-eq p1, v1, :cond_8

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2030

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2031

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 122
    :cond_5
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 119
    :cond_6
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 134
    :cond_7
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 131
    :cond_8
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 128
    :cond_9
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 125
    :cond_a
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 116
    :cond_b
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    .line 113
    :cond_c
    const-class p1, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/ExifTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    return v0

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
