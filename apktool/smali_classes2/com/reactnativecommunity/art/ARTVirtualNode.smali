.class public abstract Lcom/reactnativecommunity/art/ARTVirtualNode;
.super Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
.source "ARTVirtualNode.java"


# static fields
.field protected static final MIN_OPACITY_FOR_DRAW:F = 0.01f

.field private static final sMatrixData:[F

.field private static final sRawMatrix:[F


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mOpacity:F

.field protected final mScale:F

.field protected mShadowColor:I

.field protected mShadowOffsetX:F

.field protected mShadowOffsetY:F

.field protected mShadowOpacity:F

.field protected mShadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    .line 31
    new-array v1, v0, [F

    sput-object v1, Lcom/reactnativecommunity/art/ARTVirtualNode;->sMatrixData:[F

    .line 32
    new-array v0, v0, [F

    sput-object v0, Lcom/reactnativecommunity/art/ARTVirtualNode;->sRawMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mOpacity:F

    .line 35
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowColor:I

    .line 37
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOpacity:F

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowRadius:F

    .line 39
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetX:F

    .line 40
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetY:F

    .line 45
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mScale:F

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
.end method

.method public isVirtual()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected final saveAndSetupCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    iget-object v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 83
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mOpacity:F

    .line 84
    invoke-virtual {p0}, Lcom/reactnativecommunity/art/ARTVirtualNode;->markUpdated()V

    return-void
.end method

.method public setShadow(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "shadow"
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOpacity:F

    const/4 v1, 0x2

    .line 106
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowRadius:F

    const/4 v1, 0x3

    .line 107
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetX:F

    const/4 v1, 0x4

    .line 108
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetY:F

    .line 110
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p1

    .line 112
    iget v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOpacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 113
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 116
    :cond_0
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowColor:I

    goto :goto_0

    .line 119
    :cond_1
    iput v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowColor:I

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOpacity:F

    .line 121
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowRadius:F

    .line 122
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetX:F

    .line 123
    iput p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mShadowOffsetY:F

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/art/ARTVirtualNode;->markUpdated()V

    return-void
.end method

.method public setTransform(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    if-eqz p1, :cond_2

    .line 90
    sget-object v0, Lcom/reactnativecommunity/art/ARTVirtualNode;->sMatrixData:[F

    invoke-static {p1, v0}, Lcom/reactnativecommunity/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;[F)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/reactnativecommunity/art/ARTVirtualNode;->setupMatrix()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v0, "Transform matrices must be of size 6"

    invoke-direct {p1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/art/ARTVirtualNode;->markUpdated()V

    return-void
.end method

.method protected setupMatrix()V
    .locals 7

    .line 129
    sget-object v0, Lcom/reactnativecommunity/art/ARTVirtualNode;->sRawMatrix:[F

    sget-object v1, Lcom/reactnativecommunity/art/ARTVirtualNode;->sMatrixData:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 130
    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x4

    .line 131
    aget v5, v1, v3

    iget v6, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mScale:F

    mul-float v5, v5, v6

    aput v5, v0, v2

    .line 132
    aget v2, v1, v4

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 133
    aget v2, v1, v4

    aput v2, v0, v3

    const/4 v2, 0x5

    .line 134
    aget v1, v1, v2

    mul-float v1, v1, v6

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 135
    aput v1, v0, v2

    const/4 v2, 0x7

    .line 136
    aput v1, v0, v2

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 137
    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/art/ARTVirtualNode;->mMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/reactnativecommunity/art/ARTVirtualNode;->sRawMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method
