.class public Lcom/brentvatne/exoplayer/DataSourceUtil;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"


# static fields
.field private static defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private static rawDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    .line 72
    invoke-static {p0, p1, p2}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private static buildHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 78
    new-instance v2, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v2, p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 79
    new-instance v3, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v3, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v1, v3}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 80
    new-instance v1, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;

    invoke-static {p0}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getUserAgent(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/util/Map;)V

    :cond_0
    return-object v1
.end method

.method private static buildRawDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    .line 67
    new-instance v0, Lcom/brentvatne/exoplayer/RawResourceDataSourceFactory;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/RawResourceDataSourceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 59
    :cond_1
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-object p0
.end method

.method public static getRawDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    .line 44
    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->rawDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildRawDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->rawDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 47
    :cond_0
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->rawDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-object p0
.end method

.method public static getUserAgent(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ReactNativeVideo"

    .line 38
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    .line 40
    :cond_0
    sget-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static setDefaultDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 63
    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method public static setRawDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->rawDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/brentvatne/exoplayer/DataSourceUtil;->userAgent:Ljava/lang/String;

    return-void
.end method
