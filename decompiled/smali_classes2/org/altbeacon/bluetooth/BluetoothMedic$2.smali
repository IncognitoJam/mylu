.class Lorg/altbeacon/bluetooth/BluetoothMedic$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothMedic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/bluetooth/BluetoothMedic;->runScanTest(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/content/Context;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    iput-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p3, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 5

    .line 237
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 238
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onScanFailed broadcast with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 239
    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 238
    invoke-static {v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onScanFailed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 245
    :cond_0
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " should be received by "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 246
    invoke-static {v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$500(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 245
    invoke-static {v1, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 248
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Scan test failed in a way we consider a failure"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->val$context:Landroid/content/Context;

    const-string v1, "scan failed"

    const-string v3, "bluetooth not ok"

    invoke-static {p1, v0, v1, v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Scan test failed in a way we do not consider a failure"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 223
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 224
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 225
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Scan test succeeded"

    invoke-static {p1, v0, p2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :try_start_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$2;->val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
