.class public Lorg/altbeacon/beacon/service/SettingsData;
.super Ljava/lang/Object;
.source "SettingsData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SETTINGS_DATA_KEY:Ljava/lang/String; = "SettingsData"

.field private static final TAG:Ljava/lang/String; = "SettingsData"


# instance fields
.field mAndroidLScanningDisabled:Ljava/lang/Boolean;

.field mBeaconParsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field mHardwareEqualityEnforced:Ljava/lang/Boolean;

.field mRegionExitPeriod:Ljava/lang/Long;

.field mRegionStatePersistenceEnabled:Ljava/lang/Boolean;

.field mUseTrackingCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lorg/altbeacon/beacon/service/SettingsData;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    const-class v0, Lorg/altbeacon/beacon/Region;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "SettingsData"

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lorg/altbeacon/beacon/service/SettingsData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public apply(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 7
    .param p1    # Lorg/altbeacon/beacon/service/BeaconService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    sget-object v0, Lorg/altbeacon/beacon/service/SettingsData;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Applying settings changes to scanner in other process"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/altbeacon/beacon/service/SettingsData;->mBeaconParsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 62
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/BeaconParser;

    iget-object v6, p0, Lorg/altbeacon/beacon/service/SettingsData;->mBeaconParsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/altbeacon/beacon/BeaconParser;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    sget-object v2, Lorg/altbeacon/beacon/service/SettingsData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beacon parsers have changed to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/altbeacon/beacon/service/SettingsData;->mBeaconParsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/BeaconParser;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/BeaconParser;->getLayout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 71
    :cond_2
    sget-object v2, Lorg/altbeacon/beacon/service/SettingsData;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Beacon parsers have been added or removed."

    invoke-static {v2, v4, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v5, :cond_3

    .line 74
    sget-object v2, Lorg/altbeacon/beacon/service/SettingsData;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Updating beacon parsers"

    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mBeaconParsers:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/BeaconService;->reloadParsers()V

    goto :goto_2

    .line 80
    :cond_3
    sget-object v0, Lorg/altbeacon/beacon/service/SettingsData;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Beacon parsers unchanged."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_2
    invoke-static {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->isStatePreservationOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/altbeacon/beacon/service/SettingsData;->mRegionStatePersistenceEnabled:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stopStatusPreservation()V

    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->isStatePreservationOn()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/altbeacon/beacon/service/SettingsData;->mRegionStatePersistenceEnabled:Ljava/lang/Boolean;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->startStatusPreservation()V

    .line 91
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mAndroidLScanningDisabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->setAndroidLScanningDisabled(Z)V

    .line 92
    iget-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mRegionExitPeriod:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setRegionExitPeriod(J)V

    .line 93
    iget-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mUseTrackingCache:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/altbeacon/beacon/service/RangeState;->setUseTrackingCache(Z)V

    .line 94
    iget-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mHardwareEqualityEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/altbeacon/beacon/Beacon;->setHardwareEqualityEnforced(Z)V

    return-void
.end method

.method public collect(Landroid/content/Context;)Lorg/altbeacon/beacon/service/SettingsData;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/SettingsData;->mBeaconParsers:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->isRegionStatePersistenceEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mRegionStatePersistenceEnabled:Ljava/lang/Boolean;

    .line 101
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->isAndroidLScanningDisabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mAndroidLScanningDisabled:Ljava/lang/Boolean;

    .line 102
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRegionExitPeriod()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mRegionExitPeriod:Ljava/lang/Long;

    .line 103
    invoke-static {}, Lorg/altbeacon/beacon/service/RangeState;->getUseTrackingCache()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mUseTrackingCache:Ljava/lang/Boolean;

    .line 104
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getHardwareEqualityEnforced()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/SettingsData;->mHardwareEqualityEnforced:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SettingsData"

    .line 43
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method
