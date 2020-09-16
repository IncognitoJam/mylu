.class public Lcom/drew/metadata/pcx/PcxReader;
.super Ljava/lang/Object;
.source "PcxReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 4
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 45
    new-instance v0, Lcom/drew/metadata/pcx/PcxDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/pcx/PcxDirectory;-><init>()V

    .line 46
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 55
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p2

    if-ne p2, v2, :cond_2

    const/4 p2, 0x2

    .line 59
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/4 p2, 0x3

    .line 60
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/4 p2, 0x4

    .line 61
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/4 p2, 0x5

    .line 62
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/4 p2, 0x6

    .line 63
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/4 p2, 0x7

    .line 64
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/16 p2, 0x8

    .line 65
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/16 p2, 0x9

    const/16 v2, 0x30

    .line 66
    invoke-virtual {p1, v2}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/drew/metadata/pcx/PcxDirectory;->setByteArray(I[B)V

    const-wide/16 v2, 0x1

    .line 67
    invoke-virtual {p1, v2, v3}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 68
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    const/16 p2, 0xb

    .line 69
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 71
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    if-eqz p2, :cond_0

    const/16 v1, 0xc

    .line 73
    invoke-virtual {v0, v1, p2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    if-eqz p2, :cond_1

    const/16 v1, 0xd

    .line 77
    invoke-virtual {v0, v1, p2}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p2, 0xe

    .line 81
    invoke-virtual {v0, p2, p1}, Lcom/drew/metadata/pcx/PcxDirectory;->setInt(II)V

    goto :goto_0

    .line 57
    :cond_2
    new-instance p1, Lcom/drew/imaging/ImageProcessingException;

    const-string p2, "Invalid PCX encoding byte"

    invoke-direct {p1, p2}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_3
    new-instance p1, Lcom/drew/imaging/ImageProcessingException;

    const-string p2, "Invalid PCX identifier byte"

    invoke-direct {p1, p2}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception reading PCX file metadata: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/pcx/PcxDirectory;->addError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
