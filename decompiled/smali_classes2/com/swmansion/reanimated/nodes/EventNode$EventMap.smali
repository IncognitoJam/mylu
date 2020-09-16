.class Lcom/swmansion/reanimated/nodes/EventNode$EventMap;
.super Ljava/lang/Object;
.source "EventNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/EventNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventMap"
.end annotation


# instance fields
.field private final nodeID:I

.field private final path:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 23
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->path:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->path:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->nodeID:I

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/reanimated/nodes/EventNode$EventMap;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->nodeID:I

    return p0
.end method


# virtual methods
.method public lookupValue(Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Double;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 32
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->path:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 33
    aget-object v2, v2, v0

    .line 34
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/EventNode$EventMap;->path:[Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 38
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_2
    return-object v1
.end method
