.class public Lcom/drew/imaging/png/PngChunkReader;
.super Ljava/lang/Object;
.source "PngChunkReader.java"


# static fields
.field private static final PNG_SIGNATURE_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 35
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/drew/imaging/png/PngChunkReader;->PNG_SIGNATURE_BYTES:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Ljava/util/Set;)Ljava/lang/Iterable;
    .locals 11
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/lang/SequentialReader;",
            "Ljava/util/Set<",
            "Lcom/drew/imaging/png/PngChunkType;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/png/PngChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 75
    sget-object v1, Lcom/drew/imaging/png/PngChunkReader;->PNG_SIGNATURE_BYTES:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_9

    .line 87
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v6

    if-ltz v6, :cond_8

    .line 92
    new-instance v7, Lcom/drew/imaging/png/PngChunkType;

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/drew/imaging/png/PngChunkType;-><init>([B)V

    if-eqz p2, :cond_1

    .line 94
    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 96
    :goto_2
    invoke-virtual {p1, v6}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v6

    const-wide/16 v9, 0x4

    .line 100
    invoke-virtual {p1, v9, v10}, Lcom/drew/lang/SequentialReader;->skip(J)V

    if-eqz v8, :cond_3

    .line 102
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lcom/drew/imaging/png/PngChunkType;->areMultipleAllowed()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 103
    :cond_2
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v7, p2, v3

    const-string v0, "Observed multiple instances of PNG chunk \'%s\', for which multiples are not allowed"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_3
    :goto_3
    sget-object v9, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v7, v9}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_7

    .line 112
    :goto_4
    sget-object v9, Lcom/drew/imaging/png/PngChunkType;->IEND:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v7, v9}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v8, :cond_6

    .line 117
    new-instance v8, Lcom/drew/imaging/png/PngChunk;

    invoke-direct {v8, v7, v6}, Lcom/drew/imaging/png/PngChunk;-><init>(Lcom/drew/imaging/png/PngChunkType;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_6
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_7
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    aput-object v1, p2, v3

    aput-object v7, p2, v0

    const-string v0, "First chunk should be \'%s\', but \'%s\' was observed"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_8
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    const-string p2, "PNG chunk length exceeds maximum"

    invoke-direct {p1, p2}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-object v1

    .line 76
    :cond_a
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    const-string p2, "PNG signature mismatch"

    invoke-direct {p1, p2}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
