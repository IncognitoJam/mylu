.class public Lcom/drew/metadata/mov/QuickTimeAtomHandler;
.super Lcom/drew/imaging/quicktime/QuickTimeHandler;
.source "QuickTimeAtomHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/imaging/quicktime/QuickTimeHandler<",
        "Lcom/drew/metadata/mov/QuickTimeDirectory;",
        ">;"
    }
.end annotation


# instance fields
.field private handlerFactory:Lcom/drew/metadata/mov/QuickTimeHandlerFactory;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/drew/imaging/quicktime/QuickTimeHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    .line 38
    new-instance p1, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;

    invoke-direct {p1, p0}, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;-><init>(Lcom/drew/imaging/quicktime/QuickTimeHandler;)V

    iput-object p1, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->handlerFactory:Lcom/drew/metadata/mov/QuickTimeHandlerFactory;

    return-void
.end method


# virtual methods
.method protected getDirectory()Lcom/drew/metadata/mov/QuickTimeDirectory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 49
    new-instance v0, Lcom/drew/metadata/mov/QuickTimeDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/mov/QuickTimeDirectory;-><init>()V

    return-object v0
.end method

.method public processAtom(Lcom/drew/metadata/mov/atoms/Atom;[B)Lcom/drew/imaging/quicktime/QuickTimeHandler;
    .locals 2
    .param p1    # Lcom/drew/metadata/mov/atoms/Atom;
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

    .line 75
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 77
    iget-object p2, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "mvhd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    new-instance p2, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;

    invoke-direct {p2, v0, p1}, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 79
    iget-object p1, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    invoke-virtual {p2, p1}, Lcom/drew/metadata/mov/atoms/MovieHeaderAtom;->addMetadata(Lcom/drew/metadata/mov/QuickTimeDirectory;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "ftyp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    new-instance p2, Lcom/drew/metadata/mov/atoms/FileTypeCompatibilityAtom;

    invoke-direct {p2, v0, p1}, Lcom/drew/metadata/mov/atoms/FileTypeCompatibilityAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 82
    iget-object p1, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    invoke-virtual {p2, p1}, Lcom/drew/metadata/mov/atoms/FileTypeCompatibilityAtom;->addMetadata(Lcom/drew/metadata/mov/QuickTimeDirectory;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "hdlr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    new-instance p2, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;

    invoke-direct {p2, v0, p1}, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 85
    iget-object p1, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->handlerFactory:Lcom/drew/metadata/mov/QuickTimeHandlerFactory;

    invoke-virtual {p2}, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;->getComponentType()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p1, p2, v0}, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->getHandler(Ljava/lang/String;Lcom/drew/metadata/Metadata;)Lcom/drew/imaging/quicktime/QuickTimeHandler;

    move-result-object p1

    return-object p1

    .line 86
    :cond_2
    iget-object p2, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "mdhd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 87
    new-instance p2, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;

    invoke-direct {p2, v0, p1}, Lcom/drew/metadata/mov/atoms/MediaHeaderAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string p2, "cmov"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/drew/metadata/mov/QuickTimeAtomHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    const-string p2, "Compressed QuickTime movies not supported"

    invoke-virtual {p1, p2}, Lcom/drew/metadata/mov/QuickTimeDirectory;->addError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public shouldAcceptAtom(Lcom/drew/metadata/mov/atoms/Atom;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "mvhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "hdlr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

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

.method public shouldAcceptContainer(Lcom/drew/metadata/mov/atoms/Atom;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string/jumbo v1, "trak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string/jumbo v1, "udta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "moov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

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
