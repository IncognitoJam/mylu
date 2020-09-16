.class public Lcom/nimbusds/jose/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitLength(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static bitLength([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    array-length p0, p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->bitLength(I)I

    move-result p0

    return p0
.end method

.method public static byteLength(I)I
    .locals 0

    .line 164
    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static varargs concat([[B)[B
    .locals 4

    .line 45
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static safeBitLength(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    int-to-long v0, p0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return p0

    .line 110
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/util/IntegerOverflowException;

    invoke-direct {p0}, Lcom/nimbusds/jose/util/IntegerOverflowException;-><init>()V

    throw p0
.end method

.method public static safeBitLength([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    array-length p0, p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength(I)I

    move-result p0

    return p0
.end method

.method public static subArray([BII)[B
    .locals 2

    .line 76
    new-array p2, p2, [B

    .line 77
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
