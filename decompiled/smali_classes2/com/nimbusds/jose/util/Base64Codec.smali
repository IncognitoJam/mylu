.class final Lcom/nimbusds/jose/util/Base64Codec;
.super Ljava/lang/Object;
.source "Base64Codec.java"


# static fields
.field private static final CA:[C

.field private static final CA_URL_SAFE:[C

.field private static final IA:[I

.field private static final IA_URL_SAFE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA:[C

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    const/16 v0, 0x100

    .line 42
    new-array v1, v0, [I

    sput-object v1, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    .line 48
    new-array v0, v0, [I

    sput-object v0, Lcom/nimbusds/jose/util/Base64Codec;->IA_URL_SAFE:[I

    .line 53
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 54
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA:[C

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    .line 57
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    const/16 v4, 0x3d

    aput v2, v0, v4

    .line 60
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->IA_URL_SAFE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 61
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    array-length v5, v0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_0

    .line 64
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->IA_URL_SAFE:[I

    aput v2, v0, v4

    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/util/Base64Codec;->IA_URL_SAFE:[I

    sget-object v3, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    aget-char v3, v3, v0

    aput v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    sget-object v4, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    sget-object v5, Lcom/nimbusds/jose/util/Base64Codec;->CA:[C

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeEncodedLength(IZ)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 86
    div-int/lit8 p1, p0, 0x3

    shl-int/lit8 p1, p1, 0x2

    .line 89
    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 95
    div-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static countIllegalChars(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 160
    sget-object v3, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/nimbusds/jose/util/Base64Codec;->IA_URL_SAFE:[I

    aget v2, v3, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->normalizeEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 284
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->countIllegalChars(Ljava/lang/String;)I

    move-result v2

    sub-int v2, v1, v2

    .line 287
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1

    .line 289
    new-array p0, v0, [B

    return-object p0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    .line 295
    sget-object v5, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-lez v5, :cond_3

    goto :goto_1

    .line 296
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v1, v2, 0x3

    sub-int/2addr v1, v3

    .line 304
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-lt v3, v1, :cond_5

    return-object v2

    :cond_5
    move v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x4

    if-lt v5, v8, :cond_8

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    .line 321
    aput-byte v8, v2, v3

    if-ge v5, v1, :cond_6

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    .line 323
    aput-byte v8, v2, v5

    if-ge v3, v1, :cond_7

    add-int/lit8 v5, v3, 0x1

    int-to-byte v7, v7

    .line 325
    aput-byte v7, v2, v3

    :cond_6
    move v3, v5

    :cond_7
    move v5, v6

    goto :goto_2

    .line 313
    :cond_8
    sget-object v8, Lcom/nimbusds/jose/util/Base64Codec;->IA:[I

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v8, v6

    if-ltz v6, :cond_9

    mul-int/lit8 v8, v5, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v6, v8

    or-int/2addr v6, v7

    move v7, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, -0x1

    :goto_4
    add-int/2addr v5, v4

    move v6, v9

    goto :goto_3

    .line 275
    :cond_a
    :goto_5
    new-array p0, v0, [B

    return-object p0
.end method

.method public static encodeToChar([BZ)[C
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 182
    array-length v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 185
    new-array p0, v0, [C

    return-object p0

    .line 188
    :cond_1
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x3

    .line 189
    invoke-static {v1, p1}, Lcom/nimbusds/jose/util/Base64Codec;->computeEncodedLength(IZ)I

    move-result v3

    .line 190
    new-array v4, v3, [C

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-lt v5, v2, :cond_7

    sub-int v5, v1, v2

    if-lez v5, :cond_6

    .line 217
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x2

    :cond_2
    or-int p0, v2, v0

    if-eqz p1, :cond_4

    if-ne v5, v6, :cond_3

    add-int/lit8 p1, v3, -0x3

    .line 223
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    shr-int/lit8 v1, p0, 0xc

    aget-char v1, v0, v1

    aput-char v1, v4, p1

    add-int/lit8 p1, v3, -0x2

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    .line 224
    aget-char v1, v0, v1

    aput-char v1, v4, p1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 p0, p0, 0x3f

    .line 225
    aget-char p0, v0, p0

    aput-char p0, v4, v3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, v3, -0x2

    .line 227
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    shr-int/lit8 v1, p0, 0xc

    aget-char v1, v0, v1

    aput-char v1, v4, p1

    add-int/lit8 v3, v3, -0x1

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 228
    aget-char p0, v0, p0

    aput-char p0, v4, v3

    goto :goto_3

    :cond_4
    add-int/lit8 p1, v3, -0x4

    .line 232
    sget-object v0, Lcom/nimbusds/jose/util/Base64Codec;->CA:[C

    shr-int/lit8 v1, p0, 0xc

    aget-char v1, v0, v1

    aput-char v1, v4, p1

    add-int/lit8 p1, v3, -0x3

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    .line 233
    aget-char v1, v0, v1

    aput-char v1, v4, p1

    add-int/lit8 p1, v3, -0x2

    const/16 v1, 0x3d

    if-ne v5, v6, :cond_5

    and-int/lit8 p0, p0, 0x3f

    .line 234
    aget-char p0, v0, p0

    goto :goto_2

    :cond_5
    const/16 p0, 0x3d

    :goto_2
    aput-char p0, v4, p1

    add-int/lit8 v3, v3, -0x1

    .line 235
    aput-char v1, v4, v3

    :cond_6
    :goto_3
    return-object v4

    :cond_7
    add-int/lit8 v7, v5, 0x1

    .line 196
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    if-eqz p1, :cond_8

    add-int/lit8 v8, v6, 0x1

    .line 200
    sget-object v9, Lcom/nimbusds/jose/util/Base64Codec;->CA_URL_SAFE:[C

    ushr-int/lit8 v10, v5, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v9, v10

    aput-char v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 201
    aget-char v10, v9, v10

    aput-char v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 202
    aget-char v10, v9, v10

    aput-char v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    .line 203
    aget-char v5, v9, v5

    aput-char v5, v4, v8

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v6, 0x1

    .line 205
    sget-object v9, Lcom/nimbusds/jose/util/Base64Codec;->CA:[C

    ushr-int/lit8 v10, v5, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v9, v10

    aput-char v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 206
    aget-char v10, v9, v10

    aput-char v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 207
    aget-char v10, v9, v10

    aput-char v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    .line 208
    aget-char v5, v9, v5

    aput-char v5, v4, v8

    :goto_4
    move v5, v7

    goto/16 :goto_1
.end method

.method public static encodeToString([BZ)Ljava/lang/String;
    .locals 1

    .line 257
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/util/Base64Codec;->encodeToChar([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static normalizeEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 115
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->countIllegalChars(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v0, v1

    .line 116
    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x4

    :goto_0
    add-int v3, v0, v1

    .line 119
    new-array v3, v3, [C

    .line 122
    invoke-virtual {p0, v2, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/4 p0, 0x0

    :goto_1
    if-lt p0, v1, :cond_4

    :goto_2
    if-lt v2, v0, :cond_1

    .line 138
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 131
    :cond_1
    aget-char p0, v3, v2

    const/16 v1, 0x5f

    if-ne p0, v1, :cond_2

    const/16 p0, 0x2f

    .line 132
    aput-char p0, v3, v2

    goto :goto_3

    .line 133
    :cond_2
    aget-char p0, v3, v2

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_3

    const/16 p0, 0x2b

    .line 134
    aput-char p0, v3, v2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int v4, v0, p0

    const/16 v5, 0x3d

    .line 126
    aput-char v5, v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1
.end method
