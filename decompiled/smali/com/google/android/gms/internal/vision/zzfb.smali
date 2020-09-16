.class final Lcom/google/android/gms/internal/vision/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# instance fields
.field public final zzcn:Lcom/google/android/gms/internal/vision/zzgd;

.field public zzru:I

.field public zzrv:J

.field public zzrw:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgd;->zzfl()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfb;->zzcn:Lcom/google/android/gms/internal/vision/zzgd;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfb;->zzcn:Lcom/google/android/gms/internal/vision/zzgd;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
