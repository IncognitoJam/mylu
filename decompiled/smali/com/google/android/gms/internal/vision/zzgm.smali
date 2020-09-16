.class final synthetic Lcom/google/android/gms/internal/vision/zzgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# static fields
.field static final synthetic zzto:[I

.field static final synthetic zztp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhe;->values()[Lcom/google/android/gms/internal/vision/zzhe;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgm;->zztp:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgm;->zztp:[I

    sget-object v2, Lcom/google/android/gms/internal/vision/zzhe;->zzxv:Lcom/google/android/gms/internal/vision/zzhe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzhe;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/vision/zzgm;->zztp:[I

    sget-object v3, Lcom/google/android/gms/internal/vision/zzhe;->zzxx:Lcom/google/android/gms/internal/vision/zzhe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzhe;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/vision/zzgm;->zztp:[I

    sget-object v4, Lcom/google/android/gms/internal/vision/zzhe;->zzxu:Lcom/google/android/gms/internal/vision/zzhe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzhe;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgp;->values()[Lcom/google/android/gms/internal/vision/zzgp;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/vision/zzgm;->zzto:[I

    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/vision/zzgm;->zzto:[I

    sget-object v4, Lcom/google/android/gms/internal/vision/zzgp;->zzwb:Lcom/google/android/gms/internal/vision/zzgp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzgp;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgm;->zzto:[I

    sget-object v3, Lcom/google/android/gms/internal/vision/zzgp;->zzvz:Lcom/google/android/gms/internal/vision/zzgp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzgp;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgm;->zzto:[I

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgp;->zzvy:Lcom/google/android/gms/internal/vision/zzgp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzgp;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
