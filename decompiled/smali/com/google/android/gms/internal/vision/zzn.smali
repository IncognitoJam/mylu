.class public abstract Lcom/google/android/gms/internal/vision/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static PREFIX:Ljava/lang/String; = "com.google.android.gms.vision.dynamite"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;

.field private final zzdf:Ljava/lang/String;

.field private final zzdg:Ljava/lang/String;

.field private final zzdh:Z

.field private zzdi:Z

.field private zzdj:Z

.field private zzdk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zze:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzn;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdi:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdj:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzn;->zze:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzn;->PREFIX:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdf:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdg:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzbe;->maybeInit(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkv;->zzjp()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzkv;->zzjq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "barcode"

    const-string v5, "face"

    const-string v7, "ica"

    const-string v9, "ocr"

    .line 16
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/vision/zzdg;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzdg;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/vision/zzdg;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/vision/zzdg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 19
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdh:Z

    return-void
.end method


# virtual methods
.method public final isOperational()Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->zzp()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamite/DynamiteModule;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation
.end method

.method protected abstract zzn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zzo()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->zzn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 28
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v3, "Could not finalize native handle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final zzp()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 34
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->zze:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdf:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v3, "Cannot load feature, fall back to load dynamite module."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->zze:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdg:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdh:Z

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/vision/zzr;->zza(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    if-nez v2, :cond_2

    .line 40
    iget-boolean v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdh:Z

    if-eqz v3, :cond_2

    .line 41
    iget-boolean v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdi:Z

    if-nez v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v4, "Broadcasting download intent for dependency "

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdg:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdg:Ljava/lang/String;

    .line 44
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.gms"

    const-string v6, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    .line 45
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.google.android.gms.vision.DEPENDENCIES"

    .line 48
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.vision.DEPENDENCY"

    .line 49
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zze:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdi:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 55
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->zze:Landroid/content/Context;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/vision/zzn;->zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 58
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v4, "Error creating remote native handle"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdj:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v3, "Native handle not yet available. Reverting to no-op handle."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdj:Z

    goto :goto_4

    .line 62
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdj:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->tag:Ljava/lang/String;

    const-string v2, "Native handle is now available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzn;->zzdk:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
