.class public Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusFocusInfoMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getAfPointDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x308

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocusDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "On"

    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x209

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_a

    const/16 v0, 0x209

    if-eq p1, v0, :cond_9

    const/16 v0, 0x305

    if-eq p1, v0, :cond_8

    const/16 v0, 0x308

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1201

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1500

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1600

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1204

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1205

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1209

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120a

    if-eq p1, v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getMacroLedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getManualFlashDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashBounceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getSensorTemperatureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getExternalFlashDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getAfPointDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getFocusDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getAutoFocusDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getFocusInfoVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalFlashBounceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Bounce or Off"

    const-string v1, "Direct"

    .line 135
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1204

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1201

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%d %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0 0"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Off"

    return-object v0

    :cond_1
    const-string v1, "1 0"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "On"

    return-object v0

    .line 129
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFlashZoomDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1205

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 150
    :cond_0
    new-array v1, v4, [I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v3

    move-object v0, v1

    .line 154
    :cond_1
    array-length v1, v0

    if-nez v1, :cond_2

    return-object v2

    .line 157
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    aget v2, v0, v3

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    array-length v5, v0

    if-le v5, v4, :cond_3

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    aget v0, v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v0, "0"

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Off"

    if-eqz v0, :cond_4

    return-object v2

    :cond_4
    const-string v0, "1"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "On"

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    const-string v0, "0 0"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    :cond_6
    const-string v0, "1 0"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v3

    .line 170
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistanceDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x305

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    const-string v1, "inf"

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getFocusInfoVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1600

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 213
    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    or-int/2addr v1, v3

    if-nez v1, :cond_1

    const-string v0, "Off"

    return-object v0

    .line 215
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    aget-byte v0, v0, v3

    and-int/2addr v0, v2

    if-lez v0, :cond_2

    const-string v0, "Mode 1"

    goto :goto_0

    :cond_2
    const-string v0, "Mode 2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroLedDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "On"

    .line 192
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x120a

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManualFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1209

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 181
    aget v1, v0, v1

    int-to-short v1, v1

    if-nez v1, :cond_1

    const-string v0, "Off"

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 184
    aget v2, v0, v1

    int-to-short v2, v2

    if-ne v2, v1, :cond_2

    const-string v0, "Full"

    return-object v0

    .line 186
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On (1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " strength)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensorTemperatureDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;

    const/16 v1, 0x1500

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
