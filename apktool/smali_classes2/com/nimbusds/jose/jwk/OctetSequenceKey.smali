.class public final Lcom/nimbusds/jose/jwk/OctetSequenceKey;
.super Lcom/nimbusds/jose/jwk/JWK;
.source "OctetSequenceKey.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/SecretJWK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final k:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    .line 439
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 445
    iput-object v0, v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->k:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    :cond_0
    move-object v1, p0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The key value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bridge synthetic load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 636
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 645
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Ljavax/crypto/SecretKey;)V

    .line 646
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object p1

    .line 647
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    move-result-object p0

    .line 648
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 638
    :goto_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t retrieve secret key (bad pin?): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static bridge synthetic parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 573
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 593
    new-instance v1, Lcom/nimbusds/jose/util/Base64URL;

    const-string v0, "k"

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyType(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v0

    .line 598
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    if-ne v0, v2, :cond_0

    .line 603
    new-instance v11, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 604
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyUse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v2

    .line 605
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyOperations(Lnet/minidev/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    .line 606
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseAlgorithm(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/Algorithm;

    move-result-object v4

    .line 607
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyID(Lnet/minidev/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertURL(Lnet/minidev/json/JSONObject;)Ljava/net/URI;

    move-result-object v6

    .line 609
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertThumbprint(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v7

    .line 610
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertSHA256Thumbprint(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v8

    .line 611
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertChain(Lnet/minidev/json/JSONObject;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v11

    .line 603
    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v11

    .line 600
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, 0x0

    const-string v1, "The key type \"kty\" must be oct"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public getKeyValue()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->k:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getRequiredParams()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->k:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kty"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isPrivate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 2

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->k:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v0
    :try_end_0
    .catch Lcom/nimbusds/jose/util/IntegerOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/IntegerOverflowException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toByteArray()[B
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->getKeyValue()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Lnet/minidev/json/JSONObject;
    .locals 3

    .line 550
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->k:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toPublicJWK()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object v0

    return-object v0
.end method

.method public toPublicJWK()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    const-string v0, "NONE"

    .line 481
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 495
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
