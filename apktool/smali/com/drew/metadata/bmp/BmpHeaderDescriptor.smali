.class public Lcom/drew/metadata/bmp/BmpHeaderDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "BmpHeaderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/bmp/BmpHeaderDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/bmp/BmpHeaderDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method public static formatFixed1616(I)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 156
    invoke-static {v0, v1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatFixed1616(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFixed1616(J)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    long-to-double p0, p0

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    div-double/2addr p0, v0

    .line 166
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 167
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.###"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFixed1616(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatFixed1616(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatFixed1616(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatFixed1616(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatHex(II)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 136
    invoke-static {v0, v1, p1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatHex(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatHex(JI)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "X"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatHex(Ljava/lang/Integer;I)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/Integer;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatHex(JI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatHex(Ljava/lang/Long;I)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/Long;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatHex(JI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getBitmapTypeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getBitmapType()Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getColorEncodingDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getColorEncoding()Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getColorSpaceTypeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getColorSpaceType()Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCompressionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getCompression()Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getRenderingIntentDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatFixed1616(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getColorSpaceTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getLongObject(I)Ljava/lang/Long;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->formatHex(Ljava/lang/Long;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getColorEncodingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getRenderingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getCompressionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->getBitmapTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRenderingDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getRendering()Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRenderingIntentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory;

    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getRenderingIntent()Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingIntent;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
