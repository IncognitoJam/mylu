.class final Lcom/google/android/gms/internal/vision/zzdn;
.super Lcom/google/android/gms/internal/vision/zzdf;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzdf<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzmf:Lcom/google/android/gms/internal/vision/zzdk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzdk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzdf;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzdk;->zza(Lcom/google/android/gms/internal/vision/zzdk;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzct;->zzc(II)I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzdk;->zzb(Lcom/google/android/gms/internal/vision/zzdk;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    .line 6
    aget-object v0, v0, p1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzdk;->zzb(Lcom/google/android/gms/internal/vision/zzdk;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-object p1, v1, p1

    .line 10
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdn;->zzmf:Lcom/google/android/gms/internal/vision/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzdk;->zza(Lcom/google/android/gms/internal/vision/zzdk;)I

    move-result v0

    return v0
.end method
