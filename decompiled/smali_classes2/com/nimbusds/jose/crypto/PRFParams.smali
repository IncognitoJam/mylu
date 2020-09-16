.class final Lcom/nimbusds/jose/crypto/PRFParams;
.super Ljava/lang/Object;
.source "PRFParams.java"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final dkLen:I

.field private final jcaMacAlg:Ljava/lang/String;

.field private final macProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/PRFParams;->jcaMacAlg:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/PRFParams;->macProvider:Ljava/security/Provider;

    .line 71
    iput p3, p0, Lcom/nimbusds/jose/crypto/PRFParams;->dkLen:I

    return-void
.end method

.method public static resolve(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/PRFParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    const-string v0, "HmacSHA256"

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x18

    const-string v0, "HmacSHA384"

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS512_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x20

    const-string v0, "HmacSHA512"

    .line 143
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/crypto/PRFParams;

    invoke-direct {v1, v0, p1, p0}, Lcom/nimbusds/jose/crypto/PRFParams;-><init>(Ljava/lang/String;Ljava/security/Provider;I)V

    return-object v1

    .line 138
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 140
    sget-object v0, Lcom/nimbusds/jose/crypto/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 138
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDerivedKeyByteLength()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/nimbusds/jose/crypto/PRFParams;->dkLen:I

    return v0
.end method

.method public getMACAlgorithm()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/PRFParams;->jcaMacAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getMacProvider()Ljava/security/Provider;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/PRFParams;->macProvider:Ljava/security/Provider;

    return-object v0
.end method
