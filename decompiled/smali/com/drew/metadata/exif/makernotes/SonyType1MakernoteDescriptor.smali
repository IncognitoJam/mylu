.class public Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SonyType1MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getAFIlluminatorDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb044

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    .line 640
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
    const-string v0, "n/a"

    return-object v0

    :cond_2
    const-string v0, "Auto"

    return-object v0

    :cond_3
    const-string v0, "Off"

    return-object v0
.end method

.method public getAFModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb043

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const v2, 0xffff

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 623
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
    const-string v0, "Face Detected"

    return-object v0

    :cond_2
    const-string v0, "Manual Focus"

    return-object v0

    :cond_3
    const-string v0, "n/a"

    return-object v0

    :cond_4
    const-string v0, "Touch"

    return-object v0

    :cond_5
    const-string v0, "Flexible Spot"

    return-object v0

    :cond_6
    const-string v0, "Spot"

    return-object v0

    :cond_7
    const-string v0, "Center"

    return-object v0

    :cond_8
    const-string v0, "Multi"

    return-object v0

    :cond_9
    const-string v0, "Default"

    return-object v0
.end method

.method public getAFPointSelectedDescription()Ljava/lang/String;
    .locals 20
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Auto"

    const-string v1, "Center"

    const-string v2, "Top"

    const-string v3, "Upper-right"

    const-string v4, "Right"

    const-string v5, "Lower-right"

    const-string v6, "Bottom"

    const-string v7, "Lower-left"

    const-string v8, "Left"

    const-string v9, "Upper-left\t  \t"

    const-string v10, "Far Right"

    const-string v11, "Far Left"

    const-string v12, "Upper-middle"

    const-string v13, "Near Right"

    const-string v14, "Lower-middle"

    const-string v15, "Near Left"

    const-string v16, "Upper Far Right"

    const-string v17, "Lower Far Right"

    const-string v18, "Lower Far Left"

    const-string v19, "Upper Far Left"

    .line 491
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x201e

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAntiBlurDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb04b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const v3, 0xffff

    if-eq v1, v3, :cond_1

    .line 345
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "On (Shooting)"

    return-object v0

    :cond_3
    const-string v0, "On (Continuous)"

    return-object v0

    :cond_4
    const-string v0, "Off"

    return-object v0
.end method

.method public getAutoPortraitFramedDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "No"

    const-string v1, "Yes"

    .line 478
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2016

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb029

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x1

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Autumn Leaves"

    return-object v0

    :pswitch_1
    const-string v0, "Night View"

    return-object v0

    :pswitch_2
    const-string v0, "Sepia"

    return-object v0

    :pswitch_3
    const-string v0, "Autumn"

    return-object v0

    :pswitch_4
    const-string v0, "Light"

    return-object v0

    :pswitch_5
    const-string v0, "Deep"

    return-object v0

    :pswitch_6
    const-string v0, "Clear"

    return-object v0

    :pswitch_7
    const-string v0, "Neutral"

    return-object v0

    :pswitch_8
    const-string v0, "Adobe RGB"

    return-object v0

    :pswitch_9
    const-string v0, "Black & White"

    return-object v0

    :pswitch_a
    const-string v0, "Night Portrait"

    return-object v0

    :pswitch_b
    const-string v0, "Sunset"

    return-object v0

    :pswitch_c
    const-string v0, "Landscape"

    return-object v0

    :pswitch_d
    const-string v0, "Portrait"

    return-object v0

    :pswitch_e
    const-string v0, "Vivid"

    return-object v0

    :pswitch_f
    const-string v0, "Standard"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColorTemperatureDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb021

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Auto"

    return-object v0

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 187
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%d K"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getLongExposureNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getAntiBlurDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getSequenceNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getReleaseModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getFlashLevelDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getJpegQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getAFIlluminatorDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getAFModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getMacroDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getDynamicRangeOptimizerDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getZoneMatchingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getSceneModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getColorTemperatureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getSonyModelIdDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getAFPointSelectedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getAutoPortraitFramedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getDistortionCorrectionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getLateralChromaticAberrationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getVignettingCorrectionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getSoftSkinEffectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getPictureEffectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getHighIsoNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getTeleconverterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getFlashExposureCompensationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getImageQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x102 -> :sswitch_1d
        0x104 -> :sswitch_1c
        0x105 -> :sswitch_1b
        0x115 -> :sswitch_1a
        0x2009 -> :sswitch_19
        0x200e -> :sswitch_18
        0x200f -> :sswitch_17
        0x2011 -> :sswitch_16
        0x2012 -> :sswitch_15
        0x2013 -> :sswitch_14
        0x2016 -> :sswitch_13
        0x201b -> :sswitch_12
        0x201e -> :sswitch_11
        0xb001 -> :sswitch_10
        0xb021 -> :sswitch_f
        0xb023 -> :sswitch_e
        0xb024 -> :sswitch_d
        0xb025 -> :sswitch_c
        0xb026 -> :sswitch_b
        0xb029 -> :sswitch_a
        0xb040 -> :sswitch_9
        0xb041 -> :sswitch_8
        0xb043 -> :sswitch_7
        0xb044 -> :sswitch_6
        0xb047 -> :sswitch_5
        0xb048 -> :sswitch_4
        0xb049 -> :sswitch_3
        0xb04a -> :sswitch_2
        0xb04b -> :sswitch_1
        0xb04e -> :sswitch_0
    .end sparse-switch
