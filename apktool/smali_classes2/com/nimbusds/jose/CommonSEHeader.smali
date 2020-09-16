.class abstract Lcom/nimbusds/jose/CommonSEHeader;
.super Lcom/nimbusds/jose/Header;
.source "CommonSEHeader.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final jku:Ljava/net/URI;

.field private final jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private final kid:Ljava/lang/String;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/Header;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    move-object v0, p5

    .line 151
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    move-object v0, p6

    .line 152
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    move-object/from16 v0, p7

    .line 153
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    move-object/from16 v0, p8

    .line 154
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p9

    .line 155
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v8, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p11

    .line 164
    iput-object v0, v7, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIncludedParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getIncludedParams()Ljava/util/Set;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_0

    const-string v1, "jku"

    .line 261
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    const-string v1, "jwk"

    .line 265
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_2

    const-string v1, "x5u"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    const-string v1, "x5t"

    .line 273
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    const-string v1, "x5t#S256"

    .line 277
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "x5c"

    .line 281
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "kid"

    .line 285
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    return-object v0
.end method

.method public getJWKURL()Ljava/net/URI;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    return-object v0
.end method

.method public getX509CertChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    return-object v0
.end method

.method public getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getX509CertURL()Ljava/net/URI;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    return-object v0
.end method

.method public toJSONObject()Lnet/minidev/json/JSONObject;
    .locals 3

    .line 295
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jku:Ljava/net/URI;

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jku"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v1

    const-string v2, "jwk"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5u:Ljava/net/URI;

    if-eqz v1, :cond_2

    .line 306
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5u"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5t"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    .line 314
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5t#S256"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 318
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->x5c:Ljava/util/List;

    const-string v2, "x5c"

    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/CommonSEHeader;->kid:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "kid"

    .line 322
    invoke-virtual {v0, v2, v1}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
