.class public Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawWbInfoDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;->getWbTypeDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWbTypeDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicRawWbInfoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/exif/PanasonicRawWbInfoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getLightSourceDescription(S)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
