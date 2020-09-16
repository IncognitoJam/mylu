.class public Lcom/nimbusds/jose/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[[TT;)[TT;"
        }
    .end annotation

    .line 40
    array-length v0, p0

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 44
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 45
    array-length p0, p0

    .line 46
    array-length v5, p1

    move v0, p0

    const/4 p0, 0x0

    :goto_1
    if-lt p0, v5, :cond_0

    return-object v4

    :cond_0
    aget-object v1, p1, p0

    .line 47
    array-length v3, v1

    invoke-static {v1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    aget-object v4, p1, v0

    .line 42
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
