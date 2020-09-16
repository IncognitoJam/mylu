.class public final Lcom/google/android/gms/internal/vision/zzea$zzn;
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
    name = "zzn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzn;",
        "Lcom/google/android/gms/internal/vision/zzea$zzn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;


# instance fields
.field private zzbf:I

.field private zzpy:Lcom/google/android/gms/internal/vision/zzea$zzd;

.field private zzpz:I

.field private zzqa:Lcom/google/android/gms/internal/vision/zzea$zzh;

.field private zzqb:Lcom/google/android/gms/internal/vision/zzea$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzn;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method private final setId(I)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzpz:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzd;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzpy:Lcom/google/android/gms/internal/vision/zzea$zzd;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzh;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqa:Lcom/google/android/gms/internal/vision/zzea$zzh;

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzn;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzn;->setId(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzn;Lcom/google/android/gms/internal/vision/zzea$zzd;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzn;->zza(Lcom/google/android/gms/internal/vision/zzea$zzd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzn;Lcom/google/android/gms/internal/vision/zzea$zzh;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzn;->zza(Lcom/google/android/gms/internal/vision/zzea$zzh;)V

    return-void
.end method

.method public static zzdg()Lcom/google/android/gms/internal/vision/zzea$zzn$zza;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzn$zza;

    return-object v0
.end method

.method static synthetic zzdh()Lcom/google/android/gms/internal/vision/zzea$zzn;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzn;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbf"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzpy"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzpz"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzqa"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzqb"

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/vision/zzea$zzn;->zzqc:Lcom/google/android/gms/internal/vision/zzea$zzn;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0011\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1004\u0001\u0010\u1009\u0002\u0011\u1009\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzea$zzn;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzn$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzn;-><init>()V

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
