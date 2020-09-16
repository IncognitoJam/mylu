.class public Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicRawIFD0Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/PanasonicRawIFD0Directory;
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

    if-eq p1, v0, :cond_1

    const/16 v0, 0x112

    if-eq p1, v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;->getOrientationDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x2

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/exif/PanasonicRawIFD0Descriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
