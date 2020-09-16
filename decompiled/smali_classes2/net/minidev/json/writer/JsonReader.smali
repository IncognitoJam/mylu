.class public Lnet/minidev/json/writer/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# instance fields
.field public DEFAULT:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lnet/minidev/json/writer/BeansMapper;->MAPPER_DATE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [I

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Integer;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [S

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Short;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_INT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [J

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_LONG:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Long;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_LONG:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [B

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Byte;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BYTE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [C

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Character;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_CHAR:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [F

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Float;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_FLOAT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [D

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Double;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_DOUBLE:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Z

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_PRIM_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, [Ljava/lang/Boolean;

    sget-object v2, Lnet/minidev/json/writer/ArraysMapper;->MAPPER_BOOL:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lnet/minidev/json/writer/DefaultMapper;

    invoke-direct {v0, p0}, Lnet/minidev/json/writer/DefaultMapper;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    iput-object v0, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    .line 66
    new-instance v0, Lnet/minidev/json/writer/DefaultMapperOrdered;

    invoke-direct {v0, p0}, Lnet/minidev/json/writer/DefaultMapperOrdered;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    iput-object v0, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    .line 68
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lnet/minidev/json/JSONAwareEx;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lnet/minidev/json/JSONAware;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lnet/minidev/json/JSONArray;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lnet/minidev/json/JSONObject;

    iget-object v2, p0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/JsonReaderI;

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 119
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v0, Lnet/minidev/json/writer/DefaultMapperCollection;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/DefaultMapperCollection;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_0

    .line 121
    :cond_1
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    new-instance v0, Lnet/minidev/json/writer/DefaultMapperCollection;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/DefaultMapperCollection;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 124
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 129
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    new-instance v0, Lnet/minidev/json/writer/ArraysMapper$GenericMapper;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/ArraysMapper$GenericMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 131
    :cond_4
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$ListClass;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$ListClass;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 133
    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$MapClass;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$MapClass;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    goto :goto_1

    .line 137
    :cond_6
    new-instance v0, Lnet/minidev/json/writer/BeansMapper$Bean;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/BeansMapper$Bean;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V

    .line 138
    :goto_1
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMapper(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/JsonReaderI;

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 148
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$ListType;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$ListType;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_0

    .line 150
    :cond_1
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v0, Lnet/minidev/json/writer/CollectionMapper$MapType;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/CollectionMapper$MapType;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/reflect/ParameterizedType;)V

    .line 152
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;"
        }
    .end annotation

    .line 98
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1
.end method

.method public registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lnet/minidev/json/writer/JsonReader;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object v0

    .line 85
    instance-of v1, v0, Lnet/minidev/json/writer/MapperRemapped;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lnet/minidev/json/writer/MapperRemapped;

    invoke-direct {v1, v0}, Lnet/minidev/json/writer/MapperRemapped;-><init>(Lnet/minidev/json/writer/JsonReaderI;)V

    .line 87
    invoke-virtual {p0, p1, v1}, Lnet/minidev/json/writer/JsonReader;->registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V

    move-object v0, v1

    .line 89
    :cond_0
    check-cast v0, Lnet/minidev/json/writer/MapperRemapped;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/writer/MapperRemapped;->renameField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
