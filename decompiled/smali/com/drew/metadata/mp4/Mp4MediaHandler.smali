.class public abstract Lcom/drew/metadata/mp4/Mp4MediaHandler;
.super Lcom/drew/imaging/mp4/Mp4Handler;
.source "Mp4MediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;",
        ">",
        "Lcom/drew/imaging/mp4/Mp4Handler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 8

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/imaging/mp4/Mp4Handler;-><init>(Lcom/drew/metadata/Metadata;)V

    .line 41
    sget-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, 0x770

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 44
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 45
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 47
    new-instance p1, Ljava/util/Date;

    sget-object v2, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v2, Ljava/util/Date;

    sget-object v3, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v4

    add-long/2addr v6, v0

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->HANDLER_PARAM_LANGUAGE:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/drew/metadata/mp4/Mp4MediaHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast v2, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, p1}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;->setString(ILjava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4MediaHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast p1, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;

    const/16 v2, 0x66

    invoke-virtual {p1, v2, v0}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;->setString(ILjava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4MediaHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast p1, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;

    const/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;->setString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getMediaInformation()Ljava/lang/String;
.end method

.method public processBox(Lcom/drew/metadata/mp4/boxes/Box;[B)Lcom/drew/imaging/mp4/Mp4Handler;
    .locals 2
    .param p1    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 75
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 76
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/drew/metadata/mp4/Mp4MediaHandler;->getMediaInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4MediaHandler;->processMediaInformation(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "stsd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4MediaHandler;->processSampleDescription(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "stts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4MediaHandler;->processTimeToSample(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method protected abstract processMediaInformation(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract processSampleDescription(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract processTimeToSample(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public shouldAcceptBox(Lcom/drew/metadata/mp4/boxes/Box;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/drew/metadata/mp4/Mp4MediaHandler;->getMediaInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "stsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v0, "stts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public shouldAcceptContainer(Lcom/drew/metadata/mp4/boxes/Box;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "stbl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v0, "minf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
