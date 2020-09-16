.class public Lnet/minidev/json/writer/CollectionMapper$ListClass;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListClass"
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

.field subMapper:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
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
            "*>;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    .line 223
    iput-object p2, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->type:Ljava/lang/Class;

    .line 224
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    const-class p1, Lnet/minidev/json/JSONArray;

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->instance:Ljava/lang/Class;

    goto :goto_0

    .line 227
    :cond_0
    iput-object p2, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->instance:Ljava/lang/Class;

    .line 228
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->instance:Ljava/lang/Class;

    sget-object p2, Lnet/minidev/json/JSONUtil;->JSON_SMART_FIELD_FILTER:Lnet/minidev/json/JSONUtil$JsonSmartFieldFilter;

    invoke-static {p1, p2}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->ba:Lnet/minidev/asm/BeansAccess;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 233
    iget-object v0, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->ba:Lnet/minidev/asm/BeansAccess;

    invoke-virtual {v0}, Lnet/minidev/asm/BeansAccess;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;"
        }
    .end annotation

    .line 238
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->base:Lnet/minidev/json/writer/JsonReader;

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
            "*>;"
        }
    .end annotation

    .line 243
    iget-object p1, p0, Lnet/minidev/json/writer/CollectionMapper$ListClass;->base:Lnet/minidev/json/writer/JsonReader;

    iget-object p1, p1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    return-object p1
.end method
