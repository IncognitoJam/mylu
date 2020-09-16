.class public Lcom/drew/tools/ProcessAllImagesInFolderUtility;
.super Ljava/lang/Object;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandlerBase;,
        Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v1, v5, :cond_5

    .line 60
    aget-object v5, p0, v1

    const-string v7, "--text"

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    new-instance v3, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;

    invoke-direct {v3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$TextFileOutputHandler;-><init>()V

    goto :goto_1

    :cond_0
    const-string v7, "--markdown"

    .line 64
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    new-instance v3, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;

    invoke-direct {v3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;-><init>()V

    goto :goto_1

    :cond_1
    const-string v7, "--unknown"

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    new-instance v3, Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;

    invoke-direct {v3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$UnknownTagHandler;-><init>()V

    goto :goto_1

    :cond_2
    const-string v7, "--log-file"

    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 71
    array-length v4, p0

    sub-int/2addr v4, v6

    if-ne v1, v4, :cond_3

    .line 72
    invoke-static {}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->printUsage()V

    .line 73
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 75
    :cond_3
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    add-int/lit8 v1, v1, 0x1

    aget-object v7, p0, v1

    invoke-direct {v5, v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    .line 82
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 83
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Expects one or more directories as arguments."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->printUsage()V

    .line 85
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_6
    if-nez v3, :cond_7

    .line 89
    new-instance v3, Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;

    invoke-direct {v3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$BasicFileHandler;-><init>()V

    .line 92
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v1, v3, v0, v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V

    goto :goto_2

    .line 98
    :cond_8
    invoke-interface {v3, v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onScanCompleted(Ljava/io/PrintStream;)V

    .line 100
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Completed in %d ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v4, p0, :cond_9

    .line 103
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    :cond_9
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  java com.drew.tools.ProcessAllImagesInFolderUtility [--text|--markdown|--unknown] [--log-file <file-name>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 116
    invoke-interface {p1, p0}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onStartingDirectory(Ljava/io/File;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 128
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4, p1, v3, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility;->processDirectory(Ljava/io/File;Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;Ljava/lang/String;Ljava/io/PrintStream;)V

    goto :goto_2

    .line 132
    :cond_2
    invoke-interface {p1, v4}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->shouldProcess(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-interface {p1, v4, p3, p2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onBeforeExtraction(Ljava/io/File;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-static {v4}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-interface {p1, v4, v3, p2, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onExtractionSuccess(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;Ljava/io/PrintStream;)V

    goto :goto_2

    :catch_0
    move-exception v3

    .line 141
    invoke-interface {p1, v4, v3, p3}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$FileHandler;->onExtractionError(Ljava/io/File;Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
