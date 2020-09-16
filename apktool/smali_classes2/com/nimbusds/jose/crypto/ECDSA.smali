.class Lcom/nimbusds/jose/crypto/ECDSA;
.super Ljava/lang/Object;
.source "ECDSA.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x40

    return p0

    .line 147
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x60

    return p0

    .line 151
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x84

    return p0

    .line 157
    :cond_2
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 159
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 157
    invoke-static {p0, v1}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA256withECDSA"

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA384withECDSA"

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA512withECDSA"

    :goto_0
    if-eqz p1, :cond_2

    .line 119
    :try_start_0
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported ECDSA algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 111
    :cond_3
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 114
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 112
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 74
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    return-object p0

    .line 76
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    return-object p0

    .line 78
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object p0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    return-object p0

    .line 81
    :cond_2
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected curve: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "The EC key curve is not supported, must be P-256, P-384 or P-521"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveAlgorithm(Ljava/security/interfaces/ECKey;)Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/crypto/ECDSA;->resolveAlgorithm(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public static transcodeSignatureToConcat([BI)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 178
    array-length v0, p0

    const-string v1, "Invalid ECDSA signature format"

    const/16 v2, 0x8

    if-lt v0, v2, :cond_7

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    .line 183
    aget-byte v2, p0, v0

    const/4 v3, 0x2

    if-lez v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 185
    :cond_0
    aget-byte v0, p0, v0

    const/16 v2, -0x7f

    if-ne v0, v2, :cond_6

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 191
    aget-byte v2, p0, v2

    move v4, v2

    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    .line 194
    aget-byte v5, p0, v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v6, v5, 0x1

    .line 198
    aget-byte v6, p0, v6

    move v7, v6

    :goto_3
    if-lez v7, :cond_4

    add-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    sub-int/2addr v8, v7

    .line 201
    aget-byte v8, p0, v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 205
    :cond_4
    :goto_4
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 206
    div-int/2addr p1, v3

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v8, v0, -0x1

    .line 208
    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    array-length v10, p0

    sub-int/2addr v10, v0

    if-ne v9, v10, :cond_5

    .line 209
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v3

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    if-ne v8, v2, :cond_5

    .line 210
    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_5

    .line 211
    aget-byte v0, p0, v5

    if-ne v0, v3, :cond_5

    mul-int/lit8 v0, p1, 0x2

    .line 215
    new-array v1, v0, [B

    sub-int v2, v5, v4

    sub-int/2addr p1, v4

    .line 217
    invoke-static {p0, v2, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    sub-int/2addr v0, v7

    .line 218
    invoke-static {p0, v5, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 212
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    invoke-direct {p0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_6
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    invoke-direct {p0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_7
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    invoke-direct {p0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transcodeSignatureToDER([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 242
    array-length v0, p0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    sub-int v3, v0, v2

    .line 246
    aget-byte v3, p0, v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int v3, v0, v2

    .line 252
    aget-byte v4, p0, v3

    if-gez v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    move v5, v0

    :goto_3
    if-lez v5, :cond_4

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v6, v5

    .line 258
    aget-byte v6, p0, v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v5

    .line 264
    aget-byte v6, p0, v0

    if-gez v6, :cond_5

    add-int/lit8 v6, v5, 0x1

    goto :goto_5

    :cond_5
    move v6, v5

    :goto_5
    add-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v1

    add-int/2addr v7, v6

    const/16 v8, 0xff

    if-gt v7, v8, :cond_7

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v7, v8, :cond_6

    add-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    .line 279
    new-array v8, v8, [B

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    .line 282
    new-array v8, v8, [B

    const/16 v10, -0x7f

    .line 283
    aput-byte v10, v8, v9

    const/4 v9, 0x2

    :goto_6
    const/4 v10, 0x0

    const/16 v11, 0x30

    .line 287
    aput-byte v11, v8, v10

    add-int/lit8 v10, v9, 0x1

    int-to-byte v7, v7

    .line 288
    aput-byte v7, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 289
    aput-byte v1, v8, v10

    add-int/lit8 v9, v7, 0x1

    int-to-byte v10, v4

    .line 290
    aput-byte v10, v8, v7

    add-int/2addr v9, v4

    sub-int v4, v9, v2

    .line 292
    invoke-static {p0, v3, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v9, 0x1

    .line 296
    aput-byte v1, v8, v9

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v6

    .line 297
    aput-byte v3, v8, v2

    add-int/2addr v1, v6

    sub-int/2addr v1, v5

    .line 299
    invoke-static {p0, v0, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v8

    .line 271
    :cond_7
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "Invalid ECDSA signature format"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
