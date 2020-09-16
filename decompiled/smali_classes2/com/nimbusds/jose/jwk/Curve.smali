.class public final Lcom/nimbusds/jose/jwk/Curve;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final Ed25519:Lcom/nimbusds/jose/jwk/Curve;

.field public static final Ed448:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_256:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_384:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_521:Lcom/nimbusds/jose/jwk/Curve;

.field public static final X25519:Lcom/nimbusds/jose/jwk/Curve;

.field public static final X448:Lcom/nimbusds/jose/jwk/Curve;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;

.field private final oid:Ljava/lang/String;

.field private final stdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "P-256"

    const-string v2, "secp256r1"

    const-string v3, "1.2.840.10045.3.1.7"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 76
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "P-384"

    const-string v2, "secp384r1"

    const-string v3, "1.3.132.0.34"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 82
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "P-521"

    const-string v2, "secp521r1"

    const-string v3, "1.3.132.0.35"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 88
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "Ed25519"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 94
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "Ed448"

    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 100
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "X25519"

    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 106
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    const-string v1, "X448"

    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0, v0}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/Curve;->name:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/Curve;->stdName:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/Curve;->oid:Ljava/lang/String;

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JOSE cryptographic curve name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 0

    .line 353
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECParameterTable;->get(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object p0

    return-object p0
.end method

.method public static forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ")",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 328
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 330
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 332
    new-instance p0, Ljava/util/HashSet;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nimbusds/jose/jwk/Curve;

    const/4 v1, 0x0

    .line 333
    sget-object v2, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 334
    sget-object v2, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    aput-object v2, v0, v1

    .line 332
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forOID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 1

    .line 302
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 304
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 306
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 307
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forStdName(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 1

    const-string v0, "secp256r1"

    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "prime256v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "secp384r1"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    :cond_1
    const-string v0, "secp521r1"

    .line 276
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 278
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 280
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 282
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 284
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 285
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    .line 273
    :cond_7
    :goto_0
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 1

    if-eqz p0, :cond_7

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 245
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 247
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 249
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 251
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 253
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 255
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    return-object p0

    .line 258
    :cond_6
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 240
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The cryptographic curve string must not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 225
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/Curve;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/Curve;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOID()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/Curve;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getStdName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/Curve;->stdName:Ljava/lang/String;

    return-object v0
.end method

.method public toECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 208
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECParameterTable;->get(Lcom/nimbusds/jose/jwk/Curve;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
