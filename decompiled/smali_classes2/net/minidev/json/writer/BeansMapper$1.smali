.class Lnet/minidev/json/writer/BeansMapper$1;
.super Lnet/minidev/json/writer/ArraysMapper;
.source "BeansMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/minidev/json/writer/BeansMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/ArraysMapper<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/ArraysMapper;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/BeansMapper$1;->convert(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/util/Date;
    .locals 0

    .line 149
    invoke-static {p1}, Lnet/minidev/asm/ConvertDate;->convertToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
