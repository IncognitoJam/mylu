.class public Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;
.super Ljava/lang/Object;
.source "DefaultJWTProcessor.java"

# interfaces
.implements Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final INVALID_NESTED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

.field private static final INVALID_SIGNATURE:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_JWE_DECRYPTER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

.field private static final NO_JWE_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_JWE_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_JWS_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_JWS_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_JWS_VERIFIER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

.field private static final NO_MATCHING_DECRYPTERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final NO_MATCHING_VERIFIERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

.field private static final PLAIN_JWT_REJECTED_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;


# instance fields
.field private claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

.field private jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

.field private jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Unsecured (plain) JWTs are rejected, extend class to handle"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 89
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->PLAIN_JWT_REJECTED_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 92
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Signed JWT rejected: No JWS key selector is configured"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 91
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 94
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Encrypted JWT rejected: No JWE key selector is configured"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 93
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 96
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    const-string v1, "No JWS verifier is configured"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 95
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_VERIFIER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

    .line 98
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    const-string v1, "No JWE decrypter is configured"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 97
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_DECRYPTER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

    .line 100
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Signed JWT rejected: Another algorithm expected, or no matching key(s) found"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 99
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 102
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Encrypted JWT rejected: Another algorithm expected, or no matching key(s) found"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 101
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 104
    new-instance v0, Lcom/nimbusds/jose/proc/BadJWSException;

    const-string v1, "Signed JWT rejected: Invalid signature"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJWSException;-><init>(Ljava/lang/String;)V

    .line 103
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->INVALID_SIGNATURE:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 106
    new-instance v0, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string v1, "The payload is not a nested signed JWT"

    invoke-direct {v0, v1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 105
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->INVALID_NESTED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 108
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "JWS object rejected: No matching verifier(s) found"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 107
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_MATCHING_VERIFIERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 110
    new-instance v0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string v1, "Encrypted JWT rejected: No matching decrypter(s) found"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 109
    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_MATCHING_DECRYPTERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    .line 133
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 139
    new-instance v0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;

    invoke-direct {v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method

.method private verifyAndReturnClaims(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-interface {p1}, Lcom/nimbusds/jwt/JWT;->getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Lcom/nimbusds/jwt/proc/BadJWTException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    return-object v0
.end method

.method public getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    return-object v0
.end method

.method public getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    return-object v0
.end method

.method public getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    return-object v0
.end method

.method public getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    return-object v0
.end method

.method public getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-object v0
.end method

.method public process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/EncryptedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JWEKeySelector;->selectJWEKeys(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 370
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 374
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 376
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    invoke-interface {v1, v2, v3}, Lcom/nimbusds/jose/proc/JWEDecrypterFactory;->createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/nimbusds/jwt/EncryptedJWT;->decrypt(Lcom/nimbusds/jose/JWEDecrypter;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JWT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/Payload;->toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 405
    :cond_1
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->INVALID_NESTED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    throw p1

    .line 411
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyAndReturnClaims(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    .line 389
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 395
    :cond_3
    new-instance p1, Lcom/nimbusds/jose/proc/BadJWEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Encrypted JWT rejected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/JOSEException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/nimbusds/jose/proc/BadJWEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 414
    :cond_4
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_MATCHING_DECRYPTERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1

    .line 371
    :cond_5
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1

    .line 365
    :cond_6
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_DECRYPTER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

    throw p1

    .line 361
    :cond_7
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWE_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1
.end method

.method public process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 283
    instance-of v0, p1, Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Lcom/nimbusds/jwt/SignedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    instance-of v0, p1, Lcom/nimbusds/jwt/EncryptedJWT;

    if-eqz v0, :cond_1

    .line 288
    check-cast p1, Lcom/nimbusds/jwt/EncryptedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    instance-of v0, p1, Lcom/nimbusds/jwt/PlainJWT;

    if-eqz v0, :cond_2

    .line 292
    check-cast p1, Lcom/nimbusds/jwt/PlainJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 296
    :cond_2
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JWT object type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/PlainJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyAndReturnClaims(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 306
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->PLAIN_JWT_REJECTED_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1
.end method

.method public process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/SignedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 319
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 323
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 329
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 331
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    invoke-interface {v1, v2, v3}, Lcom/nimbusds/jose/proc/JWSVerifierFactory;->createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1, v1}, Lcom/nimbusds/jwt/SignedJWT;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyAndReturnClaims(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 345
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 347
    :cond_2
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->INVALID_SIGNATURE:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1

    .line 351
    :cond_3
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_MATCHING_VERIFIERS_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1

    .line 326
    :cond_4
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_KEY_CANDIDATES_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1

    .line 320
    :cond_5
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_VERIFIER_FACTORY_EXCEPTION:Lcom/nimbusds/jose/JOSEException;

    throw p1

    .line 316
    :cond_6
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->NO_JWS_KEY_SELECTOR_EXCEPTION:Lcom/nimbusds/jose/proc/BadJOSEException;

    throw p1
.end method

.method public process(Ljava/lang/String;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Lcom/nimbusds/jwt/JWTParser;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWT;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1
.end method

.method public setJWEDecrypterFactory(Lcom/nimbusds/jose/proc/JWEDecrypterFactory;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    return-void
.end method

.method public setJWEKeySelector(Lcom/nimbusds/jose/proc/JWEKeySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    return-void
.end method

.method public setJWSKeySelector(Lcom/nimbusds/jose/proc/JWSKeySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    return-void
.end method

.method public setJWSVerifierFactory(Lcom/nimbusds/jose/proc/JWSVerifierFactory;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    return-void
.end method

.method public setJWTClaimsSetVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method

.method public setJWTClaimsVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 232
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method
