.class public Lcom/drew/metadata/iptc/IptcReader;
.super Ljava/lang/Object;
.source "IptcReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final IptcMarkerByte:B = 0x1ct


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processTag(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Directory;III)V
    .locals 3
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p3, p4

    if-nez p5, :cond_0

    const-string p1, ""

    .line 169
    invoke-virtual {p2, p3, p1}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p4, 0x100

    const/16 v0, 0x15a

    const/4 v1, 0x1

    if-eq p3, p4, :cond_4

    const/16 p4, 0x116

    if-eq p3, p4, :cond_4

    if-eq p3, v0, :cond_2

    const/16 p4, 0x17a

    if-eq p3, p4, :cond_4

    const/16 p4, 0x200

    if-eq p3, p4, :cond_4

    const/16 p4, 0x20a

    if-eq p3, p4, :cond_1

    const/16 p4, 0x246

    if-eq p3, p4, :cond_4

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/drew/metadata/Directory;->setInt(II)V

    sub-int/2addr p5, v1

    int-to-long p2, p5

    .line 199
    invoke-virtual {p1, p2, p3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p1, p5}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/drew/metadata/iptc/Iso2022Converter;->convertISO2022CharsetToJavaCharset([B)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    .line 179
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1}, Ljava/lang/String;-><init>([B)V

    .line 181
    :cond_3
    invoke-virtual {p2, p3, p4}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    return-void

    :cond_4
    const/4 p4, 0x2

    if-lt p5, p4, :cond_5

    .line 190
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    sub-int/2addr p5, p4

    int-to-long p4, p5

    .line 191
    invoke-virtual {p1, p4, p5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 192
    invoke-virtual {p2, p3, v0}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void

    .line 207
    :cond_5
    :goto_0
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    .line 211
    :try_start_0
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move-object v2, v0

    :goto_1
    if-eqz p4, :cond_7

    .line 217
    invoke-virtual {p1, p5, v2}, Lcom/drew/lang/SequentialReader;->getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object p1

    goto :goto_2

    .line 219
    :cond_7
    invoke-virtual {p1, p5}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 220
    invoke-static {p1}, Lcom/drew/metadata/iptc/Iso2022Converter;->guessCharSet([B)Ljava/nio/charset/Charset;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 221
    new-instance p5, Lcom/drew/metadata/StringValue;

    invoke-direct {p5, p1, p4}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, p5

    goto :goto_2

    :cond_8
    new-instance p4, Lcom/drew/metadata/StringValue;

    invoke-direct {p4, p1, v0}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, p4

    .line 224
    :goto_2
    invoke-virtual {p2, p3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 226
    invoke-virtual {p2, p3}, Lcom/drew/metadata/Directory;->getStringValueArray(I)[Lcom/drew/metadata/StringValue;

    move-result-object p4

    if-nez p4, :cond_9

    .line 230
    new-array p4, v1, [Lcom/drew/metadata/StringValue;

    goto :goto_3

    .line 232
    :cond_9
    array-length p5, p4

    add-int/2addr p5, v1

    new-array p5, p5, [Lcom/drew/metadata/StringValue;

    .line 233
    array-length v0, p4

    const/4 v2, 0x0

    invoke-static {p4, v2, p5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, p5

    .line 235
    :goto_3
    array-length p5, p4

    sub-int/2addr p5, v1

    aput-object p1, p4, p5

    .line 236
    invoke-virtual {p2, p3, p4}, Lcom/drew/metadata/Directory;->setStringValueArray(I[Lcom/drew/metadata/StringValue;)V

    goto :goto_4

    .line 238
    :cond_a
    invoke-virtual {p2, p3, p1}, Lcom/drew/metadata/Directory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;J)V
    .locals 6
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V

    return-void
.end method

.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;JLcom/drew/metadata/Directory;)V
    .locals 7
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 91
    new-instance v6, Lcom/drew/metadata/iptc/IptcDirectory;

    invoke-direct {v6}, Lcom/drew/metadata/iptc/IptcDirectory;-><init>()V

    .line 92
    invoke-virtual {p2, v6}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    if-eqz p5, :cond_0

    .line 95
    invoke-virtual {v6, p5}, Lcom/drew/metadata/iptc/IptcDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-long v0, p2

    cmp-long p5, v0, p3

    if-gez p5, :cond_6

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 p2, p2, 0x1

    const/16 v0, 0x1c

    if-eq p5, v0, :cond_2

    int-to-long v1, p2

    cmp-long p1, v1, p3

    if-eqz p1, :cond_1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid IPTC tag marker at offset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Expected \'0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' but got \'0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p5, p2, 0x4

    int-to-long v0, p5

    cmp-long p5, v0, p3

    if-lez p5, :cond_3

    const-string p1, "Too few bytes remain for a valid IPTC tag"

    .line 122
    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v3

    .line 131
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v4

    .line 132
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p5

    const/16 v0, 0x7fff

    if-le p5, v0, :cond_4

    and-int/lit16 p5, p5, 0x7fff

    shl-int/lit8 p5, p5, 0x10

    .line 135
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    or-int/2addr p5, v0

    add-int/lit8 p2, p2, 0x2

    :cond_4
    move v5, p5

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v5

    int-to-long v0, p2

    cmp-long p5, v0, p3

    if-lez p5, :cond_5

    const-string p1, "Data for tag extends beyond end of IPTC segment"

    .line 145
    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    .line 150
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/drew/metadata/iptc/IptcReader;->processTag(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Directory;III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string p1, "Error processing IPTC tag"

    .line 152
    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    return-void

    :catch_1
    const-string p1, "IPTC data segment ended mid-way through tag descriptor"

    .line 140
    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    return-void

    :catch_2
    const-string p1, "Unable to read starting byte of IPTC tag"

    .line 108
    invoke-virtual {v6, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->addError(Ljava/lang/String;)V

    :cond_6
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

    .line 65
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 3
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

    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 72
    array-length v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p3, v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p3}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    array-length p3, p3

    int-to-long v1, p3

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;J)V

    goto :goto_0

    :cond_1
    return-void
.end method
