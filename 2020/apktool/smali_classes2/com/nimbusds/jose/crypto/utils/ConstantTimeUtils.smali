.class public Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;
.super Ljava/lang/Object;
.source "ConstantTimeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([B[B)Z
    .locals 5

    .line 44
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_2

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2

    .line 50
    :cond_2
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
