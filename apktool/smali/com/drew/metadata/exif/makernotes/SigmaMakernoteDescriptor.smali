.class public Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SigmaMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_4

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Shutter Speed Priority AE"

    return-object v0

    :cond_2
    const-string v0, "Program AE"

    return-object v0

    :cond_3
    const-string v0, "Manual"

    return-object v0

    :cond_4
    const-string v0, "Aperture Priority AE"

    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_3

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    const/16 v2, 0x43

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Center Weighted Average"

    return-object v0

    :cond_2
    const-string v0, "Average"

    return-object v0

    :cond_3
    const-string v0, "Multi Segment"

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SigmaMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