.end method

.method public getDistortionCorrectionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x2013

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 471
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Off"

    return-object v0

    :cond_3
    const-string v0, "N/A"

    return-object v0
.end method

.method public getDynamicRangeOptimizerDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb025

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 218
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LV5"

    return-object v0

    :pswitch_1
    const-string v0, "LV4"

    return-object v0

    :pswitch_2
    const-string v0, "LV3"

    return-object v0

    :pswitch_3
    const-string v0, "LV2"

    return-object v0

    :pswitch_4
    const-string v0, "LV1"

    return-object v0

    :pswitch_5
    const-string v0, "Advanced LV5"

    return-object v0

    :pswitch_6
    const-string v0, "Advanced LV4"

    return-object v0

    :pswitch_7
    const-string v0, "Advanced LV3"

    return-object v0

    :pswitch_8
    const-string v0, "Advanced LV2"

    return-object v0

    :pswitch_9
    const-string v0, "Advanced LV1"

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Advanced Auto"

    return-object v0

    :cond_3
    const-string v0, "Standard"

    return-object v0

    :cond_4
    const-string v0, "Off"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb041

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x1

    .line 315
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "3D Image"

    return-object v0

    :pswitch_1
    const-string v0, "Soft Skin"

    return-object v0

    :pswitch_2
    const-string v0, "Background Defocus"

    return-object v0

    :pswitch_3
    const-string v0, "Superior Auto"

    return-object v0

    :pswitch_4
    const-string v0, "Backlight Correction HDR"

    return-object v0

    :pswitch_5
    const-string v0, "Pet"

    return-object v0

    :pswitch_6
    const-string v0, "Anti Motion Blur"

    return-object v0

    :pswitch_7
    const-string v0, "Handheld Night Shot"

    return-object v0

    :pswitch_8
    const-string v0, "Panorama"

    return-object v0

    :pswitch_9
    const-string v0, "Food"

    return-object v0

    :pswitch_a
    const-string v0, "Advanced Sports Shooting"

    return-object v0

    :pswitch_b
    const-string v0, "Macro"

    return-object v0

    :pswitch_c
    const-string v0, "High Sensitivity"

    return-object v0

    :pswitch_d
    const-string v0, "Manual"

    return-object v0

    :pswitch_e
    const-string v0, "Smile Shutter"

    return-object v0

    :pswitch_f
    const-string v0, "Fireworks"

    return-object v0

    :pswitch_10
    const-string v0, "Soft Snap/Portrait"

    return-object v0

    :pswitch_11
    const-string v0, "Twilight Portrait"

    return-object v0

    :pswitch_12
    const-string v0, "Hi-Speed Shutter"

    return-object v0

    :pswitch_13
    const-string v0, "Night Scene / Twilight"

    return-object v0

    :pswitch_14
    const-string v0, "Shutter Priority"

    return-object v0

    :pswitch_15
    const-string v0, "Aperture Priority"

    return-object v0

    :pswitch_16
    const-string v0, "Auto"

    return-object v0

    :pswitch_17
    const-string v0, "Landscape"

    return-object v0

    :pswitch_18
    const-string v0, "Snow"

    return-object v0

    :pswitch_19
    const-string v0, "Sports"

    return-object v0

    :pswitch_1a
    const-string v0, "Beach"

    return-object v0

    :pswitch_1b
    const-string v0, "Portrait"

    return-object v0

    :pswitch_1c
    const-string v0, "Program"

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Underwater"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
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

