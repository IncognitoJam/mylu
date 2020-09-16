.class final Lcom/google/android/gms/internal/vision/zzgs$zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzgk<",
        "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field final number:I

.field final zzwm:Lcom/google/android/gms/internal/vision/zzgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "*>;"
        }
    .end annotation
.end field

.field final zzwn:Lcom/google/android/gms/internal/vision/zzka;

.field final zzwo:Z

.field final zzwp:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzgv;ILcom/google/android/gms/internal/vision/zzka;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "*>;I",
            "Lcom/google/android/gms/internal/vision/zzka;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwm:Lcom/google/android/gms/internal/vision/zzgv;

    const p1, 0xc0b2142

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwo:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    iget p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzib;Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzib;
    .locals 0

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zza;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzih;Lcom/google/android/gms/internal/vision/zzih;)Lcom/google/android/gms/internal/vision/zzih;
    .locals 0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzag()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    return v0
.end method

.method public final zzfs()Lcom/google/android/gms/internal/vision/zzka;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    return-object v0
.end method

.method public final zzft()Lcom/google/android/gms/internal/vision/zzkd;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v0

    return-object v0
.end method

.method public final zzfu()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwo:Z

    return v0
.end method

.method public final zzfv()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    return v0
.end method
