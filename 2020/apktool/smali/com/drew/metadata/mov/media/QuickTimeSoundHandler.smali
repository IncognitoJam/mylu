.class public Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;
.super Lcom/drew/metadata/mov/QuickTimeMediaHandler;
.source "QuickTimeSoundHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/QuickTimeMediaHandler<",
        "Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/mov/QuickTimeMediaHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDirectory()Lcom/drew/metadata/mov/QuickTimeDirectory;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;->getDirectory()Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;

    move-result-object v0

    return-object v0
.end method

.method protected getDirectory()Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 47
    new-instance v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;-><init>()V

    return-object v0
.end method

.method protected getMediaInformation()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "smhd"

    return-object v0
.end method

.method public processMediaInformation(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 1
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/drew/metadata/mov/atoms/SoundInformationMediaHeaderAtom;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mov/atoms/SoundInformationMediaHeaderAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 67
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mov/atoms/SoundInformationMediaHeaderAtom;->addMetadata(Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;)V

    return-void
.end method

.method public processSampleDescription(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 1
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 60
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mov/atoms/SoundSampleDescriptionAtom;->addMetadata(Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;)V

    return-void
.end method

.method protected processTimeToSample(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 2
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;

    sget-object p2, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const/16 p2, 0x304

    invoke-virtual {p1, p2, v0, v1}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->setDouble(ID)V

    return-void
.end method
