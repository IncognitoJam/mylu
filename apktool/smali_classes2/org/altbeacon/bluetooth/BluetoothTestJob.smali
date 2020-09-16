.class public Lorg/altbeacon/bluetooth/BluetoothTestJob;
.super Landroid/app/job/JobService;
.source "BluetoothTestJob.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothTestJob"

.field private static sOverrideJobId:I = -0x1


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getJobId(Landroid/content/Context;)I
    .locals 5

    .line 57
    sget v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->sOverrideJobId:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 58
    sget-object p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using BluetoothTestJob JobId from static override: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/altbeacon/bluetooth/BluetoothTestJob;->sOverrideJobId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->sOverrideJobId:I

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x80

    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_1

    .line 67
    iget-object p0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "jobId"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 68
    iget-object p0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 69
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using BluetoothTestJob JobId from manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot get job id from manifest.  Make sure that the BluetoothTestJob is configured in the manifest."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOverrideJobId(I)V
    .locals 0

    .line 47
    sput p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->sOverrideJobId:I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothTestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;

    invoke-direct {v1, p0, p1}, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
