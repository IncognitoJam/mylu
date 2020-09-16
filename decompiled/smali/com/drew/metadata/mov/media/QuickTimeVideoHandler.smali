.class public Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;
.super Lcom/drew/metadata/mov/QuickTimeMediaHandler;
.source "QuickTimeVideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/mov/QuickTimeMediaHandler<",
        "Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/mov/QuickTimeMediaHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDirectory()Lcom/drew/metadata/mov/QuickTimeDirectory;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;->getDirectory()Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;

    move-result-object v0

    return-object v0
.end method

.method protected getDirectory()Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 55
    new-instance v0, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;-><init>()V

    return-object v0
.end method

.method protected getMediaInformation()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vmhd"

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

    .line 68
    new-instance v0, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 69
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;->addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V

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

    .line 61
    new-instance v0, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 62
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mov/atoms/VideoSampleDescriptionAtom;->addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V

    return-void
.end method

.method public processTimeToSample(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
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

    .line 75
    new-instance v0, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 76
    iget-object p1, p0, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    check-cast p1, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mov/atoms/TimeToSampleAtom;->addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V

    return-void
.end method
