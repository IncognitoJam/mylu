.class public Lcom/drew/metadata/avi/AviRiffHandler;
.super Ljava/lang/Object;
.source "AviRiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/riff/RiffHandler;


# instance fields
.field private final _directory:Lcom/drew/metadata/avi/AviDirectory;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/drew/metadata/avi/AviDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/avi/AviDirectory;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    .line 57
    iget-object v0, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public processChunk(Ljava/lang/String;[B)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    const-string/jumbo v0, "strh"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 87
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 88
    invoke-virtual {p1, v3}, Lcom/drew/lang/ByteArrayReader;->setMotorolaByteOrder(Z)V

    .line 90
    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/drew/lang/ByteArrayReader;->getBytes(II)[B

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/lang/String;-><init>([B)V

    .line 91
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1, v0, v0}, Lcom/drew/lang/ByteArrayReader;->getBytes(II)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const/16 v5, 0x14

    .line 96
    invoke-virtual {p1, v5}, Lcom/drew/lang/ByteArrayReader;->getFloat32(I)F

    move-result v5

    .line 97
    invoke-virtual {p1, v2}, Lcom/drew/lang/ByteArrayReader;->getFloat32(I)F

    move-result v2

    .line 99
    invoke-virtual {p1, v1}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result p1

    const-string/jumbo v1, "vids"

    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_0

    .line 106
    iget-object p2, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/drew/metadata/avi/AviDirectory;->containsTag(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 107
    iget-object p2, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    div-float/2addr v2, v5

    float-to-double v7, v2

    invoke-virtual {p2, v1, v7, v8}, Lcom/drew/metadata/avi/AviDirectory;->setDouble(ID)V

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double p1, p1

    double-to-int v2, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    .line 110
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v5, v7

    div-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 111
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    div-int/2addr v2, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v7, 0x0

    .line 112
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr p1, v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    int-to-double v7, v7

    sub-double/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "%1$02d:%2$02d:%3$02d"

    const/4 v7, 0x3

    .line 113
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v3

    aput-object v2, v8, v1

    aput-object p1, v8, v6

    invoke-static {p2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    invoke-virtual {p2, v7, p1}, Lcom/drew/metadata/avi/AviDirectory;->setString(ILjava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    invoke-virtual {p1, v0, v4}, Lcom/drew/metadata/avi/AviDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "auds"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    invoke-virtual {p1, v6}, Lcom/drew/metadata/avi/AviDirectory;->containsTag(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    div-float/2addr v2, v5

    float-to-double v0, v2

    invoke-virtual {p1, v6, v0, v1}, Lcom/drew/metadata/avi/AviDirectory;->setDouble(ID)V

    goto :goto_0

    :cond_1
    const-string v0, "avih"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    new-instance p1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {p1, p2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 125
    invoke-virtual {p1, v3}, Lcom/drew/lang/ByteArrayReader;->setMotorolaByteOrder(Z)V

    .line 133
    invoke-virtual {p1, v2}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result p2

    .line 135
    invoke-virtual {p1, v1}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result v0

    const/16 v1, 0x24

    .line 136
    invoke-virtual {p1, v1}, Lcom/drew/lang/ByteArrayReader;->getInt32(I)I

    move-result p1

    .line 139
    iget-object v1, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/drew/metadata/avi/AviDirectory;->setInt(II)V

    .line 140
    iget-object v0, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/avi/AviDirectory;->setInt(II)V

    .line 141
    iget-object p1, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Lcom/drew/metadata/avi/AviDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    iget-object p2, p0, Lcom/drew/metadata/avi/AviRiffHandler;->_directory:Lcom/drew/metadata/avi/AviDirectory;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/drew/metadata/avi/AviDirectory;->addError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldAcceptChunk(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "strh"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "avih"

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

.method public shouldAcceptList(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hdrl"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "strl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AVI "

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

.method public shouldAcceptRiffIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "AVI "

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
