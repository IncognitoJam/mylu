.class Lnet/minidev/json/parser/JSONParserReader;
.super Lnet/minidev/json/parser/JSONParserStream;
.source "JSONParserReader.java"


# instance fields
.field private in:Ljava/io/Reader;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/JSONParserStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 44
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, v0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 52
    iget-object v0, p2, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserReader;->base:Lnet/minidev/json/writer/JsonReader;

    .line 54
    iput-object p1, p0, Lnet/minidev/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    .line 55
    invoke-super {p0, p2}, Lnet/minidev/json/parser/JSONParserStream;->parse(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected read()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 68
    :goto_0
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserReader;->c:C

    .line 69
    iget v0, p0, Lnet/minidev/json/parser/JSONParserReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserReader;->pos:I

    return-void
.end method

.method protected readNoEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 88
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserReader;->c:C

    return-void

    .line 87
    :cond_0
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected readS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserReader;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserReader;->c:C

    invoke-virtual {v0, v1}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    .line 75
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 77
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserReader;->c:C

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 79
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserReader;->c:C

    .line 80
    iget v0, p0, Lnet/minidev/json/parser/JSONParserReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserReader;->pos:I

    :goto_0
    return-void
.end method
