.class Lnet/minidev/json/parser/JSONParserByteArray;
.super Lnet/minidev/json/parser/JSONParserMemory;
.source "JSONParserByteArray.java"


# instance fields
.field private in:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/JSONParserMemory;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected extractString(II)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->xs:Ljava/lang/String;

    return-void
.end method

.method protected extractStringTrim(II)V
    .locals 3

    .line 66
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    :goto_0
    const/16 v1, 0x20

    if-ge p1, p2, :cond_1

    .line 68
    aget-byte v2, v0, p1

    if-le v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, p2, :cond_3

    add-int/lit8 v2, p2, -0x1

    .line 71
    aget-byte v2, v0, v2

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 74
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->xs:Ljava/lang/String;

    return-void
.end method

.method protected indexOf(CI)I
    .locals 3

    move v0, p2

    .line 78
    :goto_0
    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->len:I

    if-lt p2, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 79
    :cond_0
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    aget-byte v1, v1, v0

    int-to-byte v2, p1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public parse([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 39
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, v0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/JSONParserByteArray;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 55
    iget-object v0, p2, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->base:Lnet/minidev/json/writer/JsonReader;

    .line 56
    iput-object p1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    .line 57
    array-length p1, p1

    iput p1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->len:I

    .line 58
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserByteArray;->parse(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected read()V
    .locals 2

    .line 85
    iget v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 86
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    :goto_0
    return-void
.end method

.method protected readNoEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->len:I

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    return-void

    :cond_0
    const/16 v0, 0x1a

    .line 106
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    .line 107
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected readS()V
    .locals 2

    .line 95
    iget v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 96
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lnet/minidev/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserByteArray;->c:C

    :goto_0
    return-void
.end method
