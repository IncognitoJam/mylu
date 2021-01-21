.class Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;
.super Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatrixDecompositionContext"
.end annotation


# instance fields
.field final perspective:[D

.field final rotationDegrees:[D

.field final scale:[D

.field final skew:[D

.field final translation:[D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    const/4 v0, 0x4

    .line 212
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->perspective:[D

    const/4 v0, 0x3

    .line 213
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->scale:[D

    .line 214
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->skew:[D

    .line 215
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->translation:[D

    .line 216
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/horcrux/svg/RenderableViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    return-void
.end method
