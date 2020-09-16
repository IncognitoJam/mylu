.class public Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;
.super Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;
.source "PasswordBasedDecrypter.java"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;-><init>([B)V

    .line 71
    new-instance p1, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;-><init>([B)V

    .line 71
    new-instance p1, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p5, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v2, p1}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 147
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v2

    .line 148
    invoke-static {v2, v0}, Lcom/nimbusds/jose/crypto/PBKDF2;->formatSalt(Lcom/nimbusds/jose/JWEAlgorithm;[B)[B

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nimbusds/jose/crypto/PRFParams;->resolve(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/PRFParams;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->getPassword()[B

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/nimbusds/jose/crypto/PBKDF2;->deriveKey([B[BILcom/nimbusds/jose/crypto/PRFParams;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 152
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/crypto/AESKW;->unwrapCEK(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 154
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v9}, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    move-result-object p1

    return-object p1

    .line 140
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Missing JWE \"p2c\" header parameter"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Missing JWE \"p2s\" header parameter"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Missing JWE authentication tag"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_3
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Missing JWE initialization vector (IV)"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Missing JWE encrypted key"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPassword()[B
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->getPassword()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPasswordString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->getPasswordString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedEncryptionMethods()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
