.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;
.super Ljava/lang/Object;
.source "DefaultJWSVerifierFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSVerifierFactory;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 59
    sget-object v1, Lcom/nimbusds/jose/crypto/MACVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    sget-object v1, Lcom/nimbusds/jose/crypto/RSASSAVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-void
.end method


# virtual methods
.method public createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/nimbusds/jose/crypto/MACVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    if-eqz p1, :cond_0

    .line 98
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 100
    new-instance p1, Lcom/nimbusds/jose/crypto/MACVerifier;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>(Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 102
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/crypto/RSASSAVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    instance-of p1, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_2

    .line 108
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .line 110
    new-instance p1, Lcom/nimbusds/jose/crypto/RSASSAVerifier;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSASSAVerifier;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 112
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDSAVerifier;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    instance-of p1, p2, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_4

    .line 118
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 120
    new-instance p1, Lcom/nimbusds/jose/crypto/ECDSAVerifier;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    .line 128
    :goto_0
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSVerifier;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 129
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSVerifier;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object p1

    .line 115
    :cond_4
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 124
    :cond_5
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported JWS algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-object v0
.end method

.method public supportedJWSAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
