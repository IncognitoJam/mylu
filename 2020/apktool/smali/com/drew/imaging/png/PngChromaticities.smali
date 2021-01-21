.class public Lcom/drew/imaging/png/PngChromaticities;
.super Ljava/lang/Object;
.source "PngChromaticities.java"


# instance fields
.field private final _blueX:I

.field private final _blueY:I

.field private final _greenX:I

.field private final _greenY:I

.field private final _redX:I

.field private final _redY:I

.field private final _whitePointX:I

.field private final _whitePointY:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_whitePointX:I

    .line 51
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_whitePointY:I

    .line 52
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_redX:I

    .line 53
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_redY:I

    .line 54
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_greenX:I

    .line 55
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_greenY:I

    .line 56
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_blueX:I

    .line 57
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    iput p1, p0, Lcom/drew/imaging/png/PngChromaticities;->_blueY:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lcom/drew/imaging/png/PngProcessingException;

    invoke-direct {v0, p1}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_0
    new-instance p1, Lcom/drew/imaging/png/PngProcessingException;

    const-string v0, "Invalid number of bytes"

    invoke-direct {p1, v0}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBlueX()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_blueX:I

    return v0
.end method

.method public getBlueY()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_blueY:I

    return v0
.end method

.method public getGreenX()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_greenX:I

    return v0
.end method

.method public getGreenY()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_greenY:I

    return v0
.end method

.method public getRedX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_redX:I

    return v0
.end method

.method public getRedY()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_redY:I

    return v0
.end method

.method public getWhitePointX()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_whitePointX:I

    return v0
.end method

.method public getWhitePointY()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/drew/imaging/png/PngChromaticities;->_whitePointY:I

    return v0
.end method
