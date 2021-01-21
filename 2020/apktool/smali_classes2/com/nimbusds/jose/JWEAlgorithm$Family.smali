.class public final Lcom/nimbusds/jose/JWEAlgorithm$Family;
.super Lcom/nimbusds/jose/AlgorithmFamily;
.source "JWEAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWEAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/AlgorithmFamily<",
        "Lcom/nimbusds/jose/JWEAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final ASYMMETRIC:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field public static final SYMMETRIC:Lcom/nimbusds/jose/JWEAlgorithm$Family;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 203
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->RSA1_5:Lcom/nimbusds/jose/JWEAlgorithm;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP:Lcom/nimbusds/jose/JWEAlgorithm;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 209
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v2, v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 216
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v6

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 222
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v2, v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v4

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 228
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v1, v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v2, v1, v4

    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v2, v1, v5

    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS512_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 235
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 236
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v2, v4, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    new-array v2, v5, [[Lcom/nimbusds/jose/JWEAlgorithm;

    .line 237
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v7, v4, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v3, v7}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v4

    .line 235
    invoke-static {v1, v2}, Lcom/nimbusds/jose/util/ArrayUtils;->concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ASYMMETRIC:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 244
    new-instance v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 245
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v2, v4, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    new-array v2, v6, [[Lcom/nimbusds/jose/JWEAlgorithm;

    .line 246
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    new-array v6, v4, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {v3, v6}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v3, v2, v4

    .line 247
    new-array v3, v5, [Lcom/nimbusds/jose/JWEAlgorithm;

    sget-object v6, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    aput-object v6, v3, v4

    aput-object v3, v2, v5

    .line 244
    invoke-static {v1, v2}, Lcom/nimbusds/jose/util/ArrayUtils;->concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWEAlgorithm;)V

    sput-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->SYMMETRIC:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    return-void
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/JWEAlgorithm;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;-><init>([Lcom/nimbusds/jose/Algorithm;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lcom/nimbusds/jose/Algorithm;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->add(Lcom/nimbusds/jose/Algorithm;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
