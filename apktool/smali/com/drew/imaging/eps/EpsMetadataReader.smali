.class public Lcom/drew/imaging/eps/EpsMetadataReader;
.super Ljava/lang/Object;
.source "EpsMetadataReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 24
    new-instance v1, Lcom/drew/metadata/eps/EpsReader;

    invoke-direct {v1}, Lcom/drew/metadata/eps/EpsReader;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v0}, Lcom/drew/metadata/eps/EpsReader;->extract(Ljava/io/InputStream;Lcom/drew/metadata/Metadata;)V

    .line 26
    new-instance v1, Lcom/drew/metadata/file/FileSystemMetadataReader;

    invoke-direct {v1}, Lcom/drew/metadata/file/FileSystemMetadataReader;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/drew/metadata/file/FileSystemMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    return-object v0
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 34
    new-instance v1, Lcom/drew/metadata/eps/EpsReader;

    invoke-direct {v1}, Lcom/drew/metadata/eps/EpsReader;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/drew/metadata/eps/EpsReader;->extract(Ljava/io/InputStream;Lcom/drew/metadata/Metadata;)V

    return-object v0
.end method
