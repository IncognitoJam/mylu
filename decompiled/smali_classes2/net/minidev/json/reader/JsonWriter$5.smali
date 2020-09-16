.class Lnet/minidev/json/reader/JsonWriter$5;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Lnet/minidev/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/reader/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/minidev/json/reader/JsonWriterI<",
        "Ljava/lang/Iterable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>(TE;",
            "Ljava/lang/Appendable;",
            "Lnet/minidev/json/JSONStyle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->arrayStart(Ljava/lang/Appendable;)V

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->arrayStop(Ljava/lang/Appendable;)V

    return-void

    .line 103
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->arrayfirstObject(Ljava/lang/Appendable;)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->arrayNextElm(Ljava/lang/Appendable;)V

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "null"

    .line 111
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v1, p2, p3}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 114
    :goto_2
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->arrayObjectEnd(Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public bridge synthetic writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lnet/minidev/json/reader/JsonWriter$5;->writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    return-void
.end method
