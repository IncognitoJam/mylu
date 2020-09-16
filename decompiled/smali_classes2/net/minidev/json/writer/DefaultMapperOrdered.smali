.class public Lnet/minidev/json/writer/DefaultMapperOrdered;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "DefaultMapperOrdered.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/JsonReaderI<",
        "Lnet/minidev/json/JSONAwareEx;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lnet/minidev/json/JSONArray;

    invoke-virtual {p1, p2}, Lnet/minidev/json/JSONArray;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 56
    new-instance v0, Lnet/minidev/json/JSONArray;

    invoke-direct {v0}, Lnet/minidev/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lnet/minidev/json/writer/DefaultMapperOrdered;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object p1, p1, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lnet/minidev/json/writer/DefaultMapperOrdered;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object p1, p1, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method
