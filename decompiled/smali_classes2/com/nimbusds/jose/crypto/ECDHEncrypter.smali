.class public Lcom/nimbusds/jose/crypto/ECDHEncrypter;
.super Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;
.source "ECDHEncrypter.java"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;)V

    .line 116
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->toECPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;)V

    .line 100
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method

.method private generateEphemeralKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v0

    const-string v1, "EC"

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 199
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 200
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 202
    :goto_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t generate ephemeral EC key pair: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/ECDH;->resolveAlgorithmMode(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->generateEphemeralKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 142
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPrivateKey;

    .line 146
    iget-object v4, p0, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 148
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v5

    .line 145
    invoke-static {v4, v2, v5}, Lcom/nimbusds/jose/crypto/ECDH;->deriveSharedSecret(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getConcatKDF()Lcom/nimbusds/jose/crypto/ConcatKDF;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nimbusds/jose/crypto/ConcatKDF;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 152
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getConcatKDF()Lcom/nimbusds/jose/crypto/ConcatKDF;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/nimbusds/jose/crypto/ECDH;->deriveSharedKey(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/crypto/ConcatKDF;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 157
    sget-object v4, Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;

    invoke-virtual {v0, v4}, Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 160
    :cond_0
    sget-object v4, Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;

    invoke-virtual {v0, v4}, Lcom/nimbusds/jose/crypto/ECDH$AlgorithmMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/crypto/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    .line 168
    :goto_0
    new-instance v2, Lcom/nimbusds/jose/JWEHeader$Builder;

    invoke-direct {v2, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 169
    new-instance p1, Lcom/nimbusds/jose/jwk/ECKey$Builder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->build()Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    .line 172
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JWE ECDH algorithm mode: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getCurve()Lcom/nimbusds/jose/jwk/Curve;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDHEncrypter;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public bridge synthetic supportedEllipticCurves()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->supportedEllipticCurves()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedEncryptionMethods()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
