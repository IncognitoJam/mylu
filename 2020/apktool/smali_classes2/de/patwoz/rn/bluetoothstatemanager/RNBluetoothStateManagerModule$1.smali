.class Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$1;
.super Landroid/content/BroadcastReceiver;
.source "RNBluetoothStateManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;


# direct methods
.method constructor <init>(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$1;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 164
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 168
    iget-object p2, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$1;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-static {p1}, Lde/patwoz/rn/bluetoothstatemanager/BridgeUtils;->fromBluetoothState(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EVENT_BLUETOOTH_STATE_CHANGE"

    invoke-static {p2, v0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->access$000(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
