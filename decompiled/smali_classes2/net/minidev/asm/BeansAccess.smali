.class public abstract Lnet/minidev/asm/BeansAccess;
.super Ljava/lang/Object;
.source "BeansAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/asm/BeansAccess<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private accs:[Lnet/minidev/asm/Accessor;

.field private map:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/minidev/asm/BeansAccess;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAlias(Lnet/minidev/asm/BeansAccess;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/asm/BeansAccess<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    iget-object p0, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    .line 148
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    iget-object v2, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/minidev/asm/Accessor;

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static get(Ljava/lang/Class;)Lnet/minidev/asm/BeansAccess;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lnet/minidev/asm/BeansAccess<",
            "TP;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)Lnet/minidev/asm/BeansAccess;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lnet/minidev/asm/FieldFilter;",
            ")",
            "Lnet/minidev/asm/BeansAccess<",
            "TP;>;"
        }
    .end annotation

    .line 79
    sget-object v0, Lnet/minidev/asm/BeansAccess;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/asm/BeansAccess;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lnet/minidev/asm/ASMUtil;->getAccessors(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)[Lnet/minidev/asm/Accessor;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util."

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AccAccess"

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "net.minidev.asm."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    new-instance v1, Lnet/minidev/asm/DynamicClassLoader;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/minidev/asm/DynamicClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    const/4 v2, 0x0

    .line 100
    :try_start_0
    invoke-virtual {v1, v0}, Lnet/minidev/asm/DynamicClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    invoke-static {p0}, Lnet/minidev/asm/BeansAccess;->getParents(Ljava/lang/Class;)Ljava/util/LinkedList;

    move-result-object v3

    if-nez v2, :cond_3

    .line 108
    new-instance v4, Lnet/minidev/asm/BeansAccessBuilder;

    invoke-direct {v4, p0, p1, v1}, Lnet/minidev/asm/BeansAccessBuilder;-><init>(Ljava/lang/Class;[Lnet/minidev/asm/Accessor;Lnet/minidev/asm/DynamicClassLoader;)V

    .line 109
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {v4}, Lnet/minidev/asm/BeansAccessBuilder;->bulid()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    .line 109
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 110
    sget-object v5, Lnet/minidev/asm/BeansAccessConfig;->classMapper:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v4, v2}, Lnet/minidev/asm/BeansAccessBuilder;->addConversion(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 115
    :cond_3
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/minidev/asm/BeansAccess;

    .line 116
    invoke-virtual {v1, p1}, Lnet/minidev/asm/BeansAccess;->setAccessor([Lnet/minidev/asm/Accessor;)V

    .line 117
    sget-object p1, Lnet/minidev/asm/BeansAccess;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 120
    sget-object v2, Lnet/minidev/asm/BeansAccessConfig;->classFiledNameMapper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v1, p1}, Lnet/minidev/asm/BeansAccess;->addAlias(Lnet/minidev/asm/BeansAccess;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error constructing accessor class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getParents(Ljava/lang/Class;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_2

    .line 129
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    .line 133
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_1
    aget-object v4, v1, v3

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_2
    :goto_2
    const-class p0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p2}, Lnet/minidev/asm/BeansAccess;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/minidev/asm/BeansAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAccessors()[Lnet/minidev/asm/Accessor;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/minidev/asm/BeansAccess;->accs:[Lnet/minidev/asm/Accessor;

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1

    .line 192
    iget-object v0, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/minidev/asm/Accessor;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 195
    :cond_0
    iget p1, p1, Lnet/minidev/asm/Accessor;->index:I

    return p1
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/minidev/asm/Accessor;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p2}, Lnet/minidev/asm/BeansAccess;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, p1, v0, p3}, Lnet/minidev/asm/BeansAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 177
    :cond_0
    new-instance v0, Lnet/minidev/asm/ex/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " in "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to put value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/minidev/asm/ex/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setAccessor([Lnet/minidev/asm/Accessor;)V
    .locals 6

    .line 35
    iput-object p1, p0, Lnet/minidev/asm/BeansAccess;->accs:[Lnet/minidev/asm/Accessor;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    .line 38
    iput v2, v3, Lnet/minidev/asm/Accessor;->index:I

    .line 39
    iget-object v2, p0, Lnet/minidev/asm/BeansAccess;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Lnet/minidev/asm/Accessor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0
.end method
