.class public Lcom/drew/lang/StreamReader;
.super Lcom/drew/lang/SequentialReader;
.source "StreamReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _pos:J

.field private final _stream:Ljava/io/InputStream;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Lcom/drew/lang/SequentialReader;-><init>()V

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/drew/lang/StreamReader;->_pos:J

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private skipInternal(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    .line 137
    :cond_1
    iget-wide p1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    return-wide v2
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getByte()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 63
    iget-wide v1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    int-to-byte v0, v0

    return v0

    .line 62
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of data reached."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes([BII)V
    .locals 4
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_1

    .line 82
    iget-object v1, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "End of data reached."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    iget-wide p1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/drew/lang/StreamReader;->_pos:J

    return-void
.end method

.method public getBytes(I)[B
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1, p1}, Lcom/drew/lang/StreamReader;->getBytes([BII)V

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/drew/lang/StreamReader;->_pos:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/StreamReader;->skipInternal(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Unable to skip. Requested %d bytes but skipped %d."

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be zero or greater."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySkip(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/StreamReader;->skipInternal(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be zero or greater."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
