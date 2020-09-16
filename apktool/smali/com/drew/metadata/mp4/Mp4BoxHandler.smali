.class public Lcom/drew/metadata/mp4/Mp4BoxHandler;
.super Lcom/drew/imaging/mp4/Mp4Handler;
.source "Mp4BoxHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/imaging/mp4/Mp4Handler<",
        "Lcom/drew/metadata/mp4/Mp4Directory;",
        ">;"
    }
.end annotation


# instance fields
.field private handlerFactory:Lcom/drew/metadata/mp4/Mp4HandlerFactory;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/drew/imaging/mp4/Mp4Handler;-><init>(Lcom/drew/metadata/Metadata;)V

    .line 38
    new-instance p1, Lcom/drew/metadata/mp4/Mp4HandlerFactory;

    invoke-direct {p1, p0}, Lcom/drew/metadata/mp4/Mp4HandlerFactory;-><init>(Lcom/drew/imaging/mp4/Mp4Handler;)V

    iput-object p1, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->handlerFactory:Lcom/drew/metadata/mp4/Mp4HandlerFactory;

    return-void
.end method

.method private processFileType(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 1
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

    .line 95
    new-instance v0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/FileTypeBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 96
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->addMetadata(Lcom/drew/metadata/mp4/Mp4Directory;)V

    return-void
.end method

.method private processMediaHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 1
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

    .line 107
    new-instance v0, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/MediaHeaderBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    return-void
.end method

.method private processMovieHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 1
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

    .line 101
    new-instance v0, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 102
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/boxes/MovieHeaderBox;->addMetadata(Lcom/drew/metadata/mp4/Mp4Directory;)V

    return-void
.end method


# virtual methods
.method protected getDirectory()Lcom/drew/metadata/mp4/Mp4Directory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 49
    new-instance v0, Lcom/drew/metadata/mp4/Mp4Directory;

    invoke-direct {v0}, Lcom/drew/metadata/mp4/Mp4Directory;-><init>()V

    return-object v0
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

    if-eqz p2, :cond_3

    .line 74
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 75
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "mvhd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4BoxHandler;->processMovieHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "ftyp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4BoxHandler;->processFileType(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "hdlr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 80
    new-instance p2, Lcom/drew/metadata/mp4/boxes/HandlerBox;

    invoke-direct {p2, v0, p1}, Lcom/drew/metadata/mp4/boxes/HandlerBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 81
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->handlerFactory:Lcom/drew/metadata/mp4/Mp4HandlerFactory;

    iget-object v0, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, p2, v0}, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->getHandler(Lcom/drew/metadata/mp4/boxes/HandlerBox;Lcom/drew/metadata/Metadata;)Lcom/drew/imaging/mp4/Mp4Handler;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    iget-object p2, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "mdhd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/drew/metadata/mp4/Mp4BoxHandler;->processMediaHeader(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string p2, "cmov"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 87
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4BoxHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    const-string p2, "Compressed MP4 movies not supported"

    invoke-virtual {p1, p2}, Lcom/drew/metadata/mp4/Mp4Directory;->addError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public shouldAcceptBox(Lcom/drew/metadata/mp4/boxes/Box;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mp4/boxes/Box;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "mvhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "hdlr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v0, "mdhd"

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

    .line 64
    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string/jumbo v1, "trak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v1, "moov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mp4/boxes/Box;->type:Ljava/lang/String;

    const-string v0, "mdia"

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
