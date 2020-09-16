.class public Lcom/drew/imaging/png/PngChunkType;
.super Ljava/lang/Object;
.source "PngChunkType.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final IDAT:Lcom/drew/imaging/png/PngChunkType;

.field public static final IEND:Lcom/drew/imaging/png/PngChunkType;

.field public static final IHDR:Lcom/drew/imaging/png/PngChunkType;

.field public static final PLTE:Lcom/drew/imaging/png/PngChunkType;

.field private static final _identifiersAllowingMultiples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bKGD:Lcom/drew/imaging/png/PngChunkType;

.field public static final cHRM:Lcom/drew/imaging/png/PngChunkType;

.field public static final gAMA:Lcom/drew/imaging/png/PngChunkType;

.field public static final hIST:Lcom/drew/imaging/png/PngChunkType;

.field public static final iCCP:Lcom/drew/imaging/png/PngChunkType;

.field public static final iTXt:Lcom/drew/imaging/png/PngChunkType;

.field public static final pHYs:Lcom/drew/imaging/png/PngChunkType;

.field public static final sBIT:Lcom/drew/imaging/png/PngChunkType;

.field public static final sPLT:Lcom/drew/imaging/png/PngChunkType;

.field public static final sRGB:Lcom/drew/imaging/png/PngChunkType;

.field public static final tEXt:Lcom/drew/imaging/png/PngChunkType;

.field public static final tIME:Lcom/drew/imaging/png/PngChunkType;

.field public static final tRNS:Lcom/drew/imaging/png/PngChunkType;

.field public static final zTXt:Lcom/drew/imaging/png/PngChunkType;


# instance fields
.field private final _bytes:[B

.field private final _multipleAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "zTXt"

    const-string/jumbo v2, "tEXt"

    const-string v3, "iTXt"

    const-string v4, "sPLT"

    const-string v5, "IDAT"

    filled-new-array {v5, v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->_identifiersAllowingMultiples:Ljava/util/Set;

    .line 109
    :try_start_0
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v6, "IHDR"

    invoke-direct {v0, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    .line 110
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v6, "PLTE"

    invoke-direct {v0, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    .line 111
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->IDAT:Lcom/drew/imaging/png/PngChunkType;

    .line 112
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "IEND"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->IEND:Lcom/drew/imaging/png/PngChunkType;

    .line 113
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "cHRM"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    .line 114
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "gAMA"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    .line 115
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "iCCP"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    .line 116
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "sBIT"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    .line 117
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "sRGB"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    .line 118
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "bKGD"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    .line 119
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "hIST"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->hIST:Lcom/drew/imaging/png/PngChunkType;

    .line 120
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string/jumbo v5, "tRNS"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    .line 121
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string v5, "pHYs"

    invoke-direct {v0, v5}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    .line 122
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v4, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->sPLT:Lcom/drew/imaging/png/PngChunkType;

    .line 123
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    const-string/jumbo v4, "tIME"

    invoke-direct {v0, v4}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    .line 124
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v3, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    .line 125
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v2, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    .line 126
    new-instance v0, Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1, v6}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;
    :try_end_0
    .catch Lcom/drew/imaging/png/PngProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p2, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    :try_start_0
    const-string p2, "ASCII"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/drew/imaging/png/PngChunkType;->validateBytes([B)V

    .line 147
    iput-object p1, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to convert string code to bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/drew/imaging/png/PngChunkType;->validateBytes([B)V

    .line 156
    iput-object p1, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    .line 157
    sget-object p1, Lcom/drew/imaging/png/PngChunkType;->_identifiersAllowingMultiples:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    return-void
.end method

.method private static isLowerCase(B)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUpperCase(B)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidByte(B)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validateBytes([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .line 162
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 166
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    .line 167
    invoke-static {v2}, Lcom/drew/imaging/png/PngChunkType;->isValidByte(B)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    new-instance p0, Lcom/drew/imaging/png/PngProcessingException;

    const-string v0, "PNG chunk type identifier may only contain alphabet characters"

    invoke-direct {p0, v0}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 163
    :cond_2
    new-instance p0, Lcom/drew/imaging/png/PngProcessingException;

    const-string v0, "PNG chunk type identifier must be four bytes in length"

    invoke-direct {p0, v0}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public areMultipleAllowed()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    check-cast p1, Lcom/drew/imaging/png/PngChunkType;

    .line 242
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    iget-object p1, p1, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Invalid object instance"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAncillary()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->isCritical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCritical()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isUpperCase(B)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isUpperCase(B)Z

    move-result v0

    return v0
.end method

.method public isSafeToCopy()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isLowerCase(B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
