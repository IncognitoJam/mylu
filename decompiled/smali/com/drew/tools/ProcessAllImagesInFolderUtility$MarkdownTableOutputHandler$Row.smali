.class Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;
.super Ljava/lang/Object;
.source "ProcessAllImagesInFolderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Row"
.end annotation


# instance fields
.field private exifVersion:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field final file:Ljava/io/File;

.field private makernote:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field final metadata:Lcom/drew/metadata/Metadata;

.field private model:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field final relativePath:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/drew/metadata/Metadata;Ljava/lang/String;)V
    .locals 3
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

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->file:Ljava/io/File;

    .line 485
    iput-object p2, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->metadata:Lcom/drew/metadata/Metadata;

    .line 486
    iput-object p3, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->relativePath:Ljava/lang/String;

    .line 488
    const-class p1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {p2, p1}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    .line 489
    const-class p3, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    invoke-virtual {p2, p3}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object p3

    check-cast p3, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    .line 490
    const-class v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    if-eqz p1, :cond_0

    const/16 v1, 0x10f

    .line 492
    invoke-virtual {p1, v1}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->manufacturer:Ljava/lang/String;

    const/16 v1, 0x110

    .line 493
    invoke-virtual {p1, v1}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->model:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const v1, 0x9000

    .line 497
    invoke-virtual {p3, v1}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->exifVersion:Ljava/lang/String;

    const v1, 0x927c

    .line 498
    invoke-virtual {p3, v1}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->containsTag(I)Z

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/16 v1, 0x100

    .line 501
    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x101

    .line 502
    invoke-virtual {v0, v2}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 503
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Yes (%s x %s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Yes"

    :goto_1
    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->thumbnail:Ljava/lang/String;

    .line 507
    :cond_3
    invoke-virtual {p2}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/drew/metadata/Directory;

    .line 508
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makernote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    invoke-virtual {p2}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->makernote:Ljava/lang/String;

    .line 513
    :cond_5
    iget-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->makernote:Ljava/lang/String;

    if-nez p1, :cond_7

    if-eqz p3, :cond_6

    const-string p1, "(Unknown)"

    goto :goto_2

    :cond_6
    const-string p1, "N/A"

    .line 514
    :goto_2
    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->makernote:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->model:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->exifVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->makernote:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->thumbnail:Ljava/lang/String;

    return-object p0
.end method
