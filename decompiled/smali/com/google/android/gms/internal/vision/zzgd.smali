.class public Lcom/google/android/gms/internal/vision/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzgd$zza;
    }
.end annotation


# static fields
.field private static volatile zztb:Z = false

.field private static zztc:Z = true

.field private static volatile zztd:Lcom/google/android/gms/internal/vision/zzgd;

.field private static volatile zzte:Lcom/google/android/gms/internal/vision/zzgd;

.field private static final zztf:Lcom/google/android/gms/internal/vision/zzgd;


# instance fields
.field private final zztg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/vision/zzgd$zza;",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzgd;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zztf:Lcom/google/android/gms/internal/vision/zzgd;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zztg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgd;->zztg:Ljava/util/Map;

    return-void
.end method

.method public static zzfk()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgd;-><init>()V

    return-object v0
.end method

.method public static zzfl()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zztd:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v0, :cond_1

    .line 5
    const-class v1, Lcom/google/android/gms/internal/vision/zzgd;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zztd:Lcom/google/android/gms/internal/vision/zzgd;

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zztf:Lcom/google/android/gms/internal/vision/zzgd;

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zztd:Lcom/google/android/gms/internal/vision/zzgd;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzfm()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 2

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgd;->zzte:Lcom/google/android/gms/internal/vision/zzgd;

    if-eqz v0, :cond_0

    return-object v0

    .line 15
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/vision/zzgd;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgd;->zzte:Lcom/google/android/gms/internal/vision/zzgd;

    if-eqz v1, :cond_1

    .line 18
    monitor-exit v0

    return-object v1

    .line 20
    :cond_1
    const-class v1, Lcom/google/android/gms/internal/vision/zzgd;

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzgr;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v1

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/vision/zzgd;->zzte:Lcom/google/android/gms/internal/vision/zzgd;

    .line 23
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vision/zzic;I)Lcom/google/android/gms/internal/vision/zzgs$zzg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/vision/zzic;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zztg:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzgd$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzgd$zza;-><init>(Ljava/lang/Object;I)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzgs$zzg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzgs$zzg<",
            "**>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgd;->zztg:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzgd$zza;

    .line 29
    iget-object v2, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxf:Lcom/google/android/gms/internal/vision/zzic;

    .line 31
    iget-object v3, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 32
    iget v3, v3, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 33
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgd$zza;-><init>(Ljava/lang/Object;I)V

    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
