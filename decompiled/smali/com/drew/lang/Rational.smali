.class public Lcom/drew/lang/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/drew/lang/Rational;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71654dfd870ea02L


# instance fields
.field private final _denominator:J

.field private final _numerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/drew/lang/Rational;->_numerator:J

    .line 57
    iput-wide p3, p0, Lcom/drew/lang/Rational;->_denominator:J

    return-void
.end method

.method private static GCD(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    neg-long p0, p0

    :cond_0
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    neg-long p2, p2

    :cond_1
    :goto_0
    cmp-long v2, p0, v0

    if-eqz v2, :cond_3

    cmp-long v3, p2, v0

    if-eqz v3, :cond_3

    cmp-long v2, p0, p2

    if-lez v2, :cond_2

    .line 316
    rem-long/2addr p0, p2

    goto :goto_0

    .line 318
    :cond_2
    rem-long/2addr p2, p0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    move-wide p0, p2

    :cond_4
    return-wide p0
.end method


# virtual methods
.method public final byteValue()B
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Lcom/drew/lang/Rational;)I
    .locals 4
    .param p1    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 233
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/drew/lang/Rational;

    invoke-virtual {p0, p1}, Lcom/drew/lang/Rational;->compareTo(Lcom/drew/lang/Rational;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 5

    .line 70
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public equals(Lcom/drew/lang/Rational;)Z
    .locals 4

    .line 247
    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 275
    instance-of v1, p1, Lcom/drew/lang/Rational;

    if-nez v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    check-cast p1, Lcom/drew/lang/Rational;

    .line 278
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public equalsExact(Lcom/drew/lang/Rational;)Z
    .locals 5

    .line 261
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->getNumerator()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 5

    .line 85
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    iget-wide v1, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final getDenominator()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    return-wide v0
.end method

.method public final getNumerator()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    return-wide v0
.end method

.method public getReciprocal()Lcom/drew/lang/Rational;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 167
    new-instance v0, Lcom/drew/lang/Rational;

    iget-wide v1, p0, Lcom/drew/lang/Rational;->_denominator:J

    iget-wide v3, p0, Lcom/drew/lang/Rational;->_numerator:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/drew/lang/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public getSimplifiedInstance()Lcom/drew/lang/Rational;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 301
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_denominator:J

    invoke-static {v0, v1, v2, v3}, Lcom/drew/lang/Rational;->GCD(JJ)J

    move-result-wide v0

    .line 303
    new-instance v2, Lcom/drew/lang/Rational;

    iget-wide v3, p0, Lcom/drew/lang/Rational;->_numerator:J

    div-long/2addr v3, v0

    iget-wide v5, p0, Lcom/drew/lang/Rational;->_denominator:J

    div-long/2addr v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/drew/lang/Rational;-><init>(JJ)V

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .line 284
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-wide v2, p0, Lcom/drew/lang/Rational;->_numerator:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final intValue()I
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isInteger()Z
    .locals 6

    .line 173
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/drew/lang/Rational;->_numerator:J

    rem-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 181
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final longValue()J
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final shortValue()S
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toSimpleString(Z)Ljava/lang/String;
    .locals 11
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 200
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_denominator:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_1
    iget-wide v0, p0, Lcom/drew/lang/Rational;->_numerator:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/drew/lang/Rational;->_denominator:J

    rem-long v8, v6, v0

    cmp-long v10, v8, v2

    if-nez v10, :cond_2

    .line 206
    div-long/2addr v6, v0

    .line 207
    new-instance v0, Lcom/drew/lang/Rational;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-virtual {v0, p1}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/drew/lang/Rational;->getSimplifiedInstance()Lcom/drew/lang/Rational;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    return-object p1

    .line 216
    :cond_3
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/drew/lang/Rational;->_numerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/drew/lang/Rational;->_denominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
