.class public Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;
.super Ljava/lang/Object;
.source "ExtraDataBeaconTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconTracker"


# instance fields
.field private final mBeaconsByKey:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;>;"
        }
    .end annotation
.end field

.field private final matchBeaconsByServiceUUID:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    .line 32
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    return-void
.end method

.method private getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;
    .locals 2
    .param p1    # Lorg/altbeacon/beacon/Beacon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->matchBeaconsByServiceUUID:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private trackGattBeacon(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 3
    .param p1    # Lorg/altbeacon/beacon/Beacon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isExtraBeaconData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->updateTrackedBeacons(Lorg/altbeacon/beacon/Beacon;)V

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    .line 68
    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getExtraDataFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/altbeacon/beacon/Beacon;->setExtraDataFields(Ljava/util/List;)V

    .line 70
    :goto_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private updateTrackedBeacons(Lorg/altbeacon/beacon/Beacon;)V
    .locals 3
    .param p1    # Lorg/altbeacon/beacon/Beacon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->mBeaconsByKey:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->getBeaconKey(Lorg/altbeacon/beacon/Beacon;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 80
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/Beacon;->setRssi(I)V

    .line 81
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDataFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/Beacon;->setExtraDataFields(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized track(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 2
    .param p1    # Lorg/altbeacon/beacon/Beacon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->isMultiFrameBeacon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->trackGattBeacon(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
