.class public Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;
.super Ljava/lang/Object;
.source "BeaconLocalBroadcastProcessor.java"


# static fields
.field public static final MONITOR_NOTIFICATION:Ljava/lang/String; = "org.altbeacon.beacon.monitor_notification"

.field public static final RANGE_NOTIFICATION:Ljava/lang/String; = "org.altbeacon.beacon.range_notification"

.field private static final TAG:Ljava/lang/String; = "BeaconLocalBroadcastProcessor"

.field static registerCallCount:I


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field registerCallCountForInstnace:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCountForInstnace:I

    .line 86
    new-instance v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;-><init>(Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCountForInstnace:I

    .line 86
    new-instance v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;-><init>(Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 71
    sget v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCount:I

    .line 72
    iget v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCountForInstnace:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCountForInstnace:I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register calls: global="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->registerCallCountForInstnace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconLocalBroadcastProcessor"

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->unregister()V

    .line 75
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.altbeacon.beacon.range_notification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.altbeacon.beacon.monitor_notification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
