.class public Lnet/minidev/asm/Accessor;
.super Ljava/lang/Object;
.source "Accessor.java"


# instance fields
.field protected field:Ljava/lang/reflect/Field;

.field protected fieldName:Ljava/lang/String;

.field protected genericType:Ljava/lang/reflect/Type;

.field protected getter:Ljava/lang/reflect/Method;

.field protected index:I

.field protected setter:Ljava/lang/reflect/Method;

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lnet/minidev/asm/FieldFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Lnet/minidev/asm/FieldFilter;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/asm/Accessor;->fieldName:Ljava/lang/String;

    .line 141
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v1, v0, 0x88

    if-lez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 147
    iput-object p2, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    .line 149
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/minidev/asm/ASMUtil;->getSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 151
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/minidev/asm/ASMUtil;->getIsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/minidev/asm/ASMUtil;->getGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :catch_1
    iget-object v1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 166
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/minidev/asm/ASMUtil;->getGetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 171
    :cond_3
    :goto_1
    iget-object p1, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    return-void

    .line 174
    :cond_4
    iget-object p1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p3, p2, p1}, Lnet/minidev/asm/FieldFilter;->canUse(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 175
    iput-object v0, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    .line 177
    :cond_5
    iget-object p1, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    invoke-interface {p3, p2, p1}, Lnet/minidev/asm/FieldFilter;->canUse(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 178
    iput-object v0, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    .line 181
    :cond_6
    iget-object p1, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez p1, :cond_7

    iget-object p1, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    if-nez p1, :cond_7

    iget-object p1, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    if-nez p1, :cond_7

    return-void

    .line 184
    :cond_7
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/asm/Accessor;->type:Ljava/lang/Class;

    .line 185
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/asm/Accessor;->genericType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lnet/minidev/asm/Accessor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isEnum()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/minidev/asm/Accessor;->setter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lnet/minidev/asm/Accessor;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/minidev/asm/Accessor;->getter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
