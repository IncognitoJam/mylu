.class final Lcom/google/android/gms/internal/vision/zzjl;
.super Lcom/google/android/gms/internal/vision/zzjj;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjj<",
        "Lcom/google/android/gms/internal/vision/zzjm;",
        "Lcom/google/android/gms/internal/vision/zzjm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjj;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjm;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/vision/zzgs;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwj:Lcom/google/android/gms/internal/vision/zzjm;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    shl-int/lit8 p2, p2, 0x3

    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzfh;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    check-cast p3, Lcom/google/android/gms/internal/vision/zzjm;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzis;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;II)V
    .locals 0

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzjm;->zza(Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjm;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzjl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjm;)V

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjm;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzjl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjm;)V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzjm;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzjm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzjm;->zza(Lcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzjm;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object p1

    return-object p1
.end method

.method final zzh(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs;->zzwj:Lcom/google/android/gms/internal/vision/zzjm;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzdp()V

    return-void
.end method

.method final synthetic zzif()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzih()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzdp()V

    return-object p1
.end method

.method final synthetic zzs(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzgf()I

    move-result p1

    return p1
.end method

.method final synthetic zzw(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs;->zzwj:Lcom/google/android/gms/internal/vision/zzjm;

    return-object p1
.end method

.method final synthetic zzx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs;->zzwj:Lcom/google/android/gms/internal/vision/zzjm;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzih()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjm;)V

    :cond_0
    return-object v0
.end method

.method final synthetic zzy(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjm;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzii()I

    move-result p1

    return p1
.end method
