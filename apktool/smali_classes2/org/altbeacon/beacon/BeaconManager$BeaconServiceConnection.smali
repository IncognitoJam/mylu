.class Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;
.super Ljava/lang/Object;
.source "BeaconManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeaconServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/BeaconManager$1;)V
    .locals 0

    .line 1274
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x0

    .line 1280
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconManager"

    const-string v2, "we have a connection to the service now"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->access$100(Lorg/altbeacon/beacon/BeaconManager;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1284
    :cond_0
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->access$202(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1286
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->applySettings()V

    .line 1287
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->access$300(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    monitor-enter p1

    .line 1288
    :try_start_0
    iget-object p2, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p2}, Lorg/altbeacon/beacon/BeaconManager;->access$300(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1289
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1290
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    iget-boolean v1, v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    if-nez v1, :cond_1

    .line 1293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-interface {v1}, Lorg/altbeacon/beacon/BeaconConsumer;->onBeaconServiceConnect()V

    .line 1294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    goto :goto_0

    .line 1297
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    .line 1302
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BeaconManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->access$202(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
