.class public final Lcom/google/android/gms/internal/vision/zzea$zzj;
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
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzj$zza;,
        Lcom/google/android/gms/internal/vision/zzea$zzj$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzj;",
        "Lcom/google/android/gms/internal/vision/zzea$zzj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;


# instance fields
.field private zzbf:I

.field private zzmt:I

.field private zzpf:J

.field private zzpg:J

.field private zzph:J

.field private zzpi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzj;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzj;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzl(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzj;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzm(J)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/vision/zzea$zzj;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzn(J)V

    return-void
.end method

.method public static zzcz()Lcom/google/android/gms/internal/vision/zzea$zzj$zza;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzj$zza;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/vision/zzea$zzj;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzo(J)V

    return-void
.end method

.method static synthetic zzda()Lcom/google/android/gms/internal/vision/zzea$zzj;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    return-object v0
.end method

.method private final zzl(J)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpf:J

    return-void
.end method

.method private final zzm(J)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpg:J

    return-void
.end method

.method private final zzn(J)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzph:J

    return-void
.end method

.method private final zzo(J)V
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbf:I

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpi:J

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzj;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbf"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzmt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzj$zzb;->zzah()Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzpf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzpg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzpi"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzph"

    aput-object p3, p1, p2

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/vision/zzea$zzj;->zzpj:Lcom/google/android/gms/internal/vision/zzea$zzj;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0004\u0005\u1002\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzea$zzj;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzj$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzj$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzj;-><init>()V

    return-object p1

    nop

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
