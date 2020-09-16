.class abstract Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;
.super Lcom/nimbusds/jose/crypto/BaseJWEProvider;
.source "ECDHCryptoProvider.java"


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final concatKDF:Lcom/nimbusds/jose/crypto/ConcatKDF;

.field private final curve:Lcom/nimbusds/jose/jwk/Curve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    sget-object v0, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    sput-object v0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 91
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lcom/nimbusds/jose/jwk/Curve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    sget-object v1, Lcom/nimbusds/jose/crypto/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/crypto/BaseJWEProvider;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "unknown"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;)V

    .line 133
    :goto_0
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->curve:Lcom/nimbusds/jose/jwk/Curve;

    .line 140
    new-instance p1, Lcom/nimbusds/jose/crypto/ConcatKDF;

    const-string v0, "SHA-256"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/crypto/ConcatKDF;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->concatKDF:Lcom/nimbusds/jose/crypto/ConcatKDF;

    return-void

    .line 134
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 135
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    .line 134
    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedEllipticCurve(Lcom/nimbusds/jose/jwk/Curve;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getConcatKDF()Lcom/nimbusds/jose/crypto/ConcatKDF;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->concatKDF:Lcom/nimbusds/jose/crypto/ConcatKDF;

    return-object v0
.end method

.method public getCurve()Lcom/nimbusds/jose/jwk/Curve;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->curve:Lcom/nimbusds/jose/jwk/Curve;

    return-object v0
.end method

.method public supportedEllipticCurves()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    return-object v0
.end method
