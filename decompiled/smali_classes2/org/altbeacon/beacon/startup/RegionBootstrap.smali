.class public Lorg/altbeacon/beacon/startup/RegionBootstrap;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppStarter"


# instance fields
.field private beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private context:Landroid/content/Context;

.field private disabled:Z

.field private monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/altbeacon/beacon/MonitorNotifier;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/altbeacon/beacon/MonitorNotifier;",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 43
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 81
    iput-object p3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 83
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 84
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 85
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 86
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "AppStarter"

    const-string p3, "Waiting for BeaconService connection"

    invoke-static {p2, p3, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Application Context should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/altbeacon/beacon/MonitorNotifier;Lorg/altbeacon/beacon/Region;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 43
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 59
    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 62
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 63
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 64
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "AppStarter"

    const-string p3, "Waiting for BeaconService connection"

    invoke-static {p2, p3, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Application Context should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/startup/BootstrapNotifier;",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 43
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    .line 116
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 122
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 123
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 124
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 125
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 126
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "AppStarter"

    const-string v0, "Waiting for BeaconService connection"

    invoke-static {p2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 43
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    .line 96
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 101
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 103
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 104
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 105
    iget-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 106
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "AppStarter"

    const-string v0, "Waiting for BeaconService connection"

    invoke-static {p2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/MonitorNotifier;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    return-object p0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object p0
.end method

.method static synthetic access$302(Lorg/altbeacon/beacon/startup/RegionBootstrap;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    return p1
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    const/4 v1, 0x0

    const-string v2, "AppStarter"

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Can\'t add bootstrap region"

    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Adding a region: service not yet Connected"

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public disable()V
    .locals 4

    .line 134
    iget-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 140
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v2, v1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 143
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AppStarter"

    const-string v3, "Can\'t stop bootstrap regions"

    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    return-void
.end method

.method public removeRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    const/4 v1, 0x0

    const-string v2, "AppStarter"

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Can\'t stop bootstrap region"

    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Removing a region: service not yet Connected"

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
