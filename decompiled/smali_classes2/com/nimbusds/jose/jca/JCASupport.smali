.class public final Lcom/nimbusds/jose/jca/JCASupport;
.super Ljava/lang/Object;
.source "JCASupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;)Z
    .locals 5

    .line 260
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    .line 262
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z
    .locals 3

    .line 283
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_CBC_HMAC_SHA:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 286
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HmacSHA256"

    goto :goto_0

    .line 296
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "HmacSHA384"

    goto :goto_0

    :cond_1
    const-string p0, "HmacSHA512"

    :goto_0
    const-string v0, "KeyGenerator"

    .line 301
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    :cond_2
    return v2

    .line 304
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_GCM:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod$Family;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_1
    const-string p0, "AES/GCM/NoPadding"

    .line 307
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_4
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;)Z
    .locals 5

    .line 162
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    .line 164
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z
    .locals 3

    .line 187
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 188
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA1_5:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RSA/ECB/PKCS1Padding"

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 200
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_2
    return v2

    .line 209
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Cipher"

    const-string v0, "AESWrap"

    .line 210
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    .line 213
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "KeyAgreement"

    const-string v0, "ECDH"

    .line 214
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2

    .line 217
    :cond_7
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string p0, "AES/GCM/NoPadding"

    .line 220
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    return v2

    .line 229
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "HmacSHA256"

    goto :goto_1

    .line 233
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "HmacSHA384"

    goto :goto_1

    :cond_a
    const-string p0, "HmacSHA512"

    :goto_1
    const-string v0, "KeyGenerator"

    .line 238
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_b

    return v1

    :cond_b
    return v2

    .line 241
    :cond_c
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;)Z
    .locals 6

    .line 72
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    return v3

    :cond_1
    aget-object v5, v0, v4

    .line 78
    invoke-static {p0, v5}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z
    .locals 4

    .line 99
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 101
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HMACSHA256"

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "HMACSHA384"

    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "HMACSHA512"

    :goto_0
    const-string v0, "KeyGenerator"

    .line 110
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 113
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Signature"

    if-eqz v0, :cond_a

    .line 115
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SHA256withRSA"

    goto :goto_1

    .line 117
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SHA384withRSA"

    goto :goto_1

    .line 119
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "SHA512withRSA"

    goto :goto_1

    .line 121
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "SHA256withRSAandMGF1"

    goto :goto_1

    .line 123
    :cond_7
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "SHA384withRSAandMGF1"

    goto :goto_1

    .line 125
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "SHA512withRSAandMGF1"

    .line 130
    :goto_1
    invoke-virtual {p1, v3, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v2

    .line 133
    :cond_a
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "SHA256withECDSA"

    goto :goto_2

    .line 137
    :cond_b
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "SHA384withECDSA"

    goto :goto_2

    .line 139
    :cond_c
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "SHA512withECDSA"

    .line 144
    :goto_2
    invoke-virtual {p1, v3, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public static isUnlimitedStrength()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    .line 54
    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
