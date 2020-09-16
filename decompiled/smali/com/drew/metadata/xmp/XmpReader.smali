.class public Lcom/drew/metadata/xmp/XmpReader;
.super Ljava/lang/Object;
.source "XmpReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final ATTRIBUTE_EXTENDED_XMP:Ljava/lang/String; = "xmpNote:HasExtendedXMP"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTENDED_XMP_GUID_LENGTH:I = 0x20

.field private static final EXTENDED_XMP_INT_LENGTH:I = 0x4

.field private static final SCHEMA_XMP_NOTES:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final XMP_EXTENSION_JPEG_PREAMBLE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final XMP_JPEG_PREAMBLE:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtendedXMPGUID(Lcom/drew/metadata/Metadata;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 230
    const-class v0, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->getDirectoriesOfType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    .line 232
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/xmp/XmpDirectory;

    .line 233
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    :try_start_0
    const-string v2, "http://ns.adobe.com/xmp/note/"

    .line 236
    invoke-interface {v0, v2, v1, v1}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const-string/jumbo v2, "xmpNote:HasExtendedXMP"

    .line 242
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static processExtendedXMPChunk(Lcom/drew/metadata/Metadata;[BLjava/lang/String;[B)[B
    .locals 5
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 265
    array-length v0, p1

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_2

    .line 279
    :try_start_0
    new-instance v2, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v2, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    const/16 v3, 0x23

    int-to-long v3, v3

    .line 280
    invoke-virtual {v2, v3, v4}, Lcom/drew/lang/SequentialReader;->skip(J)V

    const/16 v3, 0x20

    .line 281
    invoke-virtual {v2, v3}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {v2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v3

    long-to-int p2, v3

    .line 285
    invoke-virtual {v2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p3, :cond_0

    .line 288
    new-array p3, p2, [B

    .line 290
    :cond_0
    array-length v2, p3

    if-ne v2, p2, :cond_1

    sub-int/2addr v0, v1

    .line 291
    invoke-static {p1, v1, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 293
    :cond_1
    new-instance p1, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    const-string v0, "Inconsistent length for the Extended XMP buffer: %d instead of %d"

    const/4 v1, 0x2

    .line 294
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 299
    new-instance p2, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {p2}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    .line 300
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :cond_2
    :goto_0
    return-object p3
.end method


# virtual methods
.method public extract(Lcom/drew/metadata/StringValue;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 197
    invoke-virtual {p1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 207
    new-instance v0, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {v0, p3}, Lcom/drew/metadata/xmp/XmpDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 213
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p1

    .line 214
    invoke-virtual {v0, p1}, Lcom/drew/metadata/xmp/XmpDirectory;->setXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing XMP data: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 219
    :goto_0
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 220
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :cond_1
    return-void
.end method

.method public extract([BIILcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 1
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 155
    new-instance v0, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    if-eqz p5, :cond_0

    .line 158
    invoke-virtual {v0, p5}, Lcom/drew/metadata/xmp/XmpDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    :cond_0
    if-nez p2, :cond_1

    .line 164
    :try_start_0
    array-length p5, p1

    if-ne p3, p5, :cond_1

    .line 165
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_1
    new-instance p5, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {p5, p1, p2, p3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([BII)V

    .line 168
    invoke-virtual {p5}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parse(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p1

    .line 171
    :goto_0
    invoke-virtual {v0, p1}, Lcom/drew/metadata/xmp/XmpDirectory;->setXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error processing XMP data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 176
    :goto_1
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    invoke-virtual {p4, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :cond_2
    return-void
.end method

.method public extract([BLcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 6
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 145
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/drew/metadata/xmp/XmpReader;->extract([BIILcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

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

    .line 77
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 6
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

    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move-object v0, p3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 97
    array-length v2, v1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_2

    .line 101
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "XMP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    :cond_1
    array-length v0, v1

    sub-int/2addr v0, v4

    new-array v0, v0, [B

    .line 105
    array-length v2, v0

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-virtual {p0, v0, p2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    .line 108
    invoke-static {p2}, Lcom/drew/metadata/xmp/XmpReader;->getExtendedXMPGUID(Lcom/drew/metadata/Metadata;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    .line 114
    array-length v2, v1

    const/16 v4, 0x23

    if-lt v2, v4, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {p2, v1, v0, p3}, Lcom/drew/metadata/xmp/XmpReader;->processExtendedXMPChunk(Lcom/drew/metadata/Metadata;[BLjava/lang/String;[B)[B

    move-result-object p3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 124
    invoke-virtual {p0, p3, p2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    :cond_4
    return-void
.end method
