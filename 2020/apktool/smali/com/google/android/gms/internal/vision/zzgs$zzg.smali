.class public final Lcom/google/android/gms/internal/vision/zzgs$zzg;
.super Lcom/google/android/gms/internal/vision/zzge;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/vision/zzic;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/zzge<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final zzgd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final zzxf:Lcom/google/android/gms/internal/vision/zzic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final zzxg:Lcom/google/android/gms/internal/vision/zzic;

.field final zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzgs$zzd;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/android/gms/internal/vision/zzic;",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzge;-><init>()V

    if-eqz p1, :cond_2

    .line 5
    iget-object p5, p4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/vision/zzka;->zzacc:Lcom/google/android/gms/internal/vision/zzka;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxf:Lcom/google/android/gms/internal/vision/zzic;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzgd:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxg:Lcom/google/android/gms/internal/vision/zzic;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zzj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/vision/zzkd;->zzacu:Lcom/google/android/gms/internal/vision/zzkd;

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwm:Lcom/google/android/gms/internal/vision/zzgv;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzgv;->zzh(I)Lcom/google/android/gms/internal/vision/zzgw;

    move-result-object p1

    :cond_0
    return-object p1
.end method
