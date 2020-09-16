.class public final enum Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;
.super Ljava/lang/Enum;
.source "BmpHeaderDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/bmp/BmpHeaderDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_ALPHABITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_BITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_CMYK:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_CMYKRLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_CMYKRLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_HUFFMAN_1D:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_JPEG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_PNG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_RLE24:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_RLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

.field public static final enum BI_RLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 206
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v1, 0x0

    const-string v2, "BI_RGB"

    invoke-direct {v0, v2, v1, v1}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 209
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v2, 0x1

    const-string v3, "BI_RLE8"

    invoke-direct {v0, v3, v2, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 212
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v3, 0x2

    const-string v4, "BI_RLE4"

    invoke-direct {v0, v4, v3, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 215
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v4, 0x3

    const-string v5, "BI_BITFIELDS"

    invoke-direct {v0, v5, v4, v4}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_BITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 218
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v5, 0x4

    const-string v6, "BI_HUFFMAN_1D"

    invoke-direct {v0, v6, v5, v4}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_HUFFMAN_1D:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 221
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v6, 0x5

    const-string v7, "BI_JPEG"

    invoke-direct {v0, v7, v6, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_JPEG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 224
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v7, 0x6

    const-string v8, "BI_RLE24"

    invoke-direct {v0, v8, v7, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE24:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 227
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/4 v8, 0x7

    const-string v9, "BI_PNG"

    invoke-direct {v0, v9, v8, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_PNG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 230
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/16 v9, 0x8

    const-string v10, "BI_ALPHABITFIELDS"

    invoke-direct {v0, v10, v9, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_ALPHABITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 233
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/16 v10, 0x9

    const/16 v11, 0xb

    const-string v12, "BI_CMYK"

    invoke-direct {v0, v12, v10, v11}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYK:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 236
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const/16 v12, 0xc

    const/16 v13, 0xa

    const-string v14, "BI_CMYKRLE8"

    invoke-direct {v0, v14, v13, v12}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 239
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    const-string v14, "BI_CMYKRLE4"

    const/16 v15, 0xd

    invoke-direct {v0, v14, v11, v15}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    .line 203
    new-array v0, v12, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    sget-object v12, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v12, v0, v1

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_BITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v4

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_HUFFMAN_1D:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v5

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_JPEG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v6

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE24:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v7

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_PNG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v8

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_ALPHABITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v9

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYK:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v10

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v13

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    aput-object v1, v0, v11

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 244
    iput p3, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->value:I

    return-void
.end method

.method public static typeOf(II)Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x40

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 275
    :pswitch_1
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 274
    :pswitch_2
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYKRLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 273
    :pswitch_3
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_CMYK:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 272
    :pswitch_4
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_ALPHABITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 271
    :pswitch_5
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_PNG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    :pswitch_6
    if-ne p1, v0, :cond_0

    .line 270
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE24:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_JPEG:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    :goto_0
    return-object p0

    :pswitch_7
    if-ne p1, v0, :cond_1

    .line 269
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_HUFFMAN_1D:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_BITFIELDS:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    :goto_1
    return-object p0

    .line 268
    :pswitch_8
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE4:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 267
    :pswitch_9
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RLE8:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    .line 266
    :pswitch_a
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->BI_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static typeOf(Lcom/drew/metadata/bmp/BmpHeaderDirectory;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;
    .locals 3
    .param p0    # Lcom/drew/metadata/bmp/BmpHeaderDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 253
    invoke-virtual {p0, v0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    .line 256
    invoke-virtual {p0, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 260
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->typeOf(II)Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;
    .locals 1

    .line 203
    const-class v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;
    .locals 1

    .line 203
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    invoke-virtual {v0}, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 283
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$1;->$SwitchMap$com$drew$metadata$bmp$BmpHeaderDirectory$Compression:[I

    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$Compression;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented compression type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "CMYK RLE-4"

    return-object v0

    :pswitch_1
    const-string v0, "CMYK RLE-8"

    return-object v0

    :pswitch_2
    const-string v0, "CMYK Uncompressed"

    return-object v0

    :pswitch_3
    const-string v0, "RGBA Bit Fields"

    return-object v0

    :pswitch_4
    const-string v0, "PNG"

    return-object v0

    :pswitch_5
    const-string v0, "RLE 24-bit/pixel"

    return-object v0

    :pswitch_6
    const-string v0, "JPEG"

    return-object v0

    :pswitch_7
    const-string v0, "Huffman 1D"

    return-object v0

    :pswitch_8
    const-string v0, "Bit Fields"

    return-object v0

    :pswitch_9
    const-string v0, "RLE 4-bit/pixel"

    return-object v0

    :pswitch_a
    const-string v0, "RLE 8-bit/pixel"

    return-object v0

    :pswitch_b
    const-string v0, "None"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
