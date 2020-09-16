.class public Lnet/minidev/json/reader/BeansWriterASMRemap;
.super Ljava/lang/Object;
.source "BeansWriterASMRemap.java"

# interfaces
.implements Lnet/minidev/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/minidev/json/reader/JsonWriterI<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/BeansWriterASMRemap;->rename:Ljava/util/Map;

    return-void
.end method

.method private rename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/minidev/json/reader/BeansWriterASMRemap;->rename:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public renameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/minidev/json/reader/BeansWriterASMRemap;->rename:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
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

    .line 29
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 32
    sget-object v1, Lnet/minidev/json/JSONUtil;->JSON_SMART_FIELD_FILTER:Lnet/minidev/json/JSONUtil$JsonSmartFieldFilter;

    invoke-static {v0, v1}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object v0

    const/16 v1, 0x7b

    .line 33
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 34
    invoke-virtual {v0}, Lnet/minidev/asm/BeansAccess;->getAccessors()[Lnet/minidev/asm/Accessor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    const/16 p1, 0x7d

    .line 47
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    .line 34
    :cond_0
    aget-object v5, v1, v3

    .line 36
    invoke-virtual {v5}, Lnet/minidev/asm/Accessor;->getIndex()I

    move-result v6

    invoke-virtual {v0, p1, v6}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 37
    invoke-virtual {p3}, Lnet/minidev/json/JSONStyle;->ignoreNull()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    const/16 v7, 0x2c

    .line 40
    invoke-interface {p2, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 43
    :goto_1
    invoke-virtual {v5}, Lnet/minidev/asm/Accessor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-direct {p0, v5}, Lnet/minidev/json/reader/BeansWriterASMRemap;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {v5, v6, p2, p3}, Lnet/minidev/json/JSONObject;->writeJSONKV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    throw p1
.end method
