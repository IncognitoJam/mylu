.class public Lnet/minidev/json/writer/CollectionMapper$ListType;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListType"
.end annotation

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
.field final ba:Lnet/minidev/asm/BeansAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/asm/BeansAccess<",
            "*>;"
        }
    .end annotation
.end field

.field final instance:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field subMapper:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/ParameterizedType;

.field final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 173
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    .line 174
    iput-object p2, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->type:Ljava/lang/reflect/ParameterizedType;

    .line 175
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->rawClass:Ljava/lang/Class;

    .line 176
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->rawClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    const-class p1, Lnet/minidev/json/JSONArray;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->instance:Ljava/lang/Class;

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->rawClass:Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->instance:Ljava/lang/Class;

    .line 180
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->instance:Ljava/lang/Class;

    sget-object v0, Lnet/minidev/json/JSONUtil;->JSON_SMART_FIELD_FILTER:Lnet/minidev/json/JSONUtil$JsonSmartFieldFilter;

    invoke-static {p1, v0}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->ba:Lnet/minidev/asm/BeansAccess;

    .line 181
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->valueType:Ljava/lang/reflect/Type;

    .line 182
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->valueType:Ljava/lang/reflect/Type;

    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 183
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->valueClass:Ljava/lang/Class;

    goto :goto_1

    .line 185
    :cond_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->valueClass:Ljava/lang/Class;

    :goto_1
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 210
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->valueClass:Ljava/lang/Class;

    invoke-static {p2, v0}, Lnet/minidev/json/JSONUtil;->convertToX(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 190
    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0}, Lnet/minidev/asm/BeansAccess;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 195
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->type:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    .line 197
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 202
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->type:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    .line 204
    :cond_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListType;->subMapper:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method
