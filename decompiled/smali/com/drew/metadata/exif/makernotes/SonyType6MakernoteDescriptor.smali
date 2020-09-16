.class public Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SonyType6MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDescriptor;->getMakernoteThumbVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMakernoteThumbVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x2000

    const/4 v1, 0x2

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SonyType6MakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
