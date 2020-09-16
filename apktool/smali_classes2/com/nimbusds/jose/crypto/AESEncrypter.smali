.class public Lcom/nimbusds/jose/crypto/AESEncrypter;
.super Lcom/nimbusds/jose/crypto/AESCryptoProvider;
.source "AESEncrypter.java"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const-string v0, "AES"

    .line 132
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/AESCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/AESEncrypter;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 150
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    goto/16 :goto_0

    .line 148
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 128 bits for A128KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xc0

    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 157
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    goto/16 :goto_0

    .line 155
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 192 bits for A192KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_3
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x100

    if-eqz v1, :cond_5

    .line 161
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 164
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    goto :goto_0

    .line 162
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 256 bits for A256KW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_5
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 171
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    goto :goto_0

    .line 169
    :cond_6
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 128 bits for A128GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_7
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 175
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 178
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    goto :goto_0

    .line 176
    :cond_8
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 192 bits for A192GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_9
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 185
    sget-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    .line 197
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 200
    sget-object v3, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    invoke-virtual {v3, v1}, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/nimbusds/jose/crypto/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    goto :goto_1

    .line 205
    :cond_a
    sget-object v3, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    invoke-virtual {v3, v1}, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 207
    new-instance v0, Lcom/nimbusds/jose/util/Container;

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/crypto/AESGCM;->generateIV(Ljava/security/SecureRandom;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/util/Container;-><init>(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/nimbusds/jose/crypto/AESGCMKW;->encryptCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;->getCipherText()[B

    move-result-object v3

    invoke-static {v3}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 212
    new-instance v4, Lcom/nimbusds/jose/JWEHeader$Builder;

    invoke-direct {v4, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 213
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 214
    invoke-virtual {v1}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;->getAuthenticationTag()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/JWEHeader$Builder;->authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    move-object v0, v3

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/AESEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-static {p1, p2, v2, v0, v1}, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p1

    return-object p1

    .line 218
    :cond_b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JWE algorithm: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_c
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string p2, "The Key Encryption Key (KEK) length must be 256 bits for A256GCMKW encryption"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_d
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    sget-object p2, Lcom/nimbusds/jose/crypto/AESEncrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/AESCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/AESCryptoProvider;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedEncryptionMethods()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/AESCryptoProvider;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/AESCryptoProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
