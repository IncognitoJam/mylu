.class final synthetic Lcom/google/android/gms/internal/vision/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzaw;


# instance fields
.field private final zzft:Lcom/google/android/gms/internal/vision/zzav;

.field private final zzfu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzav;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzay;->zzft:Lcom/google/android/gms/internal/vision/zzav;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzay;->zzfu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzt()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzay;->zzft:Lcom/google/android/gms/internal/vision/zzav;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzay;->zzfu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzav;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
