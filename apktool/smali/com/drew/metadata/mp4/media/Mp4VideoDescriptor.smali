.class public Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "Mp4VideoDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getColorTableDescription()Ljava/lang/String;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 95
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
    const-string v0, "Color table within file"

    return-object v0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "None"

    if-nez v0, :cond_3

    return-object v1

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_4

    const-string v0, "Default"

    return-object v0

    :cond_4
    return-object v1
.end method

.method private getDepthDescription()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    .line 71
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

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-bit grayscale"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGraphicsModeDescription()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 125
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
    const-string v0, "Straight alpha blend"

    return-object v0

    :pswitch_1
    const-string v0, "Composition (dither copy)"

    return-object v0

    :pswitch_2
    const-string v0, "Premul black alpha"

    return-object v0

    :pswitch_3
    const-string v0, "Premul white alpha"

    return-object v0

    :pswitch_4
    const-string v0, "Straight alpha"

    return-object v0

    :cond_1
    const-string v0, "Dither copy"

    return-object v0

    :cond_2
    const-string v0, "Transparent"

    return-object v0

    :cond_3
    const-string v0, "Blend"

    return-object v0

    :cond_4
    const-string v0, "Copy"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPixelDescription(I)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pixels"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x68

    if-eq p1, v0, :cond_3

    const/16 v0, 0x69

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->getColorTableDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->getGraphicsModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->getDepthDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    invoke-direct {p0, p1}, Lcom/drew/metadata/mp4/media/Mp4VideoDescriptor;->getPixelDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
