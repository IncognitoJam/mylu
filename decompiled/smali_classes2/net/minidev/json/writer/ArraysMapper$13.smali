.class Lnet/minidev/json/writer/ArraysMapper$13;
.super Lnet/minidev/json/writer/ArraysMapper;
.source "ArraysMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/ArraysMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/ArraysMapper<",
        "[D>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/ArraysMapper;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/ArraysMapper$13;->convert(Ljava/lang/Object;)[D

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)[D
    .locals 6

    .line 254
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 256
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0
.end method
