.class public Lcom/nimbusds/jose/crypto/ECDSAVerifier;
.super Lcom/nimbusds/jose/crypto/ECDSAProvider;
.source "ECDSAVerifier.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSVerifier;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

.field private final publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ECKey;->toECPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/ECPublicKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/ECDSA;->resolveAlgorithm(Ljava/security/interfaces/ECKey;)Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/ECDSAProvider;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 65
    new-instance v0, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    .line 120
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 124
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->supportedECDSAAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/Curve;->forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->toECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lcom/nimbusds/jose/crypto/utils/ECChecks;->isPointOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/spec/ECParameterSpec;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    return-void

    .line 125
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Curve / public key parameters mismatch"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
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

    .line 153
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDSAProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

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

    .line 146
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public bridge synthetic supportedECDSAAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDSAProvider;->supportedECDSAAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic supportedJWSAlgorithms()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/crypto/ECDSAProvider;->supportedJWSAlgorithms()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->supportedJWSAlgorithms()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;

    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/crypto/CriticalHeaderParamsDeferral;->headerPasses(Lcom/nimbusds/jose/Header;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p1

    .line 178
    :try_start_0
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/ECDSA;->transcodeSignatureToDER([B)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/nimbusds/jose/crypto/ECDSA;->getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p3

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p3, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 188
    invoke-virtual {p3, p2}, Ljava/security/Signature;->update([B)V

    .line 189
    invoke-virtual {p3, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    return v1

    :catch_1
    move-exception p1

    .line 192
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid EC public key: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    return v1

    .line 166
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->supportedJWSAlgorithms()Ljava/util/Set;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
