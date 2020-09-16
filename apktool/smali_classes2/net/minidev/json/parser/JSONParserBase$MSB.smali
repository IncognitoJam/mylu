.class public Lnet/minidev/json/parser/JSONParserBase$MSB;
.super Ljava/lang/Object;
.source "JSONParserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/parser/JSONParserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSB"
.end annotation


# instance fields
.field b:[C

.field p:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    new-array p1, p1, [C

    iput-object p1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    const/4 p1, -0x1

    .line 732
    iput p1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4

    .line 736
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    .line 737
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    array-length v1, v0

    iget v2, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    if-gt v1, v2, :cond_0

    .line 738
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 739
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    iput-object v1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    .line 742
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    aput-char p1, v0, v1

    return-void
.end method

.method public append(I)V
    .locals 4

    .line 746
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    .line 747
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    array-length v1, v0

    iget v2, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    if-gt v1, v2, :cond_0

    .line 748
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 749
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    iput-object v1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    .line 752
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, -0x1

    .line 760
    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 756
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->b:[C

    iget v2, p0, Lnet/minidev/json/parser/JSONParserBase$MSB;->p:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
