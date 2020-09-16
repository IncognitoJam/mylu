.class public Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawDistortionDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam09Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam08Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionCorrectionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionScaleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam04Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam11Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->getDistortionParam02Description()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDistortionCorrectionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 126
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
    const-string v0, "On"

    return-object v0

    :cond_2
    const-string v0, "Off"

    return-object v0
.end method

.method public getDistortionParam02Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistortionParam04Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistortionParam08Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistortionParam09Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistortionParam11Description()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    new-instance v1, Lcom/drew/lang/Rational;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7fa6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistortionScaleDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x8000

    div-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWbTypeDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawDistortionDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/exif/PanasonicRawDistortionDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getLightSourceDescription(S)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
