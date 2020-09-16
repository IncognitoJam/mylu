.class public abstract Lnet/minidev/json/writer/BeansMapper;
.super Lnet/minidev/json/writer/JsonReaderI;
.source "BeansMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/writer/BeansMapper$Bean;,
        Lnet/minidev/json/writer/BeansMapper$BeanNoConv;
    }
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


# static fields
.field public static MAPPER_DATE:Lnet/minidev/json/writer/JsonReaderI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/JsonReaderI<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    new-instance v0, Lnet/minidev/json/writer/BeansMapper$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/writer/BeansMapper$1;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    sput-object v0, Lnet/minidev/json/writer/BeansMapper;->MAPPER_DATE:Lnet/minidev/json/writer/JsonReaderI;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/JsonReader;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/JsonReaderI;-><init>(Lnet/minidev/json/writer/JsonReader;)V

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method
