.class final Lcom/google/android/gms/internal/vision/zzfk;
.super Lcom/google/android/gms/internal/vision/zzfm;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zzsg:Lcom/google/android/gms/internal/vision/zzfh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzfh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfk;->zzsg:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfm;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfk;->position:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfk;->zzsg:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfh;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfk;->limit:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfk;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfk;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfk;->position:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfk;->limit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfk;->position:I

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfk;->zzsg:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzfh;->zzap(I)B

    move-result v0

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
