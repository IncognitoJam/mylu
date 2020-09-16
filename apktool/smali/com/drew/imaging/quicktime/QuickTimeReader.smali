.class public Lcom/drew/imaging/quicktime/QuickTimeReader;
.super Ljava/lang/Object;
.source "QuickTimeReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/io/InputStream;Lcom/drew/imaging/quicktime/QuickTimeHandler;)V
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/imaging/quicktime/QuickTimeHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Lcom/drew/lang/StreamReader;

    invoke-direct {v0, p0}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    .line 42
    invoke-virtual {v0, p0}, Lcom/drew/lang/StreamReader;->setMotorolaByteOrder(Z)V

    const-wide/16 v1, -0x1

    .line 44
    invoke-static {v0, v1, v2, p1}, Lcom/drew/imaging/quicktime/QuickTimeReader;->processAtoms(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/quicktime/QuickTimeHandler;)V

    return-void
.end method

.method private static processAtoms(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/quicktime/QuickTimeHandler;)V
    .locals 10

    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/drew/lang/StreamReader;->getPosition()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_5

    .line 52
    :cond_1
    new-instance v2, Lcom/drew/metadata/mov/atoms/Atom;

    invoke-direct {v2, p0}, Lcom/drew/metadata/mov/atoms/Atom;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 57
    invoke-virtual {p3, v2}, Lcom/drew/imaging/quicktime/QuickTimeHandler;->shouldAcceptContainer(Lcom/drew/metadata/mov/atoms/Atom;)Z

    move-result v3

    const-wide/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 58
    iget-wide v0, v2, Lcom/drew/metadata/mov/atoms/Atom;->size:J

    invoke-virtual {p0}, Lcom/drew/lang/StreamReader;->getPosition()J

    move-result-wide v6

    add-long/2addr v0, v6

    sub-long/2addr v0, v4

    invoke-virtual {p3, v2}, Lcom/drew/imaging/quicktime/QuickTimeHandler;->processContainer(Lcom/drew/metadata/mov/atoms/Atom;)Lcom/drew/imaging/quicktime/QuickTimeHandler;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/drew/imaging/quicktime/QuickTimeReader;->processAtoms(Lcom/drew/lang/StreamReader;JLcom/drew/imaging/quicktime/QuickTimeHandler;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p3, v2}, Lcom/drew/imaging/quicktime/QuickTimeHandler;->shouldAcceptAtom(Lcom/drew/metadata/mov/atoms/Atom;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    iget-wide v0, v2, Lcom/drew/metadata/mov/atoms/Atom;->size:J

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Lcom/drew/lang/StreamReader;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/drew/imaging/quicktime/QuickTimeHandler;->processAtom(Lcom/drew/metadata/mov/atoms/Atom;[B)Lcom/drew/imaging/quicktime/QuickTimeHandler;

    move-result-object p3

    goto :goto_0

    .line 61
    :cond_3
    iget-wide v6, v2, Lcom/drew/metadata/mov/atoms/Atom;->size:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 62
    iget-wide v0, v2, Lcom/drew/metadata/mov/atoms/Atom;->size:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/drew/lang/StreamReader;->skip(J)V

    goto :goto_0

    .line 63
    :cond_4
    iget-wide v2, v2, Lcom/drew/metadata/mov/atoms/Atom;->size:J
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

    invoke-virtual {p3, p0}, Lcom/drew/imaging/quicktime/QuickTimeHandler;->addError(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
