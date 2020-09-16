.class public Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;
.super Lcom/drew/metadata/mov/QuickTimeMetadataHandler;
.source "QuickTimeDataHandler.java"


# instance fields
.field private currentIndex:I

.field private keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/drew/metadata/mov/QuickTimeMetadataHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->currentIndex:I

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->keys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected processAtom(Lcom/drew/metadata/mov/atoms/Atom;[B)Lcom/drew/imaging/quicktime/QuickTimeHandler;
    .locals 3
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

    if-eqz p2, :cond_1

    .line 69
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p2}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 70
    iget-object v1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v2, "keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->processKeys(Lcom/drew/lang/SequentialByteArrayReader;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p0, p2, v0}, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->processData([BLcom/drew/lang/SequentialByteArrayReader;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/drew/lang/ByteUtil;->getInt32([BIZ)I

    move-result p1

    if-lez p1, :cond_2

    .line 77
    iget-object p2, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->keys:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_2

    sub-int/2addr p1, v0

    .line 78
    iput p1, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->currentIndex:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method protected processData([BLcom/drew/lang/SequentialByteArrayReader;)V
    .locals 3
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/lang/SequentialByteArrayReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 103
    invoke-virtual {p2, v0, v1}, Lcom/drew/lang/SequentialByteArrayReader;->skip(J)V

    .line 104
    new-instance v0, Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p2, p1}, Lcom/drew/lang/SequentialByteArrayReader;->getBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 105
    iget-object p1, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->directory:Lcom/drew/metadata/mov/QuickTimeDirectory;

    sget-object p2, Lcom/drew/metadata/mov/metadata/QuickTimeMetadataDirectory;->_tagIntegerMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->keys:Ljava/util/ArrayList;

    iget v2, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/drew/metadata/mov/QuickTimeDirectory;->setString(ILjava/lang/String;)V

    return-void
.end method

.method protected processKeys(Lcom/drew/lang/SequentialByteArrayReader;)V
    .locals 6
    .param p1    # Lcom/drew/lang/SequentialByteArrayReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialByteArrayReader;->skip(J)V

    .line 89
    invoke-virtual {p1}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result v4

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialByteArrayReader;->skip(J)V

    .line 93
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p1, v4}, Lcom/drew/lang/SequentialByteArrayReader;->getBytes(I)[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 94
    iget-object v4, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->keys:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected shouldAcceptAtom(Lcom/drew/metadata/mov/atoms/Atom;)Z
    .locals 2
    .param p1    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 53
    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "hdlr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v0, "data"

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

.method protected shouldAcceptContainer(Lcom/drew/metadata/mov/atoms/Atom;)Z
    .locals 3
    .param p1    # Lcom/drew/metadata/mov/atoms/Atom;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 61
    iget-object v0, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    const-string v1, "ilst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/drew/metadata/mov/atoms/Atom;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/drew/lang/ByteUtil;->getInt32([BIZ)I

    move-result p1

    iget-object v0, p0, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
