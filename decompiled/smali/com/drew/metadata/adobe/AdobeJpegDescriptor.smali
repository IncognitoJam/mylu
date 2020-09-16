.class public Lcom/drew/metadata/adobe/AdobeJpegDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "AdobeJpegDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/adobe/AdobeJpegDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/adobe/AdobeJpegDirectory;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getColorTransformDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Unknown (RGB or CMYK)"

    const-string v1, "YCbCr"

    const-string v2, "YCCK"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/adobe/AdobeJpegDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDctEncodeVersionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/drew/metadata/adobe/AdobeJpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/adobe/AdobeJpegDirectory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/drew/metadata/adobe/AdobeJpegDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    const-string v0, "100"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/drew/metadata/adobe/AdobeJpegDescriptor;->getColorTransformDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/drew/metadata/adobe/AdobeJpegDescriptor;->getDctEncodeVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
