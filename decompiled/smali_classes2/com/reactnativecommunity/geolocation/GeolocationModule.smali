.class public Lcom/reactnativecommunity/geolocation/GeolocationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GeolocationModule.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCGeolocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;,
        Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNCGeolocation"

.field private static final RCT_DEFAULT_LOCATION_ACCURACY:F = 100.0f


# instance fields
.field private final mLocationListener:Landroid/location/LocationListener;

.field private mWatchedProvider:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 49
    new-instance p1, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;

    invoke-direct {p1, p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule$1;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;)V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/reactnativecommunity/geolocation/GeolocationModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/reactnativecommunity/geolocation/GeolocationModule;ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->emitError(ILjava/lang/String;)V

    return-void
.end method

.method private emitError(ILjava/lang/String;)V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 302
    invoke-static {p1, p2}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "geolocationError"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "network"

    const-string v1, "gps"

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 265
    :goto_0
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 266
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 269
    :goto_1
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 275
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    return-object v3

    :cond_3
    return-object p2
.end method

.method private static locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 282
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-string v4, "latitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 285
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-string v4, "longitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 286
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    const-string v4, "altitude"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 287
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "accuracy"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 288
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "heading"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 289
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "speed"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v2, "coords"

    .line 290
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 291
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p0

    const-string v1, "mocked"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method private static throwLocationPermissionMissing(Ljava/lang/SecurityException;)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Looks like the app doesn\'t have the permission to access location.\nAdd the following line to your app\'s AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_FINE_LOCATION\" />"

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 10

    .line 187
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$300(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;

    move-result-object p1

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/LocationManager;

    .line 192
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$400(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v3, :cond_0

    .line 194
    new-array p1, v1, [Ljava/lang/Object;

    sget p2, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string v1, "No location provider available."

    .line 195
    invoke-static {p2, v1}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    aput-object p2, p1, v0

    .line 194
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_0
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 200
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$500(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    .line 201
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    aput-object p3, p1, v0

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_1
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;

    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$600(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;-><init>(Landroid/location/LocationManager;Ljava/lang/String;JLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/reactnativecommunity/geolocation/GeolocationModule$1;)V

    .line 206
    invoke-virtual {v0, v9}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->invoke(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->throwLocationPermissionMissing(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/permissions/PermissionsModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/permissions/PermissionsModule;

    .line 130
    new-instance v4, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$2;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 142
    new-instance v5, Lcom/reactnativecommunity/geolocation/GeolocationModule$3;

    invoke-direct {v5, p0, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$3;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    .line 149
    new-instance v9, Lcom/reactnativecommunity/geolocation/GeolocationModule$4;

    invoke-direct {v9, p0, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$4;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/Callback;)V

    .line 156
    new-instance v10, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/reactnativecommunity/geolocation/GeolocationModule$5;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 169
    new-instance p1, Lcom/facebook/react/bridge/PromiseImpl;

    invoke-direct {p1, v10, v9}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2, p1}, Lcom/facebook/react/modules/permissions/PermissionsModule;->checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCGeolocation"

    return-object v0
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mWatchedProvider:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$300(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;

    move-result-object p1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 228
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$400(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 230
    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string v0, "No location provider available."

    invoke-direct {p0, p1, v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->emitError(ILjava/lang/String;)V

    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mWatchedProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-wide/16 v3, 0x3e8

    .line 238
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;->access$800(Lcom/reactnativecommunity/geolocation/GeolocationModule$LocationOptions;)F

    move-result v5

    iget-object v6, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationListener:Landroid/location/LocationListener;

    move-object v2, v0

    .line 235
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 241
    :cond_2
    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mWatchedProvider:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->throwLocationPermissionMissing(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public stopObserving()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 257
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mWatchedProvider:Ljava/lang/String;

    return-void
.end method
