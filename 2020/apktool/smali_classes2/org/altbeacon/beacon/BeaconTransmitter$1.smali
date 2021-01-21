.class Lorg/altbeacon/beacon/BeaconTransmitter$1;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BeaconTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconTransmitter;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/BeaconTransmitter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 3

    const/4 v0, 0x1

    .line 281
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BeaconTransmitter"

    const-string v2, "Advertisement start failed, code: %s"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    :cond_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3

    const/4 v0, 0x0

    .line 290
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeaconTransmitter"

    const-string v2, "Advertisement start succeeded."

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$102(Lorg/altbeacon/beacon/BeaconTransmitter;Z)Z

    .line 292
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    :cond_0
    return-void
.end method