.method public getFlashExposureCompensationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x104

    const-string v1, "%d EV"

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getFormattedInt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashLevelDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb048

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, -0x8000

    if-eq v1, v2, :cond_3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7fff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 664
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
    const-string v0, "+3/3"

    return-object v0

    :pswitch_1
    const-string v0, "+2/3"

    return-object v0

    :pswitch_2
    const-string v0, "+1/3"

    return-object v0

    :pswitch_3
    const-string v0, "Normal"

    return-object v0

    :pswitch_4
    const-string v0, "-1/3"

    return-object v0

    :pswitch_5
    const-string v0, "-2/3"

    return-object v0

    :pswitch_6
    const-string v0, "-3/3"

    return-object v0

    :cond_1
    const-string v0, "High"

    return-object v0

    :cond_2
    const-string v0, "n/a"

    return-object v0

    :cond_3
    const-string v0, "Low"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Manual"

    const/4 v1, 0x0

    const-string v2, "AF-A"

    const-string v3, "AF-C"

    const-string v4, "AF-S"

    const/4 v5, 0x0

    const-string v6, "DMF"

    const-string v7, "AF-D"

    .line 484
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x201b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighIsoNoiseReductionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x2009

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/16 v3, 0x100

    if-eq v1, v3, :cond_2

    const v3, 0xffff

    if-eq v1, v3, :cond_1

    .line 376
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Auto"

    return-object v0

    :cond_3
    const-string v0, "High"

    return-object v0

    :cond_4
    const-string v0, "Normal"

    return-object v0

    :cond_5
    const-string v0, "On"

    return-object v0

    :cond_6
    const-string v0, "Off"

    return-object v0
.end method

.method public getImageQualityDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "RAW"

    const-string v1, "Super Fine"

    const-string v2, "Fine"

    const-string v3, "Standard"

    const-string v4, "Economy"

    const-string v5, "Extra Fine"

    const-string v6, "RAW + JPEG"

    const-string v7, "Compressed RAW"

    const-string v8, "Compressed RAW + JPEG"

    .line 120
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb026

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "N/A"

    return-object v0

    :cond_1
    const-string v0, "On"

    return-object v0

    :cond_2
    const-string v0, "Off"

    return-object v0
.end method

.method public getJpegQualityDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb047

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const v3, 0xffff

    if-eq v1, v3, :cond_1

    .line 330
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Extra Fine"

    return-object v0

    :cond_3
    const-string v0, "Fine"

    return-object v0

    :cond_4
    const-string v0, "Normal"

    return-object v0
.end method

.method public getLateralChromaticAberrationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x2012

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 453
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 457
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Off"

    return-object v0

    :cond_3
    const-string v0, "N/A"

    return-object v0
.end method

.method public getLongExposureNoiseReductionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb04e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const v3, 0xffff

    if-eq v1, v3, :cond_1

    .line 359
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "On"

    return-object v0

    :cond_3
    const-string v0, "Off"

    return-object v0
.end method

.method public getMacroDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb040

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const v3, 0xffff

    if-eq v1, v3, :cond_1

    .line 273
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Magnifying Glass/Super Macro"

    return-object v0

    :cond_3
    const-string v0, "On"

    return-object v0

    :cond_4
    const-string v0, "Off"

    return-object v0
.end method

.method public getPictureEffectDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x200e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    const/16 v2, 0x62

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    const/4 v1, 0x1

    .line 423
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Illustration (high)"

    return-object v0

    :pswitch_1
    const-string v0, "Illustration"

    return-object v0

    :pswitch_2
    const-string v0, "Illustration (low)"

    return-object v0

    :pswitch_3
    const-string v0, "HDR Painting (high)"

    return-object v0

    :pswitch_4
    const-string v0, "HDR Painting"

    return-object v0

    :pswitch_5
    const-string v0, "HDR Painting (low)"

    return-object v0

    :pswitch_6
    const-string v0, "Miniature (right)"

    return-object v0

    :pswitch_7
    const-string v0, "Miniature (middle vertical)"

    return-object v0

    :pswitch_8
    const-string v0, "Miniature (left)"

    return-object v0

    :pswitch_9
    const-string v0, "Miniature (bottom)"

    return-object v0

    :pswitch_a
    const-string v0, "Miniature (middle horizontal)"

    return-object v0

    :pswitch_b
    const-string v0, "Miniature (top)"

    return-object v0

    :pswitch_c
    const-string v0, "Miniature (auto)"

    return-object v0

    :pswitch_d
    const-string v0, "Soft Focus (high)"

    return-object v0

    :pswitch_e
    const-string v0, "Soft Focus"

    return-object v0

    :pswitch_f
    const-string v0, "Soft Focus (low)"

    return-object v0

    :pswitch_10
    const-string v0, "Toy Camera (magenta)"

    return-object v0

    :pswitch_11
    const-string v0, "Toy Camera (green)"

    return-object v0

    :pswitch_12
    const-string v0, "Toy Camera (warm)"

    return-object v0

    :pswitch_13
    const-string v0, "Toy Camera (cool)"

    return-object v0

    :pswitch_14
    const-string v0, "Toy Camera (normal)"

    return-object v0

    :pswitch_15
    const-string v0, "Partial Color (yellow)"

    return-object v0

    :pswitch_16
    const-string v0, "Partial Color (blue)"

    return-object v0

    :pswitch_17
    const-string v0, "Partial Color (green)"

    return-object v0

    :pswitch_18
    const-string v0, "Partial Color (red)"

    return-object v0

    :pswitch_19
    const-string v0, "Soft High Key"

    return-object v0

    :pswitch_1a
    const-string v0, "Retro Photo"

    return-object v0

    :pswitch_1b
    const-string v0, "Posterization B/W"

    return-object v0

    :pswitch_1c
    const-string v0, "Posterization"

    return-object v0

    :pswitch_1d
    const-string v0, "Pop Color"

    return-object v0

    :pswitch_1e
    const-string v0, "Toy Camera"

    return-object v0

    :pswitch_1f
    const-string v0, "Off"

    return-object v0

    :cond_1
    const-string v0, "Water Color 2"

    return-object v0

    :cond_2
    const-string v0, "Water Color"

    return-object v0

    :cond_3
    const-string v0, "Rich-tone Monochrome"

    return-object v0

    :cond_4
    const-string v0, "High Contrast Monochrome"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x40
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReleaseModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb049

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 676
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const v2, 0xffff

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 683
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
    const-string v0, "White Balance Bracketing"

    return-object v0

    :cond_2
    const-string v0, "Exposure Bracketing"

    return-object v0

    :cond_3
    const-string v0, "n/a"

    return-object v0

    :cond_4
    const-string v0, "Continuous"

    return-object v0

    :cond_5
    const-string v0, "Normal"

    return-object v0
