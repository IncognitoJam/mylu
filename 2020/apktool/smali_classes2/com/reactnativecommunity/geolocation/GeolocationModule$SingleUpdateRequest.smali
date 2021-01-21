.class Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;
.super Ljava/lang/Object;
.source "GeolocationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/GeolocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleUpdateRequest"
.end annotation


# static fields
.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final mError:Lcom/facebook/react/bridge/Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mOldLocation:Landroid/location/Location;

.field private final mProvider:Ljava/lang/String;

.field private final mSuccess:Lcom/facebook/react/bridge/Callback;

.field private final mTimeout:J

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mTriggered:Z


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;JLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mHandler:Landroid/os/Handler;

    .line 324
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$1;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest$2;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationListener:Landroid/location/LocationListener;

    .line 369
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationManager:Landroid/location/LocationManager;

    .line 370
    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mProvider:Ljava/lang/String;

    .line 371
    iput-wide p3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTimeout:J

    .line 372
    iput-object p5, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mSuccess:Lcom/facebook/react/bridge/Callback;

    .line 373
    iput-object p6, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mError:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;JLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/reactnativecommunity/geolocation/GeolocationModule$1;)V
    .locals 0

    .line 315
    invoke-direct/range {p0 .. p6}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;-><init>(Landroid/location/LocationManager;Ljava/lang/String;JLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mError:Lcom/facebook/react/bridge/Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationListener;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/LocationManager;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/location/Location;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mOldLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mOldLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Landroid/location/Location;Landroid/location/Location;)Z
    .locals 0

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mSuccess:Lcom/facebook/react/bridge/Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Ljava/lang/Runnable;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Landroid/os/Handler;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;)Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTriggered:Z

    return p0
.end method

.method static synthetic access$902(Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;Z)Z
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTriggered:Z

    return p1
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-wide/32 v6, -0x1d4c0

    cmp-long v4, v1, v6

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz v4, :cond_5

    return v5

    .line 412
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-gez v2, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    const/16 v6, 0xc8

    if-le v2, v6, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 418
    :goto_5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v4, :cond_9

    return v0

    :cond_9
    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    if-eqz p1, :cond_b

    return v0

    :cond_b
    return v5
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 438
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public invoke(Landroid/location/Location;)V
    .locals 6

    .line 377
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mOldLocation:Landroid/location/Location;

    .line 378
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mProvider:Ljava/lang/String;

    iget-object v5, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mLocationListener:Landroid/location/LocationListener;

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 379
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$SingleUpdateRequest;->mTimeout:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
