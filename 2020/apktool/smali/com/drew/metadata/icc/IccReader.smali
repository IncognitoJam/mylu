.class public Lcom/drew/metadata/icc/IccReader;
.super Ljava/lang/Object;
.source "IccReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;
.implements Lcom/drew/metadata/MetadataReader;


# static fields
.field public static final JPEG_SEGMENT_PREAMBLE:Ljava/lang/String; = "ICC_PROFILE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromInt32(I)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    .line 209
    new-array v0, v0, [B

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 215
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p3, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p3

    if-eqz p3, :cond_0

    .line 164
    invoke-static {p3}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDate(Lcom/drew/metadata/icc/IccDirectory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 16
    .param p1    # Lcom/drew/metadata/icc/IccDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 185
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x2

    .line 186
    invoke-virtual {v2, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    add-int/lit8 v5, v1, 0x4

    .line 187
    invoke-virtual {v2, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v5

    add-int/lit8 v6, v1, 0x6

    .line 188
    invoke-virtual {v2, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v6

    add-int/lit8 v7, v1, 0x8

    .line 189
    invoke-virtual {v2, v7}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v7

    add-int/lit8 v8, v1, 0xa

    .line 190
    invoke-virtual {v2, v8}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    add-int/lit8 v8, v4, -0x1

    .line 192
    invoke-static {v3, v8, v5}, Lcom/drew/lang/DateUtil;->isValidDate(III)Z

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x6

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eqz v8, :cond_0

    invoke-static {v6, v7, v2}, Lcom/drew/lang/DateUtil;->isValidTime(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 194
    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    const-string v2, "%04d:%02d:%02d %02d:%02d:%02d"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/icc/IccDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "ICC data describes an invalid date/time: year=%d month=%d day=%d hour=%d minute=%d second=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drew/metadata/icc/IccDirectory;->addError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setInt32(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p3, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result p3

    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p1, p2, p3}, Lcom/drew/metadata/Directory;->setInt(II)V

    :cond_0
    return-void
.end method

.method private setInt64(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V
    .locals 4
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p3, p2}, Lcom/drew/lang/RandomAccessReader;->getInt64(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {p1, p2, v0, v1}, Lcom/drew/metadata/Directory;->setLong(IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 5
    .param p1    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 101
    new-instance v0, Lcom/drew/metadata/icc/IccDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/icc/IccDirectory;-><init>()V

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {v0, p3}, Lcom/drew/metadata/icc/IccDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    :cond_0
    const/4 p3, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    .line 108
    invoke-virtual {v0, p3, v1}, Lcom/drew/metadata/icc/IccDirectory;->setInt(II)V

    const/4 v1, 0x4

    .line 111
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x8

    .line 112
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->setInt32(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0xc

    .line 113
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x10

    .line 114
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x14

    .line 115
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x18

    .line 116
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->setDate(Lcom/drew/metadata/icc/IccDirectory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x24

    .line 117
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x28

    .line 118
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x2c

    .line 119
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->setInt32(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x30

    .line 120
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->set4ByteString(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x34

    .line 122
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    if-eqz v2, :cond_2

    const v3, 0x20202020

    if-gt v2, v3, :cond_1

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/icc/IccDirectory;->setInt(II)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v2}, Lcom/drew/metadata/icc/IccReader;->getStringFromInt32(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/icc/IccDirectory;->setString(ILjava/lang/String;)V

    :cond_2
    :goto_0
    const/16 v1, 0x40

    .line 131
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->setInt32(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/16 v1, 0x38

    .line 132
    invoke-direct {p0, v0, v1, p1}, Lcom/drew/metadata/icc/IccReader;->setInt64(Lcom/drew/metadata/Directory;ILcom/drew/lang/RandomAccessReader;)V

    const/4 v1, 0x3

    .line 134
    new-array v1, v1, [F

    const/16 v2, 0x44

    invoke-virtual {p1, v2}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v3

    aput v3, v1, p3

    const/16 v3, 0x48

    invoke-virtual {p1, v3}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    const/16 v4, 0x4c

    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v4

    aput v4, v1, v3

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/drew/metadata/icc/IccDirectory;->setObject(ILjava/lang/Object;)V

    const/16 v1, 0x80

    .line 142
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/icc/IccDirectory;->setInt(II)V

    :goto_1
    if-ge p3, v2, :cond_3

    mul-int/lit8 v1, p3, 0xc

    add-int/lit16 v1, v1, 0x84

    .line 147
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x4

    .line 148
    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    add-int/lit8 v1, v1, 0x8

    .line 149
    invoke-virtual {p1, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    .line 150
    invoke-virtual {p1, v4, v1}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v1

    .line 151
    invoke-virtual {v0, v3, v1}, Lcom/drew/metadata/icc/IccDirectory;->setByteArray(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception reading ICC profile: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/icc/IccDirectory;->addError(Ljava/lang/String;)V

    .line 157
    :cond_3
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

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

    .line 57
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 5
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

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 70
    array-length v1, v0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "ICC_PROFILE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-nez p3, :cond_2

    .line 77
    array-length p3, v0

    sub-int/2addr p3, v1

    new-array p3, p3, [B

    .line 79
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v1, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 81
    :cond_2
    array-length v2, p3

    array-length v4, v0

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 82
    array-length v4, p3

    invoke-static {p3, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length p3, p3

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v2

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 89
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p3}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    :cond_4
    return-void
.end method
