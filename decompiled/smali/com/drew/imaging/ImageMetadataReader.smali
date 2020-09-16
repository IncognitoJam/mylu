.class public Lcom/drew/imaging/ImageMetadataReader;
.super Ljava/lang/Object;
.source "ImageMetadataReader.java"


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "-markdown"

    .line 226
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    const-string v0, "-hex"

    .line 227
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 229
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v5, :cond_1

    .line 230
    const-class v0, Lcom/drew/imaging/ImageMetadataReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "metadata-extractor version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 233
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v7, v5, [Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "a.b.c"

    :cond_0
    aput-object v0, v7, v4

    const-string v0, "Usage: java -jar metadata-extractor-%s.jar <filename> [<filename>] [-thumb] [-markdown] [-hex]"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 237
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 239
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    .line 241
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v7, v11, v4

    const-string v12, "\n***** PROCESSING: %s%n%n"

    invoke-virtual {v0, v12, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    const/4 v11, 0x0

    .line 246
    :try_start_0
    invoke-static {v10}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 248
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v12, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 249
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 251
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    const/4 v0, 0x2

    if-nez v2, :cond_4

    .line 253
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v9, v4

    long-to-double v12, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v9, v5

    const-string v12, "Processed %.3f MB file in %.2f ms%n%n"

    invoke-virtual {v8, v12, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_4
    if-eqz v2, :cond_7

    .line 256
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 257
    invoke-static {v7}, Lcom/drew/lang/StringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    const-class v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {v11, v9}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v9

    check-cast v9, Lcom/drew/metadata/exif/ExifIFD0Directory;

    const-string v10, ""

    if-nez v9, :cond_5

    move-object v12, v10

    goto :goto_1

    :cond_5
    const/16 v12, 0x10f

    .line 259
    invoke-virtual {v9, v12}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/16 v10, 0x110

    .line 260
    invoke-virtual {v9, v10}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 261
    :goto_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->println()V

    .line 262
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "---"

    invoke-virtual {v9, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->println()V

    .line 264
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v12, v13, v4

    aput-object v10, v13, v5

    const-string v10, "# %s - %s%n"

    invoke-virtual {v9, v10, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 265
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/PrintStream;->println()V

    .line 266
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const-string v12, "<a href=\"https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s\">%n"

    invoke-virtual {v9, v12, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 267
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const-string v7, "<img src=\"https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s\" width=\"300\"/><br/>%n"

    invoke-virtual {v9, v7, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 268
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    .line 271
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Directory | Tag Id | Tag Name | Extracted Value"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, ":--------:|-------:|----------|----------------"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_7
    invoke-virtual {v11}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/drew/metadata/Directory;

    .line 277
    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v9

    .line 278
    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->getTags()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/drew/metadata/Tag;

    .line 279
    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v12

    .line 280
    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 283
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x400

    if-le v14, v15, :cond_9

    .line 284
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "..."

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_9
    const/4 v14, 0x4

    if-eqz v2, :cond_a

    .line 288
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v4

    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v5

    aput-object v12, v14, v0

    const/4 v11, 0x3

    aput-object v13, v14, v11

    const-string v11, "%s|0x%s|%s|%s%n"

    invoke-virtual {v15, v11, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    :cond_a
    const/4 v15, 0x3

    if-eqz v3, :cond_b

    .line 296
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v4

    invoke-virtual {v11}, Lcom/drew/metadata/Tag;->getTagTypeHex()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v5

    aput-object v12, v14, v0

    const/4 v11, 0x3

    aput-object v13, v14, v11

    const-string v11, "[%s - %s] %s = %s%n"

    invoke-virtual {v15, v11, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    :cond_b
    const/4 v11, 0x3

    .line 298
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v4

    aput-object v12, v11, v5

    aput-object v13, v11, v0

    const-string v12, "[%s] %s = %s%n"

    invoke-virtual {v14, v12, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 304
    :cond_c
    invoke-virtual {v8}, Lcom/drew/metadata/Directory;->getErrors()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 305
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
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
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 201
    new-instance v0, Lcom/drew/metadata/file/FileSystemMetadataReader;

    invoke-direct {v0}, Lcom/drew/metadata/file/FileSystemMetadataReader;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/drew/metadata/file/FileSystemMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 199
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
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
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 100
    invoke-static {p0, v0, v1}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public static readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 119
    :goto_0
    invoke-static {p0}, Lcom/drew/imaging/FileTypeDetector;->detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;

    move-result-object v0

    .line 121
    invoke-static {p0, p1, p2, v0}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;JLcom/drew/imaging/FileType;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    .line 123
    new-instance p1, Lcom/drew/metadata/file/FileTypeDirectory;

    invoke-direct {p1, v0}, Lcom/drew/metadata/file/FileTypeDirectory;-><init>(Lcom/drew/imaging/FileType;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-object p0
.end method

.method public static readMetadata(Ljava/io/InputStream;JLcom/drew/imaging/FileType;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/drew/imaging/ImageProcessingException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/drew/imaging/ImageMetadataReader$1;->$SwitchMap$com$drew$imaging$FileType:[I

    invoke-virtual {p3}, Lcom/drew/imaging/FileType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 180
    new-instance p0, Lcom/drew/metadata/Metadata;

    invoke-direct {p0}, Lcom/drew/metadata/Metadata;-><init>()V

    return-object p0

    .line 178
    :pswitch_0
    new-instance p0, Lcom/drew/imaging/ImageProcessingException;

    const-string p1, "File format could not be determined"

    invoke-direct {p0, p1}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :pswitch_1
    invoke-static {p0}, Lcom/drew/imaging/eps/EpsMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 174
    :pswitch_2
    invoke-static {p0}, Lcom/drew/imaging/mp4/Mp4MetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 172
    :pswitch_3
    invoke-static {p0}, Lcom/drew/imaging/quicktime/QuickTimeMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 170
    :pswitch_4
    invoke-static {p0}, Lcom/drew/imaging/wav/WavMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 168
    :pswitch_5
    invoke-static {p0}, Lcom/drew/imaging/avi/AviMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_6
    invoke-static {p0}, Lcom/drew/imaging/raf/RafMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_7
    invoke-static {p0}, Lcom/drew/imaging/webp/WebpMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_8
    invoke-static {p0}, Lcom/drew/imaging/pcx/PcxMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_9
    invoke-static {p0}, Lcom/drew/imaging/ico/IcoMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 158
    :pswitch_a
    invoke-static {p0}, Lcom/drew/imaging/gif/GifMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_b
    invoke-static {p0}, Lcom/drew/imaging/bmp/BmpMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 154
    :pswitch_c
    invoke-static {p0}, Lcom/drew/imaging/png/PngMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 152
    :pswitch_d
    invoke-static {p0}, Lcom/drew/imaging/psd/PsdMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 150
    :pswitch_e
    new-instance p3, Lcom/drew/lang/RandomAccessStreamReader;

    const/16 v0, 0x800

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;IJ)V

    invoke-static {p3}, Lcom/drew/imaging/tiff/TiffMetadataReader;->readMetadata(Lcom/drew/lang/RandomAccessReader;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_f
    invoke-static {p0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