.end method

.method public getSceneModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb023

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 575
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 600
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
    const-string v0, "Pet"

    return-object v0

    :pswitch_1
    const-string v0, "Food"

    return-object v0

    :pswitch_2
    const-string v0, "Fireworks"

    return-object v0

    :pswitch_3
    const-string v0, "High Sensitivity"

    return-object v0

    :pswitch_4
    const-string v0, "Superior Auto"

    return-object v0

    :pswitch_5
    const-string v0, "3D Sweep Panorama"

    return-object v0

    :pswitch_6
    const-string v0, "Auto+"

    return-object v0

    :pswitch_7
    const-string v0, "Cont. Priority AE"

    return-object v0

    :pswitch_8
    const-string v0, "Anti Motion Blur"

    return-object v0

    :pswitch_9
    const-string v0, "Handheld Night Shot"

    return-object v0

    :pswitch_a
    const-string v0, "Sweep Panorama"

    return-object v0

    :pswitch_b
    const-string v0, "Night View/Portrait"

    return-object v0

    :pswitch_c
    const-string v0, "Auto"

    return-object v0

    :pswitch_d
    const-string v0, "Super Macro"

    return-object v0

    :pswitch_e
    const-string v0, "Macro"

    return-object v0

    :pswitch_f
    const-string v0, "Night Portrait"

    return-object v0

    :pswitch_10
    const-string v0, "Landscape"

    return-object v0

    :pswitch_11
    const-string v0, "Sports"

    return-object v0

    :pswitch_12
    const-string v0, "Sunset"

    return-object v0

    :pswitch_13
    const-string v0, "Night Scene"

    return-object v0

    :pswitch_14
    const-string v0, "Text"

    return-object v0

    :pswitch_15
    const-string v0, "Portrait"

    return-object v0

    :pswitch_16
    const-string v0, "Standard"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getSequenceNumberDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb049

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    .line 699
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "n/a"

    return-object v0

    :cond_2
    const-string v0, "Single"

    return-object v0
.end method

