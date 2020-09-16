.class public Lcom/drew/imaging/jpeg/JpegSegmentReader;
.super Ljava/lang/Object;
.source "JpegSegmentReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MARKER_EOI:B = -0x27t

.field private static final SEGMENT_IDENTIFIER:B = -0x1t

.field private static final SEGMENT_SOS:B = -0x26t


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 5
    .param p0    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/lang/SequentialReader;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;)",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 109
    iget-byte v1, v1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 113
    new-instance v1, Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-direct {v1}, Lcom/drew/imaging/jpeg/JpegSegmentData;-><init>()V

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v2

    :goto_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    if-eq v2, v3, :cond_8

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    const/16 v0, -0x26

    if-ne v2, v0, :cond_3

    return-object v1

    :cond_3
    const/16 v0, -0x27

    if-ne v2, v0, :cond_4

    return-object v1

    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_7

    if-eqz p1, :cond_6

    .line 150
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v2, v0

    .line 156
    invoke-virtual {p0, v2, v3}, Lcom/drew/lang/SequentialReader;->trySkip(J)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 151
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v0

    .line 153
    invoke-virtual {v1, v2, v0}, Lcom/drew/imaging/jpeg/JpegSegmentData;->addSegment(B[B)V

    goto :goto_1

    .line 147
    :cond_7
    new-instance p0, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string p1, "JPEG segment size would be less than zero"

    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v0

    move v4, v2

    move v2, v0

    move v0, v4

    goto :goto_2

    .line 102
    :cond_9
    new-instance p0, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPEG data is expected to begin with 0xFFD8 (\u00ff\u00d8) not 0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readSegments(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;)",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    new-instance p0, Lcom/drew/lang/StreamReader;

    invoke-direct {p0, v1}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw p0
.end method
