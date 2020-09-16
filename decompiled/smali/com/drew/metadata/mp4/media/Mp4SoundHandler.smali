.class public Lcom/drew/metadata/mp4/media/Mp4SoundHandler;
.super Lcom/drew/metadata/mp4/Mp4MediaHandler;
.source "Mp4SoundHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mp4/Mp4MediaHandler<",
        "Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/mp4/Mp4MediaHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDirectory()Lcom/drew/metadata/mp4/Mp4Directory;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;->getDirectory()Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;

    move-result-object v0

    return-object v0
.end method

.method protected getDirectory()Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;-><init>()V

    return-object v0
.end method

.method protected getMediaInformation()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "smhd"

    return-object v0
.end method

.method public processMediaInformation(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
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

    .line 65
    new-instance v0, Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 66
    iget-object p1, p0, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast p1, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/boxes/SoundMediaHeaderBox;->addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V

    return-void
.end method

.method public processSampleDescription(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
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

    .line 58
    new-instance v0, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 59
    iget-object p1, p0, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast p1, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/boxes/AudioSampleEntry;->addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V

    return-void
.end method

.method protected processTimeToSample(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
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

    .line 72
    new-instance v0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 73
    iget-object p1, p0, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    check-cast p1, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;->addMetadata(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V

    return-void
.end method
