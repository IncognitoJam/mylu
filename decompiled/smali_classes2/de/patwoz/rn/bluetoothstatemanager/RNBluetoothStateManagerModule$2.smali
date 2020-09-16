.class Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;
.super Lcom/facebook/react/bridge/BaseActivityEventListener;
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

    .line 195
    iput-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseActivityEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/16 p1, 0x31b

    if-eq p2, p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-static {p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->access$100(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const-string p2, "onActivityResult() :: Result code:"

    const-string p4, "RNBluetoothStateManager"

    if-nez p1, :cond_1

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ::\'requestToEnablePromise\' should be defined!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 207
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-static {p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->access$100(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const-string p2, "CANCELED"

    const-string p3, "The user canceled the action."

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-ne p3, p1, :cond_3

    .line 209
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-static {p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->access$100(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " :: Unhandled result code"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;->this$0:Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;

    invoke-static {p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->access$200(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)V

    return-void
.end method
