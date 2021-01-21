.class abstract Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;
.super Ljava/lang/Object;
.source "ConnectivityReceiver.java"


# instance fields
.field private mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsInternetReachable:Z

.field private mIsInternetReachableOverride:Ljava/lang/Boolean;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 43
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "connectivity"

    .line 45
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    .line 50
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    .line 107
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v1, v1, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->label:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v2, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->NONE:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 114
    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v4, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->UNKNOWN:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 115
    invoke-virtual {v1, v4}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "isConnected"

    .line 116
    invoke-interface {v0, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    const-string v5, "isInternetReachable"

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 124
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v1

    const-string v5, "isConnectionExpensive"

    .line 128
    invoke-interface {v4, v5, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v5, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->CELLULAR:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    invoke-virtual {v1, v5}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, v1, Lcom/reactnativecommunity/netinfo/types/CellularGeneration;->label:Ljava/lang/String;

    const-string v2, "cellularGeneration"

    invoke-interface {v4, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "carrier"

    .line 139
    invoke-interface {v4, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    sget-object v5, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->WIFI:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    invoke-virtual {v1, v5}, Lcom/reactnativecommunity/netinfo/types/ConnectionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    iget-object v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 147
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "<unknown ssid>"

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "\""

    const-string v7, ""

    .line 150
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ssid"

    .line 151
    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, 0x64

    invoke-static {v5, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    const-string v6, "strength"

    .line 161
    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :catch_1
    :try_start_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 170
    invoke-static {v5}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 171
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ipAddress"

    .line 173
    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :catch_2
    :try_start_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/reactnativecommunity/netinfo/NetInfoUtils;->reverseByteArray([B)V

    .line 183
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 184
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    const/4 v5, -0x1

    .line 185
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    shl-int v1, v5, v1

    const-string v5, "%d.%d.%d.%d"

    const/4 v6, 0x4

    .line 186
    new-array v6, v6, [Ljava/lang/Object;

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subnet"

    .line 187
    invoke-interface {v4, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    :goto_1
    const-string v1, "details"

    .line 194
    invoke-interface {v0, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private sendConnectivityChangedEvent()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 102
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 103
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "netInfo.networkStatusDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearIsInternetReachableOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    return-void
.end method

.method getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getCurrentState(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method abstract register()V
.end method

.method public setIsInternetReachableOverride(Z)V
    .locals 2

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    .line 63
    iget-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    iget-boolean v1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V

    return-void
.end method

.method abstract unregister()V
.end method

.method updateConnectivity(Lcom/reactnativecommunity/netinfo/types/ConnectionType;Lcom/reactnativecommunity/netinfo/types/CellularGeneration;Z)V
    .locals 5
    .param p1    # Lcom/reactnativecommunity/netinfo/types/ConnectionType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/reactnativecommunity/netinfo/types/CellularGeneration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachableOverride:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    if-eq p2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 90
    :goto_2
    iget-boolean v4, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    if-eq p3, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 93
    :cond_4
    iput-object p1, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mConnectionType:Lcom/reactnativecommunity/netinfo/types/ConnectionType;

    .line 94
    iput-object p2, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mCellularGeneration:Lcom/reactnativecommunity/netinfo/types/CellularGeneration;

    .line 95
    iput-boolean p3, p0, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->mIsInternetReachable:Z

    .line 96
    invoke-direct {p0}, Lcom/reactnativecommunity/netinfo/ConnectivityReceiver;->sendConnectivityChangedEvent()V

    :cond_5
    return-void
.end method
