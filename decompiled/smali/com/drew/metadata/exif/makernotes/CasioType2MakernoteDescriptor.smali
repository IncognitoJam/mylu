.class public Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CasioType2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getCasioPreviewThumbnailDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of image data>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCcdIsoSensitivityDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "On"

    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3014

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColourModeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    .line 119
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3015

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "-1"

    const-string v1, "Normal"

    const-string v2, "+1"

    .line 221
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b

    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    const/16 v0, 0x14

    if-eq p1, v0, :cond_8

    const/16 v0, 0x19

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2022

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2034

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3006

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2011

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2012

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 100
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFilterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getEnhancementDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getColourModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getCcdIsoSensitivityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocusMode2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalance2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalanceBiasDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getTimeZoneDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFlashDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getObjectDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getCasioPreviewThumbnailDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getWhiteBalance1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIsoSensitivityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocusMode1Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getQualityModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailSizeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getThumbnailDimensionsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3000
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3014
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEnhancementDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    .line 113
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3016

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3017

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashDistanceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    .line 169
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2034

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFocusMode1Description()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Normal"

    const-string v1, "Macro"

    .line 270
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusMode2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 144
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

    :cond_1
    const-string v0, "Multi-Area Focus"

    return-object v0

    :cond_2
    const-string v0, "Fixation"

    return-object v0
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 287
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
    const-string v0, "2304 x 1728 pixels"

    return-object v0

    :pswitch_1
    const-string v0, "2592 x 1944 pixels"

    return-object v0

    :pswitch_2
    const-string v0, "2288 x 1712 pixels"

    return-object v0

    :cond_1
    const-string v0, "2048 x 1536 pixels"

    return-object v0

    :cond_2
    const-string v0, "1600 x 1200 pixels"

    return-object v0

    :cond_3
    const-string v0, "3008 x 2008 pixels"

    return-object v0

    :cond_4
    const-string v0, "640 x 480 pixels"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIsoSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 263
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

    :cond_1
    const-string v0, "200"

    return-object v0

    :cond_2
    const-string v0, "100"

    return-object v0

    :cond_3
    const-string v0, "64"

    return-object v0

    :cond_4
    const-string v0, "50"

    return-object v0
.end method

.method public getObjectDistanceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Fine"

    .line 151
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3002

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Fine"

    const-string v1, "Super Fine"

    .line 294
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Normal"

    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3000

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "-1"

    const-string v1, "Normal"

    const-string v2, "+1"

    .line 227
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfTimerDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    .line 157
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3001

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "-1"

    const-string v1, "Normal"

    const-string v2, "+1"

    .line 215
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDimensionsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    array-length v2, v0

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pixels"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailSizeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x3006

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance1Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Auto"

    const-string v1, "Daylight"

    const-string v2, "Shade"

    const-string v3, "Tungsten"

    const-string v4, "Florescent"

    const-string v5, "Manual"

    .line 240
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance2Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x2012

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    const-string v3, "Flash"

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 193
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

    :cond_1
    return-object v3

    :cond_2
    const-string v0, "Auto"

    return-object v0

    :cond_3
    const-string v0, "Manual"

    return-object v0
.end method

.method public getWhiteBalanceBiasDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;

    const/16 v1, 0x2011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType2MakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
