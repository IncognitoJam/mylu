.class public abstract Lcom/google/android/gms/internal/vision/zzgs;
.super Lcom/google/android/gms/internal/vision/zzet;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzgs$zzc;,
        Lcom/google/android/gms/internal/vision/zzgs$zzg;,
        Lcom/google/android/gms/internal/vision/zzgs$zzd;,
        Lcom/google/android/gms/internal/vision/zzgs$zzb;,
        Lcom/google/android/gms/internal/vision/zzgs$zze;,
        Lcom/google/android/gms/internal/vision/zzgs$zza;,
        Lcom/google/android/gms/internal/vision/zzgs$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzet<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzwl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzwj:Lcom/google/android/gms/internal/vision/zzjm;

.field private zzwk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgs;->zzwl:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzet;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwj:Lcom/google/android/gms/internal/vision/zzjm;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzge;)Lcom/google/android/gms/internal/vision/zzgs$zzg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/vision/zzgs$zze<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/vision/zzgs$zzb<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzge<",
            "TMessageType;TT;>;)",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 61
    check-cast p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzgv;ILcom/google/android/gms/internal/vision/zzka;ZLjava/lang/Class;)Lcom/google/android/gms/internal/vision/zzgs$zzg;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/vision/zzic;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/android/gms/internal/vision/zzic;",
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "*>;I",
            "Lcom/google/android/gms/internal/vision/zzka;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 51
    new-instance p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    new-instance p3, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    const/4 v4, 0x0

    const v5, 0xc0b2142

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzgs$zzd;-><init>(Lcom/google/android/gms/internal/vision/zzgv;ILcom/google/android/gms/internal/vision/zzka;ZZ)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzgs$zzg;-><init>(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzgs$zzd;Ljava/lang/Class;)V

    return-object p2
.end method

.method protected static zza(Lcom/google/android/gms/internal/vision/zzgs;[B)Lcom/google/android/gms/internal/vision/zzgs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 108
    array-length v0, p1

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgd;->zzfl()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzgs;[BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzgs;->zzb(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzgs;[BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 83
    sget p2, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwu:I

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    check-cast p0, Lcom/google/android/gms/internal/vision/zzgs;

    .line 86
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p2

    const/4 v3, 0x0

    .line 87
    new-instance v5, Lcom/google/android/gms/internal/vision/zzfb;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/vision/zzfb;-><init>(Lcom/google/android/gms/internal/vision/zzgd;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzfb;)V

    .line 88
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzir;->zzh(Ljava/lang/Object;)V

    .line 89
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzro:I

    if-nez p1, :cond_0

    return-object p0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzhc;->zzg(Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/vision/zzhc;

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzhc;

    throw p0

    .line 95
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/vision/zzhc;->zzg(Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/vision/zzgs;[BLcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 111
    array-length v0, p1

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzgs;[BIILcom/google/android/gms/internal/vision/zzgd;)Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzgs;->zzb(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/vision/zzgz;)Lcom/google/android/gms/internal/vision/zzgz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "TE;>;"
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzgz;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 82
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/vision/zzgz;->zzah(I)Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzip;-><init>(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 56
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 58
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 59
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 57
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgs;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/vision/zzgs;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 62
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwr:I

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzir;->zzu(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 72
    sget p1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzws:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 75
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzge;)Lcom/google/android/gms/internal/vision/zzgs$zzg;
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzge;)Lcom/google/android/gms/internal/vision/zzgs$zzg;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Lcom/google/android/gms/internal/vision/zzic;)V

    .line 104
    new-instance v1, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjk;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/vision/zzhc;->zzg(Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzgs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgs;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgs;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzjp;->zzh(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    .line 39
    sget v1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzww:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    if-eqz v0, :cond_1

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwl:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzgg()Lcom/google/android/gms/internal/vision/zzgx;
    .locals 1

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgu;->zzgl()Lcom/google/android/gms/internal/vision/zzgu;

    move-result-object v0

    return-object v0
.end method

.method protected static zzgh()Lcom/google/android/gms/internal/vision/zzgz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "TE;>;"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/vision/zziq;->zzhr()Lcom/google/android/gms/internal/vision/zziq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzir;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzro:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzro:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzir;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzro:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzro:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzgs;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/zzid;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzae(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzga;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzgc;->zza(Lcom/google/android/gms/internal/vision/zzga;)Lcom/google/android/gms/internal/vision/zzgc;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void
.end method

.method final zzdl()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    return v0
.end method

.method public final synthetic zzgd()Lcom/google/android/gms/internal/vision/zzic;
    .locals 2

    .line 127
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzww:I

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    return-object v0
.end method

.method protected final zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/vision/zzgs<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/vision/zzgs$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwv:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zza;

    return-object v0
.end method

.method public final zzgf()I
    .locals 2

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzir;->zzs(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    .line 29
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwk:I

    return v0
.end method

.method public final synthetic zzgi()Lcom/google/android/gms/internal/vision/zzib;
    .locals 2

    .line 115
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwv:I

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zza;

    .line 118
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    return-object v0
.end method

.method public final synthetic zzgj()Lcom/google/android/gms/internal/vision/zzib;
    .locals 2

    .line 122
    sget v0, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwv:I

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zza;

    return-object v0
.end method
