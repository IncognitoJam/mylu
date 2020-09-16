.class Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;
.super Landroid/os/AsyncTask;
.source "ScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/ScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/altbeacon/beacon/service/ScanHelper$ScanData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

.field private final mNonBeaconLeScanCallback:Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

.field final synthetic this$0:Lorg/altbeacon/beacon/service/ScanHelper;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 381
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    .line 386
    iput-object p2, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->mNonBeaconLeScanCallback:Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 380
    check-cast p1, [Lorg/altbeacon/beacon/service/ScanHelper$ScanData;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->doInBackground([Lorg/altbeacon/beacon/service/ScanHelper$ScanData;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lorg/altbeacon/beacon/service/ScanHelper$ScanData;)Ljava/lang/Void;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 392
    aget-object p1, p1, v0

    .line 395
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$600(Lorg/altbeacon/beacon/service/ScanHelper;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/BeaconParser;

    .line 396
    iget-object v4, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->scanRecord:[B

    iget v5, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->rssi:I

    iget-object v6, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v5, v6}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_1
    if-eqz v3, :cond_4

    .line 404
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Beacon packet detected for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with rssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_2
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/DetectionTracker;->recordDetection()V

    .line 408
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$700(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$700(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getDistinctPacketsDetectedPerScan()Z

    move-result v1

    if-nez v1, :cond_3

    .line 409
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$300(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

    move-result-object v1

    iget-object v4, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->scanRecord:[B

    invoke-virtual {v1, v4, p1}, Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;->isPacketDistinct(Ljava/lang/String;[B)Z

    move-result p1

    if-nez p1, :cond_3

    .line 411
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Non-distinct packets detected in a single scan.  Restarting scans unecessary."

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$700(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setDistinctPacketsDetectedPerScan(Z)V

    .line 415
    :cond_3
    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {p1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->access$200(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->mNonBeaconLeScanCallback:Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

    if-eqz v0, :cond_5

    .line 418
    iget-object v1, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->rssi:I

    iget-object p1, p1, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->scanRecord:[B

    invoke-interface {v0, v1, v3, p1}, Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;->onNonBeaconLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    :cond_5
    :goto_0
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
