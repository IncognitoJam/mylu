.class public Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNBluetoothStateManagerModule.java"


# static fields
.field private static final EVENT_BLUETOOTH_STATE_CHANGE:Ljava/lang/String; = "EVENT_BLUETOOTH_STATE_CHANGE"

.field private static final REQUEST_ENABLE_BT:I = 0x31b


# instance fields
.field private final INTENT_OPEN_BLUETOOTH_SETTINGS:Landroid/content/Intent;

.field private final INTENT_REQUEST_ENABLE_BLUETOOTH:Landroid/content/Intent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final requestToEnableListener:Lcom/facebook/react/bridge/ActivityEventListener;

.field private requestToEnablePromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->INTENT_OPEN_BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->INTENT_REQUEST_ENABLE_BLUETOOTH:Landroid/content/Intent;

    .line 158
    new-instance v0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$1;

    invoke-direct {v0, p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$1;-><init>(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)V

    iput-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;

    invoke-direct {v0, p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule$2;-><init>(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)V

    iput-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnableListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 46
    iput-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 48
    invoke-static {}, Lde/patwoz/rn/bluetoothstatemanager/BluetoothUtils;->isBluetoothSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->startListenForBluetoothStateChange()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)Lcom/facebook/react/bridge/Promise;
    .locals 0

    .line 28
    iget-object p0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnablePromise:Lcom/facebook/react/bridge/Promise;

    return-object p0
.end method

.method static synthetic access$200(Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->removeRequestToEnableListener()V

    return-void
.end method

.method private addRequestToEnableListener(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 177
    iput-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnablePromise:Lcom/facebook/react/bridge/Promise;

    .line 178
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnableListener:Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private destroy()V
    .locals 1

    .line 54
    invoke-static {}, Lde/patwoz/rn/bluetoothstatemanager/BluetoothUtils;->isBluetoothSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->stopListenForBluetoothStateChange()V

    .line 57
    :cond_0
    invoke-direct {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->removeRequestToEnableListener()V

    return-void
.end method

.method private handleCurrentActivity(Lcom/facebook/react/bridge/Promise;)Landroid/app/Activity;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "There is no activity"

    .line 248
    invoke-interface {p1, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;)Z
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, p1, v0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;Z)Z

    move-result p1

    return p1
.end method

.method private handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;Z)Z
    .locals 1

    .line 232
    invoke-static {}, Lde/patwoz/rn/bluetoothstatemanager/BluetoothUtils;->isBluetoothSupported()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "BLUETOOTH_NOT_SUPPORTED"

    const-string v0, "This device doesn\'t support Bluetooth"

    .line 234
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeRequestToEnableListener()V
    .locals 2

    .line 182
    iget-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnableListener:Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->requestToEnablePromise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    invoke-virtual {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 227
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 228
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setBluetooth(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_0
    return-void
.end method

.method private startListenForBluetoothStateChange()V
    .locals 3

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListenForBluetoothStateChange()V
    .locals 2

    .line 155
    iget-object v0, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public disable(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleCurrentActivity(Lcom/facebook/react/bridge/Promise;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-static {v0}, Lde/patwoz/rn/bluetoothstatemanager/BluetoothUtils;->hasBluetoothAdminPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->setBluetooth(Z)V

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "UNAUTHORIZED"

    const-string v1, "You are not authorized to do this."

    .line 129
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enable(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleCurrentActivity(Lcom/facebook/react/bridge/Promise;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    invoke-static {v0}, Lde/patwoz/rn/bluetoothstatemanager/BluetoothUtils;->hasBluetoothAdminPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->setBluetooth(Z)V

    const/4 v0, 0x0

    .line 113
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "UNAUTHORIZED"

    const-string v1, "You are not authorized to do this."

    .line 115
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "EVENT_BLUETOOTH_STATE_CHANGE"

    .line 68
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNBluetoothStateManager"

    return-object v0
.end method

.method public getState(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unsupported"

    .line 84
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-static {v0}, Lde/patwoz/rn/bluetoothstatemanager/BridgeUtils;->fromBluetoothState(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 75
    invoke-direct {p0}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->destroy()V

    return-void
.end method

.method public openSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleIfBluetoothNotSupported(Lcom/facebook/react/bridge/Promise;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleCurrentActivity(Lcom/facebook/react/bridge/Promise;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->INTENT_OPEN_BLUETOOTH_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 143
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public requestToEnable(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 188
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->handleCurrentActivity(Lcom/facebook/react/bridge/Promise;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->addRequestToEnableListener(Lcom/facebook/react/bridge/Promise;)V

    .line 192
    iget-object p1, p0, Lde/patwoz/rn/bluetoothstatemanager/RNBluetoothStateManagerModule;->INTENT_REQUEST_ENABLE_BLUETOOTH:Landroid/content/Intent;

    const/16 v1, 0x31b

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
