.class public Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "LeicaMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getApproximateFNumberDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x313

    .line 83
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getSimpleRational(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCameraTemperatureDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x320

    const-string v1, "%d C"

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getFormattedInt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExternalSensorBrightnessValueDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x311

    .line 95
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getSimpleRational(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMeasuredLvDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x312

    .line 89
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getSimpleRational(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Fine"

    const-string v1, "Basic"

    .line 126
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x300

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserProfileDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "User Profile 1"

    const-string v1, "User Profile 2"

    const-string v2, "User Profile 3"

    const-string v3, "User Profile 0 (Dynamic)"

    .line 115
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x300

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWhiteBalanceDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Auto or Manual"

    const-string v1, "Daylight"

    const-string v2, "Fluorescent"

    const-string v3, "Tungsten"

    const-string v4, "Flash"

    const-string v5, "Cloudy"

    const-string v6, "Shadow"

    .line 101
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x304

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x300

    if-eq p1, v0, :cond_3

    const/16 v0, 0x302

    if-eq p1, v0, :cond_2

    const/16 v0, 0x304

    if-eq p1, v0, :cond_1

    const/16 v0, 0x320

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 70
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getSimpleRational(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_1
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getApproximateFNumberDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_2
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getMeasuredLvDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getExternalSensorBrightnessValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getCameraTemperatureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getUserProfileDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/LeicaMakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x311
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x322
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
