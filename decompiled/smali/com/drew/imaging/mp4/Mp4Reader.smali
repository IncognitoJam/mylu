.class public Lcom/drew/imaging/mp4/Mp4Reader;
.super Ljava/lang/Object;
.source "Mp4Reader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/io/InputStream;Lcom/drew/imaging/mp4/Mp4Handler;)V
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/imaging/mp4/Mp4Handler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    new-instance v0, Lcom/drew/lang/StreamReader;

    invoke-direct {v0, p0}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    .line 40
    invoke-virtual {v0, p0}, Lcom/drew/lang/StreamReader;->setMotorolaByteOrder(Z)V

    const-wide/16 v1, -0x1

    .line 42
    invoke-static {v0, v1, v2, p1}, Lcom/drew/imaging/mp4/Mp4Reader;->processBoxes(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/mp4/Mp4Handler;)V

    return-void
.end method

.method private static processBoxes(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/mp4/Mp4Handler;)V
    .locals 10

    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/drew/lang/StreamReader;->getPosition()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_6

    .line 50
    :cond_1
    new-instance v2, Lcom/drew/metadata/mp4/boxes/Box;

    invoke-direct {v2, p0}, Lcom/drew/metadata/mp4/boxes/Box;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 55
    invoke-virtual {p3, v2}, Lcom/drew/imaging/mp4/Mp4Handler;->shouldAcceptContainer(Lcom/drew/metadata/mp4/boxes/Box;)Z

    move-result v3

    const-wide/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 56
    iget-wide v0, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    invoke-virtual {p0}, Lcom/drew/lang/StreamReader;->getPosition()J

    move-result-wide v6

    add-long/2addr v0, v6

    sub-long/2addr v0, v4

    invoke-virtual {p3, v2}, Lcom/drew/imaging/mp4/Mp4Handler;->processContainer(Lcom/drew/metadata/mp4/boxes/Box;)Lcom/drew/imaging/mp4/Mp4Handler;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/drew/imaging/mp4/Mp4Reader;->processBoxes(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/mp4/Mp4Handler;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p3, v2}, Lcom/drew/imaging/mp4/Mp4Handler;->shouldAcceptBox(Lcom/drew/metadata/mp4/boxes/Box;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    iget-wide v0, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Lcom/drew/lang/StreamReader;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/drew/imaging/mp4/Mp4Handler;->processBox(Lcom/drew/metadata/mp4/boxes/Box;[B)Lcom/drew/imaging/mp4/Mp4Handler;

    move-result-object p3

    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, v2, Lcom/drew/metadata/mp4/boxes/Box;->usertype:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 60
    iget-wide v0, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/StreamReader;->skip(J)V

    goto :goto_0

    .line 61
    :cond_4
    iget-wide v6, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 62
    iget-wide v0, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/StreamReader;->skip(J)V

    goto :goto_0

    .line 63
    :cond_5
    iget-wide v2, v2, Lcom/drew/metadata/mp4/boxes/Box;->size:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/drew/imaging/mp4/Mp4Handler;->addError(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
