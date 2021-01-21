.class public Lcom/drew/metadata/ico/IcoReader;
.super Ljava/lang/Object;
.source "IcoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 10
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "Exception reading ICO file metadata: "

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1}, Lcom/drew/lang/SequentialReader;->setMotorolaByteOrder(Z)V

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance p1, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    const-string v1, "Invalid header bytes"

    .line 52
    invoke-virtual {p1, v1}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 60
    new-instance p1, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- expecting 1 or 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v5

    if-nez v5, :cond_2

    .line 69
    new-instance p1, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    const-string v1, "Image count cannot be zero"

    .line 70
    invoke-virtual {p1, v1}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_2
    :goto_0
    if-ge v1, v5, :cond_4

    .line 84
    new-instance v6, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v6}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 86
    :try_start_1
    invoke-virtual {v6, v4, v2}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 88
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    const/4 v7, 0x3

    .line 89
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    const/4 v7, 0x4

    .line 90
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    .line 92
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    if-ne v2, v4, :cond_3

    const/4 v7, 0x5

    .line 95
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    const/4 v7, 0x7

    .line 96
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x6

    .line 99
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    const/16 v7, 0x8

    .line 100
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/drew/metadata/ico/IcoDirectory;->setInt(II)V

    :goto_1
    const/16 v7, 0x9

    .line 102
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/drew/metadata/ico/IcoDirectory;->setLong(IJ)V

    const/16 v7, 0xa

    .line 103
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/drew/metadata/ico/IcoDirectory;->setLong(IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 107
    :goto_2
    invoke-virtual {p2, v6}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception p1

    .line 76
    new-instance v1, Lcom/drew/metadata/ico/IcoDirectory;

    invoke-direct {v1}, Lcom/drew/metadata/ico/IcoDirectory;-><init>()V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/drew/metadata/ico/IcoDirectory;->addError(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, v1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void
.end method
