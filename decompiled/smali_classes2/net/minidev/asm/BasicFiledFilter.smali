.class public Lnet/minidev/asm/BasicFiledFilter;
.super Ljava/lang/Object;
.source "BasicFiledFilter.java"

# interfaces
.implements Lnet/minidev/asm/FieldFilter;


# static fields
.field public static final SINGLETON:Lnet/minidev/asm/BasicFiledFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lnet/minidev/asm/BasicFiledFilter;

    invoke-direct {v0}, Lnet/minidev/asm/BasicFiledFilter;-><init>()V

    sput-object v0, Lnet/minidev/asm/BasicFiledFilter;->SINGLETON:Lnet/minidev/asm/BasicFiledFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canUse(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canUse(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canWrite(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
