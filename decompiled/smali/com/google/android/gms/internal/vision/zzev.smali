.class public abstract Lcom/google/android/gms/internal/vision/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzih;


# instance fields
.field private zzrp:Z

.field private zzrq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzev;->zzrp:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzev;->zzrq:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzev;->zzdm()Lcom/google/android/gms/internal/vision/zzih;

    move-result-object v0

    return-object v0
.end method

.method public final zzdm()Lcom/google/android/gms/internal/vision/zzih;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
