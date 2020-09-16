.class public Lcom/drew/metadata/mov/atoms/FullAtom;
.super Lcom/drew/metadata/mov/atoms/Atom;
.source "FullAtom.java"


# instance fields
.field flags:[B

.field version:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/Atom;-><init>(Lcom/drew/metadata/mov/atoms/Atom;)V

    .line 41
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mov/atoms/FullAtom;->version:I

    const/4 p2, 0x3

    .line 42
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/FullAtom;->flags:[B

    return-void
.end method
