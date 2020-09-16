.class public Lnet/minidev/json/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final ACCEPT_LEADING_ZERO:I = 0x20

.field public static final ACCEPT_NAN:I = 0x4

.field public static final ACCEPT_NON_QUOTE:I = 0x2

.field public static final ACCEPT_SIMPLE_QUOTE:I = 0x1

.field public static final ACCEPT_TAILLING_DATA:I = 0x100

.field public static final ACCEPT_TAILLING_SPACE:I = 0x200

.field public static final ACCEPT_USELESS_COMMA:I = 0x40

.field public static DEFAULT_PERMISSIVE_MODE:I = 0x0

.field public static final IGNORE_CONTROL_CHAR:I = 0x8

.field public static final MODE_JSON_SIMPLE:I = 0x7c0

.field public static final MODE_PERMISSIVE:I = -0x1

.field public static final MODE_RFC4627:I = 0x290

.field public static final MODE_STRICTEST:I = 0x490

.field public static final REJECT_127_CHAR:I = 0x400

.field public static final USE_HI_PRECISION_FLOAT:I = 0x80

.field public static final USE_INTEGER_STORAGE:I = 0x10


# instance fields
.field private mode:I

.field private pBinStream:Lnet/minidev/json/parser/JSONParserInputStream;

.field private pBytes:Lnet/minidev/json/parser/JSONParserByteArray;

.field private pStream:Lnet/minidev/json/parser/JSONParserReader;

.field private pString:Lnet/minidev/json/parser/JSONParserString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JSON_SMART_SIMPLE"

    .line 122
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    sget v0, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    iput v0, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    return-void
.end method

.method private getPBinStream()Lnet/minidev/json/parser/JSONParserInputStream;
    .locals 2

    .line 147
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBinStream:Lnet/minidev/json/parser/JSONParserInputStream;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lnet/minidev/json/parser/JSONParserInputStream;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParserInputStream;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBinStream:Lnet/minidev/json/parser/JSONParserInputStream;

    .line 149
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBinStream:Lnet/minidev/json/parser/JSONParserInputStream;

    return-object v0
.end method

.method private getPBytes()Lnet/minidev/json/parser/JSONParserByteArray;
    .locals 2

    .line 169
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBytes:Lnet/minidev/json/parser/JSONParserByteArray;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lnet/minidev/json/parser/JSONParserByteArray;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParserByteArray;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBytes:Lnet/minidev/json/parser/JSONParserByteArray;

    .line 171
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pBytes:Lnet/minidev/json/parser/JSONParserByteArray;

    return-object v0
.end method

.method private getPStream()Lnet/minidev/json/parser/JSONParserReader;
    .locals 2

    .line 136
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pStream:Lnet/minidev/json/parser/JSONParserReader;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lnet/minidev/json/parser/JSONParserReader;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParserReader;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pStream:Lnet/minidev/json/parser/JSONParserReader;

    .line 138
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pStream:Lnet/minidev/json/parser/JSONParserReader;

    return-object v0
.end method

.method private getPString()Lnet/minidev/json/parser/JSONParserString;
    .locals 2

    .line 158
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pString:Lnet/minidev/json/parser/JSONParserString;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lnet/minidev/json/parser/JSONParserString;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->mode:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParserString;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pString:Lnet/minidev/json/parser/JSONParserString;

    .line 160
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->pString:Lnet/minidev/json/parser/JSONParserString;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBinStream()Lnet/minidev/json/parser/JSONParserInputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBinStream()Lnet/minidev/json/parser/JSONParserInputStream;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBinStream()Lnet/minidev/json/parser/JSONParserInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPStream()Lnet/minidev/json/parser/JSONParserReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/JSONParserReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPStream()Lnet/minidev/json/parser/JSONParserReader;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

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

    .line 247
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPStream()Lnet/minidev/json/parser/JSONParserReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPString()Lnet/minidev/json/parser/JSONParserString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/JSONParserString;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPString()Lnet/minidev/json/parser/JSONParserString;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserString;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPString()Lnet/minidev/json/parser/JSONParserString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserString;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBytes()Lnet/minidev/json/parser/JSONParserByteArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/JSONParserByteArray;->parse([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBytes()Lnet/minidev/json/parser/JSONParserByteArray;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserByteArray;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

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

    .line 198
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->getPBytes()Lnet/minidev/json/parser/JSONParserByteArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/JSONParserByteArray;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
