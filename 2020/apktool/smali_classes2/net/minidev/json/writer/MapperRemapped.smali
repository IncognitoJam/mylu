.class public Lnet/minidev/json/writer/MapperRemapped;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "MapperRemapped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/minidev/json/writer/JsonReaderI<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private parent:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rename:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    invoke-direct {p0, v0}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    .line 23
    iput-object p1, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/minidev/json/writer/MapperRemapped;->rename:Ljava/util/Map;

    return-void
.end method

.method private rename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->rename:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0}, Lnet/minidev/json/writer/JsonReaderI;->createObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/MapperRemapped;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/JsonReaderI;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/MapperRemapped;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/writer/JsonReaderI;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->rename:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/MapperRemapped;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p1, p2, p3}, Lnet/minidev/json/writer/JsonReaderI;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/MapperRemapped;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/JsonReaderI;->startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/MapperRemapped;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lnet/minidev/json/writer/MapperRemapped;->parent:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/JsonReaderI;->startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1
.end method
