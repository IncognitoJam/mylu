.class public Lcom/nimbusds/jose/jwk/JWKSet;
.super Ljava/lang/Object;
.source "JWKSet.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/jwk-set+json; charset=UTF-8"


# instance fields
.field private final customMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWK;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWK must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWK list must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWK list must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static load(Ljava/io/File;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 373
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/IOUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 423
    invoke-static {p0, v0, v0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->load(Ljava/net/URL;III)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;III)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    invoke-direct {v0, p1, p2, p3}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    .line 404
    invoke-interface {v0, p0}, Lcom/nimbusds/jose/util/RestrictedResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/security/KeyStore;Lcom/nimbusds/jose/jwk/PasswordLookup;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 449
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_4

    .line 494
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKSet;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    return-object p0

    .line 496
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_3

    .line 497
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-interface {p1, v1}, Lcom/nimbusds/jose/jwk/PasswordLookup;->lookupPassword(Ljava/lang/String;)[C

    move-result-object v4

    .line 501
    :goto_2
    :try_start_0
    invoke-static {p0, v1, v4}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object v1
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 507
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 451
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_5

    .line 452
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-interface {p1, v2}, Lcom/nimbusds/jose/jwk/PasswordLookup;->lookupPassword(Ljava/lang/String;)[C

    move-result-object v3

    .line 454
    :goto_3
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 459
    :cond_6
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    instance-of v5, v5, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_8

    .line 463
    :try_start_1
    invoke-static {p0, v2, v3}, Lcom/nimbusds/jose/jwk/RSAKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object v2
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_7

    goto :goto_0

    .line 472
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 474
    :cond_8
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    instance-of v4, v4, Ljava/security/interfaces/ECPublicKey;

    if-eqz v4, :cond_0

    .line 478
    :try_start_2
    invoke-static {p0, v2, v3}, Lcom/nimbusds/jose/jwk/ECKey;->load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object v2
    :try_end_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 304
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "keys"

    .line 322
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Lnet/minidev/json/JSONArray;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 326
    :goto_0
    invoke-virtual {v1}, Lnet/minidev/json/JSONArray;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 344
    new-instance v5, Lcom/nimbusds/jose/jwk/JWKSet;

    invoke-direct {v5, v2}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    .line 346
    invoke-virtual {p0}, Lnet/minidev/json/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v5

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v5}, Lcom/nimbusds/jose/jwk/JWKSet;->getAdditionalMembers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 328
    :cond_3
    invoke-virtual {v1, v4}, Lnet/minidev/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lnet/minidev/json/JSONObject;

    if-eqz v5, :cond_4

    .line 332
    invoke-virtual {v1, v4}, Lnet/minidev/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/minidev/json/JSONObject;

    .line 335
    :try_start_0
    invoke-static {v5}, Lcom/nimbusds/jose/jwk/JWK;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 339
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JWK at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 329
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "The \"keys\" JSON array must contain JSON objects only"

    invoke-direct {p0, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public getAdditionalMembers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    return-object v0
.end method

.method public getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 179
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    return-object v0
.end method

.method public toJSONObject()Lnet/minidev/json/JSONObject;
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->toJSONObject(Z)Lnet/minidev/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject(Z)Lnet/minidev/json/JSONObject;
    .locals 4

    .line 252
    new-instance v0, Lnet/minidev/json/JSONObject;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 254
    new-instance v1, Lnet/minidev/json/JSONArray;

    invoke-direct {v1}, Lnet/minidev/json/JSONArray;-><init>()V

    .line 256
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "keys"

    .line 272
    invoke-virtual {v0, p1, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 256
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nimbusds/jose/jwk/JWK;

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {v3}, Lcom/nimbusds/jose/jwk/JWK;->toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v3}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/minidev/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v3}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/minidev/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toPublicJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 3

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKSet;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSet;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKSet;->customMembers:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v1

    .line 211
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nimbusds/jose/jwk/JWK;

    .line 213
    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/JWK;->toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lnet/minidev/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
