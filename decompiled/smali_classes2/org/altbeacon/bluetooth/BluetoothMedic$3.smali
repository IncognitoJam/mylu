.class Lorg/altbeacon/bluetooth/BluetoothMedic$3;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BluetoothMedic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/bluetooth/BluetoothMedic;->runTransmitterTest(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

.field final synthetic val$advertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/content/Context;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    iput-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->val$advertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p3, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 5

    .line 322
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onStartFailed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 324
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending onStartFailure broadcast with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 326
    invoke-static {v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 325
    invoke-static {v1, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 331
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 332
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Transmitter test failed in a way we consider a test failure"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->val$context:Landroid/content/Context;

    const-string v1, "transmitter failed"

    const-string v2, "bluetooth not ok"

    invoke-static {p1, v0, v1, v2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 338
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Transmitter test failed, but not in a way we consider a test failure"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2

    .line 315
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 316
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Transmitter test succeeded"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->val$advertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 318
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$3;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
