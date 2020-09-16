.class public Lnet/minidev/json/writer/BeansMapper$Bean;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "BeansMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/BeansMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bean"
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
            "TT;>;"
        }
    .end annotation
.end field

.field final clz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/minidev/asm/Accessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/JsonReader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    .line 44
    iput-object p2, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->clz:Ljava/lang/Class;

    .line 45
    sget-object p1, Lnet/minidev/json/JSONUtil;->JSON_SMART_FIELD_FILTER:Lnet/minidev/json/JSONUtil$JsonSmartFieldFilter;

    invoke-static {p2, p1}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->ba:Lnet/minidev/asm/BeansAccess;

    .line 46
    iget-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {p1}, Lnet/minidev/asm/BeansAccess;->getMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->index:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0}, Lnet/minidev/asm/BeansAccess;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/minidev/asm/Accessor;

    .line 72
    invoke-virtual {p1}, Lnet/minidev/asm/Accessor;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0, p1, p2}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0, p1, p2, p3}, Lnet/minidev/asm/BeansAccess;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/asm/Accessor;

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->base:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v0}, Lnet/minidev/asm/Accessor;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find Array \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' field in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->clz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/asm/Accessor;

    if-eqz v0, :cond_0

    .line 88
    iget-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->base:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v0}, Lnet/minidev/asm/Accessor;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find Object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' field in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/minidev/json/writer/BeansMapper$Bean;->clz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
