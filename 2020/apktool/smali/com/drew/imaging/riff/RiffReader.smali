.class public Lcom/drew/imaging/riff/RiffReader;
.super Ljava/lang/Object;
.source "RiffReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processChunks(Lcom/drew/lang/SequentialReader;ILcom/drew/imaging/riff/RiffHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getPosition()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 81
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 82
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v2

    const-string v3, "LIST"

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "RIFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 91
    :cond_1
    invoke-interface {p3, v0}, Lcom/drew/imaging/riff/RiffHandler;->shouldAcceptChunk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p1, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/drew/imaging/riff/RiffHandler;->processChunk(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_2
    int-to-long v0, v2

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 98
    :goto_1
    rem-int/lit8 v2, v2, 0x2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    const-wide/16 v0, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto :goto_0

    .line 84
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 85
    invoke-interface {p3, v0}, Lcom/drew/imaging/riff/RiffHandler;->shouldAcceptList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, -0x4

    .line 86
    invoke-virtual {p0, p1, v2, p3}, Lcom/drew/imaging/riff/RiffReader;->processChunks(Lcom/drew/lang/SequentialReader;ILcom/drew/imaging/riff/RiffHandler;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x4

    int-to-long v0, v2

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public processRiff(Lcom/drew/lang/SequentialReader;Lcom/drew/imaging/riff/RiffHandler;)V
    .locals 3
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/imaging/riff/RiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/riff/RiffProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    const/4 v0, 0x4

    .line 59
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIFF"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    .line 68
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x4

    .line 71
    invoke-interface {p2, v0}, Lcom/drew/imaging/riff/RiffHandler;->shouldAcceptRiffIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/drew/imaging/riff/RiffReader;->processChunks(Lcom/drew/lang/SequentialReader;ILcom/drew/imaging/riff/RiffHandler;)V

    return-void

    .line 62
    :cond_1
    new-instance p1, Lcom/drew/imaging/riff/RiffProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid RIFF header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/drew/imaging/riff/RiffProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
