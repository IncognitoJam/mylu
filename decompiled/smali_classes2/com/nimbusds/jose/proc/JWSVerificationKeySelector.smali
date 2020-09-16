.class public Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "JWSVerificationKeySelector.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final jwsAlg:Lcom/nimbusds/jose/JWSAlgorithm;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlg:Lcom/nimbusds/jose/JWSAlgorithm;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWS algorithm must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createJWKMatcher(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 6

    .line 90
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v5

    invoke-static {v5}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v4}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    new-array v0, v3, [Lcom/nimbusds/jose/Algorithm;

    .line 107
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    .line 95
    :cond_3
    :goto_0
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v5

    invoke-static {v5}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    new-array v0, v3, [Lcom/nimbusds/jose/jwk/KeyUse;

    .line 98
    sget-object v5, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v5, v0, v2

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    new-array v0, v3, [Lcom/nimbusds/jose/Algorithm;

    .line 99
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    return-object p1
.end method

.method public getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlg:Lcom/nimbusds/jose/JWSAlgorithm;

    return-object v0
.end method

.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    return-object v0
.end method

.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlg:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->createJWKMatcher(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    if-nez p1, :cond_1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    .line 131
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/KeyConverter;->toJavaKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 134
    instance-of v1, v0, Ljava/security/PublicKey;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_2

    .line 135
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
