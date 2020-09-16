.class public Lcom/drew/metadata/file/FileSystemMetadataReader;
.super Ljava/lang/Object;
.source "FileSystemMetadataReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-class v0, Lcom/drew/metadata/file/FileSystemDirectory;

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/file/FileSystemDirectory;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/drew/metadata/file/FileSystemDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/file/FileSystemDirectory;-><init>()V

    .line 44
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :cond_0
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/drew/metadata/file/FileSystemDirectory;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/drew/metadata/file/FileSystemDirectory;->setLong(IJ)V

    const/4 p2, 0x3

    .line 49
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2, v1}, Lcom/drew/metadata/file/FileSystemDirectory;->setDate(ILjava/util/Date;)V

    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is not readable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File object must reference a file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
