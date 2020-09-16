.class public Lcom/drew/imaging/png/PngHeader;
.super Ljava/lang/Object;
.source "PngHeader.java"


# instance fields
.field private _bitsPerSample:B

.field private _colorType:Lcom/drew/imaging/png/PngColorType;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private _compressionType:B

.field private _filterMethod:B

.field private _imageHeight:I

.field private _imageWidth:I

.field private _interlaceMethod:B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 48
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngHeader;->_imageWidth:I

    .line 51
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngHeader;->_imageHeight:I

    .line 52
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput-byte p1, p0, Lcom/drew/imaging/png/PngHeader;->_bitsPerSample:B

    .line 53
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    .line 54
    invoke-static {p1}, Lcom/drew/imaging/png/PngColorType;->fromNumericValue(I)Lcom/drew/imaging/png/PngColorType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iput-object v1, p0, Lcom/drew/imaging/png/PngHeader;->_colorType:Lcom/drew/imaging/png/PngColorType;

    .line 59
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput-byte p1, p0, Lcom/drew/imaging/png/PngHeader;->_compressionType:B

    .line 60
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput-byte p1, p0, Lcom/drew/imaging/png/PngHeader;->_filterMethod:B

    .line 61
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result p1

    iput-byte p1, p0, Lcom/drew/imaging/png/PngHeader;->_interlaceMethod:B

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/drew/imaging/png/PngProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected PNG color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Lcom/drew/imaging/png/PngProcessingException;

    invoke-direct {v0, p1}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_1
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    const-string v0, "PNG header chunk must have 13 data bytes"

    invoke-direct {p1, v0}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBitsPerSample()B
    .locals 1

    .line 80
    iget-byte v0, p0, Lcom/drew/imaging/png/PngHeader;->_bitsPerSample:B

    return v0
.end method

.method public getColorType()Lcom/drew/imaging/png/PngColorType;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/drew/imaging/png/PngHeader;->_colorType:Lcom/drew/imaging/png/PngColorType;

    return-object v0
.end method

.method public getCompressionType()B
    .locals 1

    .line 91
    iget-byte v0, p0, Lcom/drew/imaging/png/PngHeader;->_compressionType:B

    return v0
.end method

.method public getFilterMethod()B
    .locals 1

    .line 96
    iget-byte v0, p0, Lcom/drew/imaging/png/PngHeader;->_filterMethod:B

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/drew/imaging/png/PngHeader;->_imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/drew/imaging/png/PngHeader;->_imageWidth:I

    return v0
.end method

.method public getInterlaceMethod()B
    .locals 1

    .line 101
    iget-byte v0, p0, Lcom/drew/imaging/png/PngHeader;->_interlaceMethod:B

    return v0
.end method
