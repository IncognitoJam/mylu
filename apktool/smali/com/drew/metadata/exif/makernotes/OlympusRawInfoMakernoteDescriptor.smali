.class public Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusRawInfoMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getColorMatrix2Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 74
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 75
    aget v4, v0, v3

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, " "

    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x601

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getOlympusLightSourceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getYCbCrCoefficientsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getColorMatrix2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x4

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOlympusLightSourceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x14

    if-eq v1, v2, :cond_4

    const/16 v2, 0x16

    if-eq v1, v2, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x200

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "White Fluorescent"

    return-object v0

    :pswitch_1
    const-string v0, "Cool White Fluorescent"

    return-object v0

    :pswitch_2
    const-string v0, "Day White Fluorescent"

    return-object v0

    :pswitch_3
    const-string v0, "Daylight Fluorescent"

    return-object v0

    :pswitch_4
    const-string v0, "Fine Weather"

    return-object v0

    :pswitch_5
    const-string v0, "Cloudy"

    return-object v0

    :pswitch_6
    const-string v0, "Shade"

    return-object v0

    :cond_1
    const-string v0, "Custom 1-4"

    return-object v0

    :cond_2
    const-string v0, "One Touch White Balance"

    return-object v0

    :cond_3
    const-string v0, "Evening Sunlight"

    return-object v0

    :cond_4
    const-string v0, "Tungsten (Incandescent)"

    return-object v0

    :cond_5
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getYCbCrCoefficientsDescription()Ljava/lang/String;
    .locals 11
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;

    const/16 v1, 0x601

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/drew/lang/Rational;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 90
    :goto_0
    array-length v5, v0

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1

    .line 92
    new-instance v5, Lcom/drew/lang/Rational;

    mul-int/lit8 v6, v4, 0x2

    aget v7, v0, v6

    int-to-short v7, v7

    int-to-long v7, v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6

    int-to-short v6, v6

    int-to-long v9, v6

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 97
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 98
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    const-string v4, " "

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method
