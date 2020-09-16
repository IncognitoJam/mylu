.class public Lcom/drew/metadata/jpeg/JpegDnlReader;
.super Ljava/lang/Object;
.source "JpegDnlReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 1

    .line 56
    const-class p3, Lcom/drew/metadata/jpeg/JpegDirectory;

    invoke-virtual {p2, p3}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object p3

    check-cast p3, Lcom/drew/metadata/jpeg/JpegDirectory;

    if-nez p3, :cond_0

    .line 58
    new-instance p1, Lcom/drew/metadata/ErrorDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/ErrorDirectory;-><init>()V

    .line 59
    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    const-string p2, "DNL segment found without SOFx - illegal JPEG format"

    .line 60
    invoke-virtual {p1, p2}, Lcom/drew/metadata/ErrorDirectory;->addError(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance p2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {p2, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    const/4 p1, 0x1

    .line 68
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->addError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;",
            "Lcom/drew/metadata/Metadata;",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 50
    invoke-virtual {p0, v0, p2, p3}, Lcom/drew/metadata/jpeg/JpegDnlReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