.method public getSoftSkinEffectDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "Low"

    const-string v2, "Mid"

    const-string v3, "High"

    .line 430
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x200f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSonyModelIdDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const v1, 0xb001

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 563
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
    const-string v0, "DSC-RX1"

    return-object v0

    :pswitch_1
    const-string v0, "DSC-RX100"

    return-object v0

    :pswitch_2
    const-string v0, "NEX-5R"

    return-object v0

    :pswitch_3
    const-string v0, "NEX-6"

    return-object v0

    :pswitch_4
    const-string v0, "SLT-A99V"

    return-object v0

    :pswitch_5
    const-string v0, "NEX-F3"

    return-object v0

    :pswitch_6
    const-string v0, "SLT-A57"

    return-object v0

    :pswitch_7
    const-string v0, "SLT-A37"

    return-object v0

    :pswitch_8
    const-string v0, "NEX-VG20E"

    return-object v0

    :pswitch_9
    const-string v0, "NEX-7"

    return-object v0

    :pswitch_a
    const-string v0, "NEX-5N"

    return-object v0

    :pswitch_b
    const-string v0, "SLT-A77V"

    return-object v0

    :pswitch_c
    const-string v0, "SLT-A65V"

    return-object v0

    :pswitch_d
    const-string v0, "SLT-A35"

    return-object v0

    :pswitch_e
    const-string v0, "NEX-C3"

    return-object v0

    :pswitch_f
    const-string v0, "DSLR-A580"

    return-object v0

    :pswitch_10
    const-string v0, "DSLR-A560"

    return-object v0

    :pswitch_11
    const-string v0, "SLT-A55V"

    return-object v0

    :pswitch_12
    const-string v0, "SLT-A33"

    return-object v0

    :pswitch_13
    const-string v0, "NEX-3"

    return-object v0

    :pswitch_14
    const-string v0, "NEX-5"

    return-object v0

    :pswitch_15
    const-string v0, "DSLR-A450"

    return-object v0

    :pswitch_16
    const-string v0, "DSLR-A500"

    return-object v0

    :pswitch_17
    const-string v0, "DSLR-A550"

    return-object v0

    :pswitch_18
    const-string v0, "DSLR-A290"

    return-object v0

    :pswitch_19
    const-string v0, "DSLR-A230"

    return-object v0

    :pswitch_1a
    const-string v0, "DSLR-A330"

    return-object v0

    :pswitch_1b
    const-string v0, "DSLR-A380/A390"

    return-object v0

    :pswitch_1c
    const-string v0, "DSLR-A900 (APS-C mode)"

    return-object v0

    :pswitch_1d
    const-string v0, "DSLR-A300"

    return-object v0

    :pswitch_1e
    const-string v0, "DSLR-A350"

    return-object v0

    :pswitch_1f
    const-string v0, "DSLR-A200"

    return-object v0

    :pswitch_20
    const-string v0, "DSLR-A700"

    return-object v0

    :pswitch_21
    const-string v0, "DSLR-A900"

    return-object v0

    :pswitch_22
    const-string v0, "DSLR-A100"

    return-object v0

    :cond_1
    const-string v0, "DSLR-A850 (APS-C mode)"

    return-object v0

    :cond_2
    const-string v0, "DSLR-A850"

    return-object v0

    :cond_3
    const-string v0, "DSC-R1"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x111
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x116
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getTeleconverterDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x48

    if-eq v1, v2, :cond_6

    const/16 v2, 0x50

    if-eq v1, v2, :cond_5

    const/16 v2, 0x60

    if-eq v1, v2, :cond_4

    const/16 v2, 0x88

    if-eq v1, v2, :cond_3

    const/16 v2, 0x90

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 153
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
    const-string v0, "Minolta AF 1.4x APO"

    return-object v0

    :cond_2
    const-string v0, "Minolta AF 1.4x APO II"

    return-object v0

    :cond_3
    const-string v0, "Minolta/Sony AF 1.4x APO (D)"

    return-object v0

    :cond_4
    const-string v0, "Minolta AF 2x APO"

    return-object v0

    :cond_5
    const-string v0, "Minolta AF 2x APO II"

    return-object v0

    :cond_6
    const-string v0, "Minolta/Sony AF 2x APO (D)"

    return-object v0

    :cond_7
    const-string v0, "None"

    return-object v0
.end method

.method public getVignettingCorrectionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x2011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 443
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Auto"

    return-object v0

    :cond_2
    const-string v0, "Off"

    return-object v0

    :cond_3
    const-string v0, "N/A"

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;

    const/16 v1, 0x115

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x10

    if-eq v1, v2, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x30

    if-eq v1, v2, :cond_5

    const/16 v2, 0x40

    if-eq v1, v2, :cond_4

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    const/16 v2, 0x60

    if-eq v1, v2, :cond_2

    const/16 v2, 0x70

    if-eq v1, v2, :cond_1

    .line 174
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
    const-string v0, "Custom"

    return-object v0

    :cond_2
    const-string v0, "Fluorescent"

    return-object v0

    :cond_3
    const-string v0, "Flash"

    return-object v0

    :cond_4
    const-string v0, "Tungsten"

    return-object v0

    :cond_5
    const-string v0, "Shade"

    return-object v0

    :cond_6
    const-string v0, "Cloudy"

    return-object v0

    :cond_7
    const-string v0, "Daylight"

    return-object v0

    :cond_8
    const-string v0, "Color Temperature/Color Filter"

    return-object v0

    :cond_9
    const-string v0, "Auto"

    return-object v0
.end method

.method public getZoneMatchingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "ISO Setting Used"

    const-string v1, "High Key"

    const-string v2, "Low Key"

    .line 193
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0xb024

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SonyType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
