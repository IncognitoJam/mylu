.class public final Lcom/google/android/gms/internal/vision/zzea$zzm;
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
    name = "zzm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzm;",
        "Lcom/google/android/gms/internal/vision/zzea$zzm$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;


# instance fields
.field private zzbf:I

.field private zzpv:I

.field private zzpw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzm;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method private final setX(I)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbf:I

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpv:I

    return-void
.end method

.method private final setY(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbf:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzm;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzm;->setX(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzm;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzm;->setY(I)V

    return-void
.end method

.method public static zzde()Lcom/google/android/gms/internal/vision/zzea$zzm$zza;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzm$zza;

    return-object v0
.end method

.method static synthetic zzdf()Lcom/google/android/gms/internal/vision/zzea$zzm;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzm;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbf"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzpv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzpw"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/vision/zzea$zzm;->zzpx:Lcom/google/android/gms/internal/vision/zzea$zzm;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzea$zzm;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzm$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzm$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzm;-><init>()V

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
