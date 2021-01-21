.class public Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;
.super Lcom/drew/metadata/exif/ExifTiffHandler;
.source "PhotoshopTiffHandler.java"


# static fields
.field private static final TAG_EXIF_GPS:I = 0x8825

.field private static final TAG_EXIF_IFD_POINTER:I = 0x8769

.field private static final TAG_FILE_INFORMATION:I = 0x83bb

.field private static final TAG_ICC_PROFILES:I = 0x8773

.field private static final TAG_JPEG_TABLES:I = 0x1b5

.field private static final TAG_PAGE_MAKER_EXTENSION:I = 0x14a

.field private static final TAG_PHOTOSHOP_IMAGE_RESOURCES:I = 0x8649

.field private static final TAG_T_ANNOTATIONS:I = 0xc44f

.field private static final TAG_T_IMAGE_SOURCE_DATA:I = 0x935c

.field private static final TAG_XMP:I = 0x2bc


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/exif/ExifTiffHandler;-><init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z
    .locals 2
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/drew/lang/RandomAccessReader;",
            "II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2bc

    const/4 v1, 0x1

    if-eq p5, v0, :cond_2

    const v0, 0x8649

    if-eq p5, v0, :cond_1

    const v0, 0x8773

    if-eq p5, v0, :cond_0

    .line 59
    invoke-super/range {p0 .. p6}, Lcom/drew/metadata/exif/ExifTiffHandler;->customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    new-instance p2, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {p2}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance p3, Lcom/drew/lang/ByteArrayReader;

    invoke-virtual {p4, p1, p6}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    iget-object p1, p0, Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p2, p3, p1}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;)V

    return v1

    .line 51
    :cond_1
    new-instance p2, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {p2}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    new-instance p3, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-virtual {p4, p1, p6}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    iget-object p1, p0, Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p2, p3, p6, p1}, Lcom/drew/metadata/photoshop/PhotoshopReader;->extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V

    return v1

    .line 48
    :cond_2
    new-instance p2, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {p2}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    invoke-virtual {p4, p1, p6}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    iget-object p3, p0, Lcom/drew/metadata/photoshop/PhotoshopTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    invoke-virtual {p2, p1, p3}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    return v1
.end method
