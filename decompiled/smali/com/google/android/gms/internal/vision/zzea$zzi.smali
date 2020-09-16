.class public final Lcom/google/android/gms/internal/vision/zzea$zzi;
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
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzi;",
        "Lcom/google/android/gms/internal/vision/zzea$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;


# instance fields
.field private zzbf:I

.field private zzpb:Lcom/google/android/gms/internal/vision/zzea$zzj;

.field private zzpc:Lcom/google/android/gms/internal/vision/zzea$zzl;

.field private zzpd:Lcom/google/android/gms/internal/vision/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "Lcom/google/android/gms/internal/vision/zzea$zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzi;-><init>()V

    .line 44
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    .line 45
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzgh()Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzf;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzcw()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzgz;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzi;Lcom/google/android/gms/internal/vision/zzea$zzf;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zza(Lcom/google/android/gms/internal/vision/zzea$zzf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzi;Lcom/google/android/gms/internal/vision/zzea$zzj;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzb(Lcom/google/android/gms/internal/vision/zzea$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzi;Ljava/lang/Iterable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzf(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzea$zzj;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpb:Lcom/google/android/gms/internal/vision/zzea$zzj;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzbf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzbf:I

    return-void
.end method

.method private final zzcw()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzgz;->zzdo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzgz;)Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    :cond_0
    return-void
.end method

.method public static zzcx()Lcom/google/android/gms/internal/vision/zzea$zzi$zza;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzi$zza;

    return-object v0
.end method

.method static synthetic zzcy()Lcom/google/android/gms/internal/vision/zzea$zzi;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    return-object v0
.end method

.method private final zzf(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/vision/zzea$zzf;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzcw()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpd:Lcom/google/android/gms/internal/vision/zzgz;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzet;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 36
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 29
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzi;

    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 33
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 34
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

    .line 26
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbf"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzpb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzpc"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzpd"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/vision/zzea$zzf;

    aput-object p3, p1, p2

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/vision/zzea$zzi;->zzpe:Lcom/google/android/gms/internal/vision/zzea$zzi;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzea$zzi;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzi$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzi;-><init>()V

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
