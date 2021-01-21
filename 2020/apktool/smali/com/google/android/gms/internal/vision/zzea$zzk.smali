.class public final Lcom/google/android/gms/internal/vision/zzea$zzk;
.super Lcom/google/android/gms/internal/vision/zzgs;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzk;",
        "Lcom/google/android/gms/internal/vision/zzea$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;


# instance fields
.field private zzbf:I

.field private zznf:Ljava/lang/String;

.field private zznn:Ljava/lang/String;

.field private zzpp:J

.field private zzpq:Lcom/google/android/gms/internal/vision/zzea$zza;

.field private zzpr:Lcom/google/android/gms/internal/vision/zzea$zzg;

.field private zzps:Lcom/google/android/gms/internal/vision/zzea$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzk;-><init>()V

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    .line 52
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznn:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznf:Ljava/lang/String;

    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznn:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zza;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpq:Lcom/google/android/gms/internal/vision/zzea$zza;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzg;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpr:Lcom/google/android/gms/internal/vision/zzea$zzg;

    .line 22
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzp(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Lcom/google/android/gms/internal/vision/zzea$zza;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zza(Lcom/google/android/gms/internal/vision/zzea$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Lcom/google/android/gms/internal/vision/zzea$zzg;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zza(Lcom/google/android/gms/internal/vision/zzea$zzg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzk;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzs(Ljava/lang/String;)V

    return-void
.end method

.method public static zzdb()Lcom/google/android/gms/internal/vision/zzea$zzk$zza;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;

    return-object v0
.end method

.method static synthetic zzdc()Lcom/google/android/gms/internal/vision/zzea$zzk;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    return-object v0
.end method

.method private final zzp(J)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:J

    return-void
.end method

.method private final zzs(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzk;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 39
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 31
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    .line 28
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbf"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zznn"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzpp"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzpq"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zznf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzpr"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzps"

    aput-object p3, p1, p2

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpt:Lcom/google/android/gms/internal/vision/zzea$zzk;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1009\u0002\u0006\u1008\u0003\u0010\u1009\u0004\u0011\u1009\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 26
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
