.class public Lnet/minidev/json/reader/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/reader/JsonWriter$WriterByInterface;
    }
.end annotation


# static fields
.field public static final EnumWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAware;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final arrayWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final beansWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final beansWriterASM:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final toStringWriter:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;>;"
        }
    .end annotation
.end field

.field private writerInterfaces:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/minidev/json/reader/JsonWriter$WriterByInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$1;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$1;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 81
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$2;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$2;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 87
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$3;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$3;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 93
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$4;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$4;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 99
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$5;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$5;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 120
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$6;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$6;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->EnumWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 128
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$7;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$7;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 157
    new-instance v0, Lnet/minidev/json/reader/BeansWriterASM;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriterASM;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->beansWriterASM:Lnet/minidev/json/reader/JsonWriterI;

    .line 162
    new-instance v0, Lnet/minidev/json/reader/BeansWriter;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriter;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->beansWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 167
    new-instance v0, Lnet/minidev/json/reader/ArrayWriter;

    invoke-direct {v0}, Lnet/minidev/json/reader/ArrayWriter;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->arrayWriter:Lnet/minidev/json/reader/JsonWriterI;

    .line 172
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$8;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter$8;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->data:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    .line 24
    invoke-virtual {p0}, Lnet/minidev/json/reader/JsonWriter;->init()V

    return-void
.end method

.method public static writeJSONKV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 380
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p3, p0}, Lnet/minidev/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 384
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 385
    invoke-static {p0, p2, p3}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 386
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 388
    :goto_0
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->objectEndOfKey(Ljava/lang/Appendable;)V

    .line 389
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 390
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lnet/minidev/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 392
    :cond_2
    invoke-static {p1, p2, p3}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 393
    :goto_1
    invoke-virtual {p3, p2}, Lnet/minidev/json/JSONStyle;->objectElmStop(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public addInterfaceWriterFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public addInterfaceWriterLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public getWrite(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/minidev/json/reader/JsonWriterI;

    return-object p1
.end method

.method public getWriterByInterface(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/minidev/json/reader/JsonWriterI;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;

    .line 64
    iget-object v2, v1, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;->_interface:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object p1, v1, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;->_writer:Lnet/minidev/json/reader/JsonWriterI;

    return-object p1
.end method

.method public init()V
    .locals 6

    .line 179
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$9;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$9;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 183
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 179
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 185
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$10;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$10;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 192
    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    .line 185
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 194
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$11;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$11;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 200
    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    .line 194
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 202
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$12;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$12;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 209
    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    .line 202
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 211
    sget-object v0, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/Byte;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Short;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-class v3, Ljava/math/BigInteger;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-class v3, Ljava/math/BigDecimal;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 212
    sget-object v0, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 218
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$13;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$13;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 231
    const-class v3, [I

    aput-object v3, v2, v4

    .line 218
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 233
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$14;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$14;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 246
    const-class v3, [S

    aput-object v3, v2, v4

    .line 233
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 248
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$15;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$15;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 261
    const-class v3, [J

    aput-object v3, v2, v4

    .line 248
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 263
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$16;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$16;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 276
    const-class v3, [F

    aput-object v3, v2, v4

    .line 263
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 278
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$17;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$17;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 291
    const-class v3, [D

    aput-object v3, v2, v4

    .line 278
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 293
    new-instance v0, Lnet/minidev/json/reader/JsonWriter$18;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/JsonWriter$18;-><init>(Lnet/minidev/json/reader/JsonWriter;)V

    new-array v1, v1, [Ljava/lang/Class;

    .line 306
    const-class v2, [Z

    aput-object v2, v1, v4

    .line 293
    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 308
    const-class v0, Lnet/minidev/json/JSONStreamAwareEx;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 309
    const-class v0, Lnet/minidev/json/JSONStreamAware;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONStreamAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 310
    const-class v0, Lnet/minidev/json/JSONAwareEx;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 311
    const-class v0, Lnet/minidev/json/JSONAware;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONJSONAwareWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 312
    const-class v0, Ljava/util/Map;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONMapWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 313
    const-class v0, Ljava/lang/Iterable;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->JSONIterableWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 314
    const-class v0, Ljava/lang/Enum;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->EnumWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 315
    const-class v0, Ljava/lang/Number;

    sget-object v1, Lnet/minidev/json/reader/JsonWriter;->toStringWriter:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public varargs registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 371
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    .line 372
    iget-object v3, p0, Lnet/minidev/json/reader/JsonWriter;->data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public registerWriterInterface(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/JsonWriter;->registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public registerWriterInterfaceFirst(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public registerWriterInterfaceLast(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lnet/minidev/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/JsonWriter$WriterByInterface;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    .line 38
    invoke-virtual {p0, p1}, Lnet/minidev/json/reader/JsonWriter;->getWrite(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    if-nez v1, :cond_0

    .line 40
    new-instance v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    invoke-direct {v0}, Lnet/minidev/json/reader/BeansWriterASMRemap;-><init>()V

    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 43
    :cond_0
    check-cast v0, Lnet/minidev/json/reader/BeansWriterASMRemap;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/reader/BeansWriterASMRemap;->renameField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
