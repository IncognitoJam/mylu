.class public Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SamsungType2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getCameraTemperatureDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x43

    const-string v1, "%d C"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFormattedInt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120

    if-eq p1, v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFaceRecognitionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFaceDetectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getCameraTemperatureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getSamsungModelIdDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getDeviceTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2000

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_3

    const v2, 0x12000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x300000

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "SMX Video Camera"

    return-object v0

    :cond_2
    const-string v0, "Cell Phone"

    return-object v0

    :cond_3
    const-string v0, "HXM Video Camera"

    return-object v0

    :cond_4
    const-string v0, "High-end NX Camera"

    return-object v0

    :cond_5
    const-string v0, "Compact Digital Camera"

    return-object v0
.end method

.method public getFaceDetectDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "On"

    .line 203
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceRecognitionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Off"

    const-string v1, "On"

    .line 210
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x120

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamsungModelIdDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x1

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown (%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "SMX - C20N"

    return-object v0

    :sswitch_1
    const-string v0, "VLUU SH100, SH100"

    return-object v0

    :sswitch_2
    const-string v0, "EX1"

    return-object v0

    :sswitch_3
    const-string v0, "WB5000 / HZ25W"

    return-object v0

    :sswitch_4
    const-string v0, "WB150 / WB150F / WB152 / WB152F / WB151"

    return-object v0

    :sswitch_5
    const-string v0, "WB600 / VLUU WB600 / WB610"

    return-object v0

    :sswitch_6
    const-string v0, "WB650 / VLUU WB650 / WB660"

    return-object v0

    :sswitch_7
    const-string v0, "Various Models (0x5001038)"

    return-object v0

    :sswitch_8
    const-string v0, "Various Models (0x5000000)"

    return-object v0

    :sswitch_9
    const-string v0, "ST30, ST65 / VLUU ST65 / ST67"

    return-object v0

    :sswitch_a
    const-string v0, "VLUU ST60"

    return-object v0

    :sswitch_b
    const-string v0, "VLUU ST95, ST95"

    return-object v0

    :sswitch_c
    const-string v0, "ST90,ST91 / VLUU ST90,ST91"

    return-object v0

    :sswitch_d
    const-string v0, "Various Models (0x400130a)"

    return-object v0

    :sswitch_e
    const-string v0, "ST70 / VLUU ST70 / ST71"

    return-object v0

    :sswitch_f
    const-string v0, "VLUU ST5000, ST5000, TL240"

    return-object v0

    :sswitch_10
    const-string v0, "VLUU ST5500, ST5500, CL80"

    return-object v0

    :sswitch_11
    const-string v0, "Various Models (0x4001025)"

    return-object v0

    :sswitch_12
    const-string v0, "ST550 / VLUU ST550 / TL225"

    return-object v0

    :sswitch_13
    const-string v0, "ST1000 / ST1100 / VLUU ST1000 / CL65"

    return-object v0

    :sswitch_14
    const-string v0, "Various Models (0x3a00018)"

    return-object v0

    :sswitch_15
    const-string v0, "Various Models (0x3000000)"

    return-object v0

    :sswitch_16
    const-string v0, "WP10 / VLUU WP10 / AQ100"

    return-object v0

    :sswitch_17
    const-string v0, "PL20,PL21 / VLUU PL20,PL21"

    return-object v0

    :sswitch_18
    const-string v0, "PL210, PL211 / VLUU PL210, PL211"

    return-object v0

    :sswitch_19
    const-string v0, "PL170,PL171 / VLUUPL170,PL171"

    return-object v0

    :sswitch_1a
    const-string v0, "PL120,PL121 / VLUU PL120,PL121"

    return-object v0

    :sswitch_1b
    const-string v0, "PL150 / VLUU PL150 / TL210 / PL151"

    return-object v0

    :sswitch_1c
    const-string v0, "ES74,ES75,ES78 / VLUU ES75,ES78"

    return-object v0

    :sswitch_1d
    const-string v0, "ES28 / VLUU ES28"

    return-object v0

    :sswitch_1e
    const-string v0, "ES73 / VLUU ES73 / SL605"

    return-object v0

    :sswitch_1f
    const-string v0, "ES70, ES71 / VLUU ES70, ES71 / SL600"

    return-object v0

    :sswitch_20
    const-string v0, "NX11"

    return-object v0

    :sswitch_21
    const-string v0, "NX100"

    return-object v0

    :sswitch_22
    const-string v0, "HMX-H304"

    return-object v0

    :sswitch_23
    const-string v0, "HMX-Q10"

    return-object v0

    :sswitch_24
    const-string v0, "HMX-S15BP"

    return-object v0

    :sswitch_25
    const-string v0, "NX10"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100101c -> :sswitch_25
        0x1001226 -> :sswitch_24
        0x1001233 -> :sswitch_23
        0x1001234 -> :sswitch_22
        0x100130c -> :sswitch_21
        0x1001327 -> :sswitch_20
        0x170104e -> :sswitch_1f
        0x1701052 -> :sswitch_1e
        0x1701300 -> :sswitch_1d
        0x1701303 -> :sswitch_1c
        0x2001046 -> :sswitch_1b
        0x2001311 -> :sswitch_1a
        0x2001315 -> :sswitch_19
        0x200131e -> :sswitch_18
        0x2701317 -> :sswitch_17
        0x2a0001b -> :sswitch_16
        0x3000000 -> :sswitch_15
        0x3a00018 -> :sswitch_14
        0x400101f -> :sswitch_13
        0x4001022 -> :sswitch_12
        0x4001025 -> :sswitch_11
        0x400103e -> :sswitch_10
        0x4001041 -> :sswitch_f
        0x4001043 -> :sswitch_e
        0x400130a -> :sswitch_d
        0x400130e -> :sswitch_c
        0x4001313 -> :sswitch_b
        0x4a00015 -> :sswitch_a
        0x4a0135b -> :sswitch_9
        0x5000000 -> :sswitch_8
        0x5001038 -> :sswitch_7
        0x500103a -> :sswitch_6
        0x500103c -> :sswitch_5
        0x500133e -> :sswitch_4
        0x5a0000f -> :sswitch_3
        0x6001036 -> :sswitch_2
        0x700131c -> :sswitch_1
        0x27127002 -> :sswitch_0
    .end sparse-switch
.end method
