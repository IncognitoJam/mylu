.class public Lcom/drew/lang/RandomAccessFileReader;
.super Lcom/drew/lang/RandomAccessReader;
.source "RandomAccessFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _baseOffset:I

.field private _currentIndex:I

.field private final _file:Ljava/io/RandomAccessFile;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/drew/lang/RandomAccessFileReader;-><init>(Ljava/io/RandomAccessFile;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/drew/lang/RandomAccessReader;-><init>()V

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    .line 59
    iput p2, p0, Lcom/drew/lang/RandomAccessFileReader;->_baseOffset:I

    .line 60
    iget-object p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private seek(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    iput p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-eq p1, v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/drew/lang/RandomAccessFileReader;->seek(I)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result p1

    if-ltz p1, :cond_1

    .line 85
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    int-to-byte p1, p1

    return p1

    .line 83
    :cond_1
    new-instance p1, Lcom/drew/lang/BufferBoundsException;

    const-string v0, "Unexpected end of file encountered."

    invoke-direct {p1, v0}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBytes(II)[B
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessFileReader;->validateIndex(II)V

    .line 95
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-eq p1, v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/drew/lang/RandomAccessFileReader;->seek(I)V

    .line 98
    :cond_0
    new-array p1, p2, [B

    .line 99
    iget-object v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    .line 100
    iget v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-ne v0, p2, :cond_1

    return-object p1

    .line 102
    :cond_1
    new-instance p1, Lcom/drew/lang/BufferBoundsException;

    const-string p2, "Unexpected end of file encountered."

    invoke-direct {p1, p2}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    return-wide v0
.end method

.method protected isValidIndex(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    .line 118
    iget-wide p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toUnshiftedOffset(I)I
    .locals 1

    .line 66
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_baseOffset:I

    add-int/2addr p1, v0

    return p1
.end method

.method protected validateIndex(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessFileReader;->isValidIndex(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    iget-wide v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/drew/lang/BufferBoundsException;-><init>(IIJ)V

    throw v0
.end method
