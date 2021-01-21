.class public Lcom/lwansbrough/RCTCamera/MutableImage;
.super Ljava/lang/Object;
.source "MutableImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lwansbrough/RCTCamera/MutableImage$GPS;,
        Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RNCamera"


# instance fields
.field private currentRepresentation:Landroid/graphics/Bitmap;

.field private hasBeenReoriented:Z

.field private final originalImageData:[B

.field private originalImageMetaData:Lcom/drew/metadata/Metadata;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->hasBeenReoriented:Z

    .line 36
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageData:[B

    .line 37
    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/MutableImage;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    return-void
.end method

.method private convertExposureTimeToDoubleFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 224
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private originalImageMetaData()Lcom/drew/metadata/Metadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData:Lcom/drew/metadata/Metadata;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageData:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageData:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData:Lcom/drew/metadata/Metadata;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData:Lcom/drew/metadata/Metadata;

    return-object v0
.end method

.method private rewriteOrientation(Landroidx/exifinterface/media/ExifInterface;)V
    .locals 2

    const/4 v0, 0x1

    .line 230
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private rotate(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;
        }
    .end annotation

    .line 109
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x43870000    # 270.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 132
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 120
    :pswitch_4
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 121
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 117
    :pswitch_5
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 114
    :pswitch_6
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :pswitch_7
    return-void

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getWidth()I

    move-result v3

    .line 146
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 141
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->hasBeenReoriented:Z

    return-void

    .line 152
    :cond_0
    new-instance p1, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;

    const-string v0, "failed to rotate"

    invoke-direct {p1, v0}, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static toBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    .line 160
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 161
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Will not happen"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toJpeg(Landroid/graphics/Bitmap;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const-string v0, "problem compressing jpeg"

    const-string v1, "RNCamera"

    .line 267
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 271
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 274
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    :goto_1
    throw p0
.end method

.method private writeLocationExifData(Lcom/facebook/react/bridge/ReadableMap;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 4

    const-string v0, "metadata"

    .line 234
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v0, "location"

    .line 238
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 241
    :cond_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v0, "coords"

    .line 242
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 246
    :cond_2
    :try_start_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v0, "latitude"

    .line 247
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "longitude"

    .line 248
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 250
    invoke-static {v0, v1, v2, v3, p2}, Lcom/lwansbrough/RCTCamera/MutableImage$GPS;->writeExifData(DDLandroidx/exifinterface/media/ExifInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RNCamera"

    const-string v0, "Couldn\'t write location data"

    .line 252
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cropToPreview(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getHeight()I

    move-result v1

    int-to-double v2, v1

    mul-double v2, v2, p1

    int-to-double v4, v0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    div-double/2addr v4, p1

    double-to-int p1, v4

    move p2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    double-to-int p1, v2

    move p2, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    return-void
.end method

.method public fixOrientation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData()Lcom/drew/metadata/Metadata;

    move-result-object v0

    .line 73
    const-class v1, Lcom/drew/metadata/exif/ExifIFD0Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/exif/ExifIFD0Directory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x112

    .line 76
    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifIFD0Directory;->containsTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 79
    invoke-direct {p0, v2}, Lcom/lwansbrough/RCTCamera/MutableImage;->rotate(I)V

    .line 80
    invoke-virtual {v0, v1, v3}, Lcom/drew/metadata/exif/ExifIFD0Directory;->setInt(II)V
    :try_end_0
    .catch Lcom/drew/imaging/ImageProcessingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 84
    :goto_0
    new-instance v1, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;

    const-string v2, "failed to fix orientation"

    invoke-direct {v1, v2, v0}, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeight()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public mirrorImage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;
        }
    .end annotation

    .line 49
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 53
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getWidth()I

    move-result v3

    .line 58
    invoke-virtual {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 53
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;

    const-string v1, "failed to mirror"

    invoke-direct {v0, v1}, Lcom/lwansbrough/RCTCamera/MutableImage$ImageMutationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBase64(I)Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/lwansbrough/RCTCamera/MutableImage;->toJpeg(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeDataToFile(Ljava/io/File;Lcom/facebook/react/bridge/ReadableMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->currentRepresentation:Landroid/graphics/Bitmap;

    invoke-static {v1, p3}, Lcom/lwansbrough/RCTCamera/MutableImage;->toJpeg(Landroid/graphics/Bitmap;I)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 176
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :try_start_0
    new-instance p3, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData()Lcom/drew/metadata/Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    .line 183
    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/metadata/Tag;

    .line 184
    invoke-virtual {v2}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v3

    .line 185
    invoke-virtual {v0, v3}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 186
    invoke-virtual {v2}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/lwansbrough/RCTCamera/MutableImage;->originalImageMetaData()Lcom/drew/metadata/Metadata;

    move-result-object p1

    const-class v0, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    .line 192
    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/exif/ExifSubIFDDirectory;

    .line 193
    invoke-virtual {p1}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/Tag;

    .line 194
    invoke-virtual {v1}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v2

    .line 197
    invoke-virtual {v1}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {p1, v2}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ExposureTime"

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lwansbrough/RCTCamera/MutableImage;->convertExposureTimeToDoubleFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/lwansbrough/RCTCamera/MutableImage;->writeLocationExifData(Lcom/facebook/react/bridge/ReadableMap;Landroidx/exifinterface/media/ExifInterface;)V

    .line 208
    iget-boolean p1, p0, Lcom/lwansbrough/RCTCamera/MutableImage;->hasBeenReoriented:Z

    if-eqz p1, :cond_4

    .line 209
    invoke-direct {p0, p3}, Lcom/lwansbrough/RCTCamera/MutableImage;->rewriteOrientation(Landroidx/exifinterface/media/ExifInterface;)V

    .line 211
    :cond_4
    invoke-virtual {p3}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Lcom/drew/imaging/ImageProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string p2, "RNCamera"

    const-string p3, "failed to save exif data"

    .line 213
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
