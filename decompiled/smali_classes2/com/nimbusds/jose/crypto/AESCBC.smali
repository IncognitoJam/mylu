.class Lcom/nimbusds/jose/crypto/AESCBC;
.super Ljava/lang/Object;
.source "AESCBC.java"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final IV_BIT_LENGTH:I = 0x80


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 100
    invoke-static {v0, p3}, Lcom/nimbusds/jose/crypto/CipherHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 102
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 104
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p3, p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 112
    invoke-virtual {p3, p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p3

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/AESCBC;->createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 292
    :try_start_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 296
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;Ljava/security/Provider;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/nimbusds/jose/crypto/CompositeKey;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/crypto/CompositeKey;-><init>(Ljavax/crypto/SecretKey;)V

    .line 340
    invoke-static {p3}, Lcom/nimbusds/jose/crypto/AAD;->computeLength([B)[B

    move-result-object p0

    .line 343
    array-length v1, p3

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p0

    add-int/2addr v1, v2

    .line 344
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 345
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 346
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 347
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 348
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 350
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getMACKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    invoke-static {p3, p0, p6}, Lcom/nimbusds/jose/crypto/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    move-result-object p0

    .line 352
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getTruncatedMACByteLength()I

    move-result p3

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 354
    invoke-static {p0, p4}, Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getAESKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-static {p0, p1, p2, p5}, Lcom/nimbusds/jose/crypto/AESCBC;->decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    move-result-object p0

    return-object p0

    .line 355
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string p1, "MAC check failed"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/security/Provider;Ljava/security/Provider;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const-string v0, "epu"

    .line 395
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "epv"

    .line 402
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 404
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v2

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-static {p1, v1, v0, v2}, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v1, p2, p7}, Lcom/nimbusds/jose/crypto/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    move-result-object p2

    .line 416
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p5

    invoke-static {p5, p2}, Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;->areEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p0

    invoke-static {p1, p0, v0, v2}, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 422
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p1

    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p2

    invoke-static {p0, p1, p2, p6}, Lcom/nimbusds/jose/crypto/AESCBC;->decrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    move-result-object p0

    return-object p0

    .line 417
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string p1, "MAC check failed"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 144
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/AESCBC;->createAESCBCCipher(Ljavax/crypto/SecretKey;Z[BLjava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 147
    :try_start_0
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/nimbusds/jose/crypto/CompositeKey;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/crypto/CompositeKey;-><init>(Ljavax/crypto/SecretKey;)V

    .line 192
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getAESKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-static {p0, p1, p2, p4}, Lcom/nimbusds/jose/crypto/AESCBC;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    move-result-object p0

    .line 195
    invoke-static {p3}, Lcom/nimbusds/jose/crypto/AAD;->computeLength([B)[B

    move-result-object p2

    .line 198
    array-length p4, p3

    array-length v1, p1

    add-int/2addr p4, v1

    array-length v1, p0

    add-int/2addr p4, v1

    array-length v1, p2

    add-int/2addr p4, v1

    .line 199
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 200
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getMACKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-static {p2, p1, p5}, Lcom/nimbusds/jose/crypto/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    move-result-object p1

    .line 201
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CompositeKey;->getTruncatedMACByteLength()I

    move-result p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 203
    new-instance p2, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;

    invoke-direct {p2, p0, p1}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;-><init>([B[B)V

    return-object p2
.end method

.method public static encryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const-string v0, "epu"

    .line 238
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "epv"

    .line 245
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 247
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v2

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-static {p1, v1, v0, v2}, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 253
    invoke-static {v1, p3, p4, p5}, Lcom/nimbusds/jose/crypto/AESCBC;->encrypt(Ljavax/crypto/SecretKey;[B[BLjava/security/Provider;)[B

    move-result-object p4

    .line 256
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p5

    invoke-static {p1, p5, v0, v2}, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 258
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "."

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {p3}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {p4}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0, p6}, Lcom/nimbusds/jose/crypto/HMAC;->compute(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    move-result-object p0

    .line 265
    new-instance p1, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;

    invoke-direct {p1, p4, p0}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;-><init>([B[B)V

    return-object p1
.end method

.method public static generateIV(Ljava/security/SecureRandom;)[B
    .locals 1

    const/16 v0, 0x80

    .line 72
    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    move-result v0

    new-array v0, v0, [B

    .line 73
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method
