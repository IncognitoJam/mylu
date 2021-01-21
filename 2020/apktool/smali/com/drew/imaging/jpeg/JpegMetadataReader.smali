.class public Lcom/drew/imaging/jpeg/JpegMetadataReader;
.super Ljava/lang/Object;
.source "JpegMetadataReader.java"


# static fields
.field public static final ALL_READERS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    .line 57
    new-array v0, v0, [Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    new-instance v1, Lcom/drew/metadata/jpeg/JpegReader;

    invoke-direct {v1}, Lcom/drew/metadata/jpeg/JpegReader;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/jpeg/JpegCommentReader;

    invoke-direct {v1}, Lcom/drew/metadata/jpeg/JpegCommentReader;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/jfif/JfifReader;

    invoke-direct {v1}, Lcom/drew/metadata/jfif/JfifReader;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/jfxx/JfxxReader;

    invoke-direct {v1}, Lcom/drew/metadata/jfxx/JfxxReader;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v1}, Lcom/drew/metadata/exif/ExifReader;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {v1}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {v1}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {v1}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/photoshop/DuckyReader;

    invoke-direct {v1}, Lcom/drew/metadata/photoshop/DuckyReader;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v1}, Lcom/drew/metadata/iptc/IptcReader;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/adobe/AdobeJpegReader;

    invoke-direct {v1}, Lcom/drew/metadata/adobe/AdobeJpegReader;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/jpeg/JpegDhtReader;

    invoke-direct {v1}, Lcom/drew/metadata/jpeg/JpegDhtReader;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/drew/metadata/jpeg/JpegDnlReader;

    invoke-direct {v1}, Lcom/drew/metadata/jpeg/JpegDnlReader;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/drew/imaging/jpeg/JpegMetadataReader;->ALL_READERS:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;)V
    .locals 1
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V

    return-void
.end method

.method public static process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V
    .locals 4
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/metadata/Metadata;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 115
    sget-object p2, Lcom/drew/imaging/jpeg/JpegMetadataReader;->ALL_READERS:Ljava/lang/Iterable;

    .line 117
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    .line 119
    invoke-interface {v2}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->getSegmentTypes()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 120
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_2
    new-instance v1, Lcom/drew/lang/StreamReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments(Lcom/drew/lang/SequentialReader;Ljava/lang/Iterable;)Lcom/drew/imaging/jpeg/JpegSegmentData;

    move-result-object p1

    .line 126
    invoke-static {p0, p2, p1}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->processJpegSegmentData(Lcom/drew/metadata/Metadata;Ljava/lang/Iterable;Lcom/drew/imaging/jpeg/JpegSegmentData;)V

    return-void
.end method

.method public static processJpegSegmentData(Lcom/drew/metadata/Metadata;Ljava/lang/Iterable;Lcom/drew/imaging/jpeg/JpegSegmentData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/metadata/Metadata;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;",
            "Lcom/drew/imaging/jpeg/JpegSegmentData;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;

    .line 133
    invoke-interface {v0}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->getSegmentTypes()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 134
    invoke-virtual {p2, v2}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegments(Lcom/drew/imaging/jpeg/JpegSegmentType;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v0, v3, p0, v2}, Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;->readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public static readMetadata(Ljava/io/File;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)",
            "Lcom/drew/metadata/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    :try_start_0
    invoke-static {v0, p1}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    new-instance v0, Lcom/drew/metadata/file/FileSystemMetadataReader;

    invoke-direct {v0}, Lcom/drew/metadata/file/FileSystemMetadataReader;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/drew/metadata/file/FileSystemMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public static readMetadata(Ljava/io/InputStream;Ljava/lang/Iterable;)Lcom/drew/metadata/Metadata;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;",
            ">;)",
            "Lcom/drew/metadata/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 77
    invoke-static {v0, p0, p1}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->process(Lcom/drew/metadata/Metadata;Ljava/io/InputStream;Ljava/lang/Iterable;)V

    return-object v0
.end method
