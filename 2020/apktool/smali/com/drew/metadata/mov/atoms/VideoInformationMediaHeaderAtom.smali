.class public Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "VideoInformationMediaHeaderAtom.java"


# instance fields
.field graphicsMode:I

.field opcolor:[I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/FullAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 42
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;->graphicsMode:I

    const/4 p2, 0x3

    .line 43
    new-array p2, p2, [I

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    const/4 v0, 0x2

    aput p1, p2, v0

    iput-object p2, p0, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;->opcolor:[I

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;->opcolor:[I

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setIntArray(I[I)V

    .line 49
    iget v0, p0, Lcom/drew/metadata/mov/atoms/VideoInformationMediaHeaderAtom;->graphicsMode:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mov/media/QuickTimeVideoDirectory;->setInt(II)V

    return-void
.end method
