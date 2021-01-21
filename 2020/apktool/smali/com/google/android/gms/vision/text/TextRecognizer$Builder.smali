.class public Lcom/google/android/gms/vision/text/TextRecognizer$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/text/TextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zze:Landroid/content/Context;

.field private zzeg:Lcom/google/android/gms/internal/vision/zzah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->zze:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/vision/zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzah;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->zzeg:Lcom/google/android/gms/internal/vision/zzah;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/text/TextRecognizer;
    .locals 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/vision/zzai;

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->zze:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->zzeg:Lcom/google/android/gms/internal/vision/zzah;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzah;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/vision/text/TextRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/vision/text/TextRecognizer;-><init>(Lcom/google/android/gms/internal/vision/zzai;Lcom/google/android/gms/vision/text/zzb;)V

    return-object v1
.end method
