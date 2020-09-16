.class public Lcom/drew/metadata/exif/ExifThumbnailDescriptor;
.super Lcom/drew/metadata/exif/ExifDescriptorBase;
.source "ExifThumbnailDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/exif/ExifDescriptorBase<",
        "Lcom/drew/metadata/exif/ExifThumbnailDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/ExifThumbnailDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/ExifThumbnailDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/exif/ExifDescriptorBase;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x201

    if-eq p1, v0, :cond_1

    const/16 v0, 0x202

    if-eq p1, v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/drew/metadata/exif/ExifDescriptorBase;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->getThumbnailLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailLengthDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
