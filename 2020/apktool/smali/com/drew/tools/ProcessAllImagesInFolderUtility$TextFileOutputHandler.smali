.class Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;
.super Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFileOutputHandler"
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;-><init>()V

    return-void
.end method

.method private static closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p0    # Ljava/io/Writer;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "Generated using metadata-extractor\n"

    .line 455
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "https://drewnoakes.com/code/exif/\n"

    .line 456
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 458
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    :cond_0
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 5
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 275
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-static {v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->deleteRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 269
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a directory."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static openWriter(Ljava/io/File;)Ljava/io/PrintWriter;
    .locals 7
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

    .line 425
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s/metadata"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    const/4 v0, 0x2

    .line 429
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "%s/metadata/%s.txt"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 439
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :try_start_1
    invoke-static {v5}, Lcom/drew/imaging/FileTypeDetector;->detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;

    move-result-object p0

    const-string v0, "TYPE: %s\n"

    .line 441
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/drew/imaging/FileType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 449
    new-instance p0, Ljava/io/PrintWriter;

    invoke-direct {p0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_1

    .line 445
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw p0
.end method

.method private static writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V
    .locals 4
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 384
    invoke-virtual {p0}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/Directory;

    if-nez p2, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getParent()Lcom/drew/metadata/Directory;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getParent()Lcom/drew/metadata/Directory;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v3, p3, 0x4

    if-ge v2, v3, :cond_2

    const/16 v3, 0x20

    .line 393
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "- "

    .line 395
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 397
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, p3, 0x1

    .line 398
    invoke-static {p0, p1, v1, v2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    const-string p1, "\n"

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "\n"

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    const/4 v1, 0x0

    .line 410
    :try_start_0
    invoke-static {p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->openWriter(Ljava/io/File;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :try_start_1
    invoke-static {v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 417
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const-string p1, "IO exception writing metadata file: %s%s"

    invoke-virtual {p3, p1, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    return-void
.end method

.method public onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 16
    .param p1    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/PrintStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 298
    invoke-super/range {p0 .. p4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V

    .line 304
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->openWriter(Ljava/io/File;)Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->hasErrors()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "\n"

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 308
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/drew/metadata/Directory;

    .line 309
    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->hasErrors()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->getErrors()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "[ERROR: %s] %s%s"

    .line 312
    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    aput-object v10, v12, v5

    aput-object v6, v12, v3

    invoke-virtual {v2, v11, v12}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 318
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    .line 319
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getTags()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x4

    const-string v13, ""

    if-eqz v11, :cond_7

    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/drew/metadata/Tag;

    .line 322
    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v14

    .line 323
    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    move-object v13, v15

    .line 327
    :goto_4
    instance-of v15, v0, Lcom/drew/metadata/file/FileSystemDirectory;

    if-eqz v15, :cond_6

    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v15

    if-ne v15, v4, :cond_6

    const-string v13, "<omitted for regression testing as checkout dependent>"

    :cond_6
    const-string v15, "[%s - %s] %s = %s%s"

    const/4 v1, 0x5

    .line 329
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v7

    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagTypeHex()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v5

    aput-object v14, v1, v3

    aput-object v13, v1, v4

    aput-object v6, v1, v12

    invoke-virtual {v2, v15, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 331
    :cond_7
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getTagCount()I

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 334
    :cond_8
    instance-of v1, v0, Lcom/drew/metadata/xmp/XmpDirectory;

    if-eqz v1, :cond_4

    .line 336
    check-cast v0, Lcom/drew/metadata/xmp/XmpDirectory;

    .line 337
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    :try_start_4
    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v0
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    .line 340
    :goto_5
    :try_start_5
    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 341
    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 342
    invoke-interface {v9}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getNamespace()Ljava/lang/String;

    move-result-object v10

    .line 343
    invoke-interface {v9}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 344
    invoke-interface {v9}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    if-nez v10, :cond_9

    move-object v10, v13

    :cond_9
    if-nez v11, :cond_a

    move-object v11, v13

    :cond_a
    if-nez v9, :cond_b

    move-object v4, v13

    goto :goto_6

    .line 354
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x200

    if-le v14, v15, :cond_c

    const-string v14, "%s <truncated from %d characters>"
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    :try_start_6
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    move-object v4, v9

    :goto_6
    const-string v9, "[XMPMeta - %s] %s = %s%s"

    .line 357
    new-array v14, v12, [Ljava/lang/Object;

    aput-object v10, v14, v7

    aput-object v11, v14, v5

    aput-object v4, v14, v3
    :try_end_6
    .catch Lcom/adobe/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v4, 0x3

    :try_start_7
    aput-object v6, v14, v4

    invoke-virtual {v2, v9, v14}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_7
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v4, 0x3

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 361
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :cond_d
    if-eqz v1, :cond_4

    .line 364
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v1, p2

    const/4 v3, 0x0

    .line 369
    invoke-static {v1, v2, v3, v7}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->writeHierarchyLevel(Lcom/drew/metadata/Metadata;Ljava/io/PrintWriter;Lcom/drew/metadata/Directory;I)V

    .line 371
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 373
    :try_start_9
    invoke-static {v2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    move-object v2, v3

    :goto_8
    invoke-static {v2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->closeWriter(Ljava/io/Writer;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public onStartingDirectory(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 258
    invoke-super {p0, p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;->onStartingDirectory(Ljava/io/File;)V

    .line 261
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/metadata"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    invoke-static {v0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;->deleteRecursively(Ljava/io/File;)V

    :cond_0
    return-void
.end method
