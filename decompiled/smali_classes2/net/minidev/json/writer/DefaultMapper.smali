.class public Lnet/minidev/json/writer/DefaultMapper;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "DefaultMapper.java"


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


# direct methods
.method protected constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lnet/minidev/json/JSONArray;

    invoke-virtual {p1, p2}, Lnet/minidev/json/JSONArray;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 50
    new-instance v0, Lnet/minidev/json/JSONArray;

    invoke-direct {v0}, Lnet/minidev/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 45
    new-instance v0, Lnet/minidev/json/JSONObject;

    invoke-direct {v0}, Lnet/minidev/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lnet/minidev/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lnet/minidev/json/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 40
    iget-object p1, p0, Lnet/minidev/json/writer/DefaultMapper;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object p1, p1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

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

    .line 35
    iget-object p1, p0, Lnet/minidev/json/writer/DefaultMapper;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object p1, p1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method
