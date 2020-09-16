.class public Lcom/drew/metadata/pcx/PcxDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PcxDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/pcx/PcxDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/pcx/PcxDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/pcx/PcxDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getColorPlanesDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "24-bit color"

    const-string v1, "16 colors"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getPaletteTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getColorPlanesDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPaletteTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "Color or B&W"

    const-string v1, "Grayscale"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "2.5 with fixed EGA palette information"

    const/4 v1, 0x0

    const-string v2, "2.8 with modifiable EGA palette information"

    const-string v3, "2.8 without palette information (default palette)"

    const-string v4, "PC Paintbrush for Windows"

    const-string v5, "3.0 or better"

    .line 62
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/pcx/PcxDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
