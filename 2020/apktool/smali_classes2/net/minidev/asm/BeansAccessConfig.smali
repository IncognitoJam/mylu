.class public Lnet/minidev/asm/BeansAccessConfig;
.super Ljava/lang/Object;
.source "BeansAccessConfig.java"


# static fields
.field protected static classFiledNameMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static classMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/minidev/asm/BeansAccessConfig;->classMapper:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/minidev/asm/BeansAccessConfig;->classFiledNameMapper:Ljava/util/HashMap;

    .line 35
    const-class v0, Ljava/lang/Object;

    const-class v1, Lnet/minidev/asm/DefaultConverter;

    invoke-static {v0, v1}, Lnet/minidev/asm/BeansAccessConfig;->addTypeMapper(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 36
    const-class v0, Ljava/lang/Object;

    const-class v1, Lnet/minidev/asm/ConvertDate;

    invoke-static {v0, v1}, Lnet/minidev/asm/BeansAccessConfig;->addTypeMapper(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTypeMapper(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 64
    sget-object v0, Lnet/minidev/asm/BeansAccessConfig;->classMapper:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lnet/minidev/asm/BeansAccessConfig;->classMapper:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 68
    sget-object v2, Lnet/minidev/asm/BeansAccessConfig;->classMapper:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
