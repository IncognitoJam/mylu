.class public Lcom/nimbusds/jose/jwk/JWKMatcher;
.super Ljava/lang/Object;
.source "JWKMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final curves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private final hasID:Z

.field private final hasUse:Z

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSizeBits:I

.field private final minSizeBits:I

.field private final ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final privateOnly:Z

.field private final publicOnly:Z

.field private final sizesBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private final uses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 678
    invoke-direct/range {v0 .. v9}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 713
    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 751
    invoke-direct/range {v0 .. v11}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 792
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 837
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 838
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 839
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 840
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 841
    iput-boolean p6, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    .line 842
    iput-boolean p7, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    .line 843
    iput-boolean p8, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 844
    iput-boolean p9, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 845
    iput p10, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 846
    iput p11, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 847
    iput-object p12, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 848
    iput-object p13, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1155
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 1156
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1158
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ANY"

    .line 1160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x20

    .line 1168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    return-object v0
.end method

.method public getCurves()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyOperations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    return-object v0
.end method

.method public getKeySizes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyUses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxKeySize()I
    .locals 1

    .line 1001
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMaxKeySize()I

    move-result v0

    return v0
.end method

.method public getMinKeySize()I
    .locals 1

    .line 976
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    return v0
.end method

.method public getMinSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMinKeySize()I

    move-result v0

    return v0
.end method

.method public hasKeyID()Z
    .locals 1

    .line 927
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    return v0
.end method

.method public hasKeyUse()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    return v0
.end method

.method public isPrivateOnly()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    return v0
.end method

.method public isPublicOnly()Z
    .locals 1

    .line 951
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    return v0
.end method

.method public matches(Lcom/nimbusds/jose/jwk/JWK;)Z
    .locals 3

    .line 1036
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1039
    :cond_0
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 1042
    :cond_2
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1045
    :cond_3
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1048
    :cond_4
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1051
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 1054
    :cond_6
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 1056
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1058
    :cond_7
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return v1

    .line 1065
    :cond_9
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 1068
    :cond_a
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 1071
    :cond_b
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    if-lez v0, :cond_c

    .line 1073
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    if-ge v0, v2, :cond_c

    return v1

    .line 1077
    :cond_c
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-lez v0, :cond_d

    .line 1079
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-le v0, v2, :cond_d

    return v1

    .line 1083
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 1084
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 1088
    :cond_e
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    if-eqz v0, :cond_10

    .line 1090
    instance-of v2, p1, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    if-nez v2, :cond_f

    return v1

    .line 1093
    :cond_f
    check-cast p1, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    .line 1095
    invoke-interface {p1}, Lcom/nimbusds/jose/jwk/CurveBasedJWK;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    const-string v2, "kty"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1108
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    const-string v2, "use"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1109
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    const-string v2, "key_ops"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1110
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    const-string v2, "alg"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1111
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    const-string v2, "kid"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1113
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasUse:Z

    if-eqz v1, :cond_0

    const-string v1, "has_use=true "

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_0
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->hasID:Z

    if-eqz v1, :cond_1

    const-string v1, "has_id=true "

    .line 1118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_1
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    if-eqz v1, :cond_2

    const-string v1, "private_only=true "

    .line 1122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_2
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    if-eqz v1, :cond_3

    const-string v1, "public_only=true "

    .line 1126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_3
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    const-string v2, " "

    if-lez v1, :cond_4

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "min_size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :cond_4
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    if-lez v1, :cond_5

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "max_size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1138
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    const-string v2, "crv"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 1140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
