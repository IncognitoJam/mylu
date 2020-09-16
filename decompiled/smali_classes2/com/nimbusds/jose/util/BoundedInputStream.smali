.class public Lcom/nimbusds/jose/util/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 75
    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 76
    iput-object p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getLimitBytes()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    return-wide v0
.end method

.method public isPropagateClose()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 178
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exceeded configured input limit of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 106
    iget-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/nimbusds/jose/util/BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-string v2, " bytes"

    const-string v3, "Exceeded configured input limit of "

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return p2

    .line 128
    :cond_2
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 130
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    cmp-long v0, p2, v4

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v4, v0, p2

    if-gez v4, :cond_3

    goto :goto_1

    .line 131
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 171
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 143
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
