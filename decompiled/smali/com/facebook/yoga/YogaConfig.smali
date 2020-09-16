.class public Lcom/facebook/yoga/YogaConfig;
.super Ljava/lang/Object;
.source "YogaConfig.java"


# static fields
.field public static SPACING_TYPE:I = 0x1


# instance fields
.field private mLogger:Lcom/facebook/yoga/YogaLogger;

.field mNativePointer:J

.field private mYogaNodeCloneFunction:Lcom/facebook/yoga/YogaNodeCloneFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    .line 21
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate native memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 32
    throw v0
.end method

.method public getLogger()Lcom/facebook/yoga/YogaLogger;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/facebook/yoga/YogaConfig;->mLogger:Lcom/facebook/yoga/YogaLogger;

    return-object v0
.end method

.method public setExperimentalFeatureEnabled(Lcom/facebook/yoga/YogaExperimentalFeature;Z)V
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaExperimentalFeature;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetExperimentalFeatureEnabled(JIZ)V

    return-void
.end method

.method public setLogger(Lcom/facebook/yoga/YogaLogger;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lcom/facebook/yoga/YogaConfig;->mLogger:Lcom/facebook/yoga/YogaLogger;

    .line 73
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetLogger(JLjava/lang/Object;)V

    return-void
.end method

.method public setPointScaleFactor(F)V
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetPointScaleFactor(JF)V

    return-void
.end method

.method public setPrintTreeFlag(Z)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetPrintTreeFlag(JZ)V

    return-void
.end method

.method public setShouldDiffLayoutWithoutLegacyStretchBehaviour(Z)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetShouldDiffLayoutWithoutLegacyStretchBehaviour(JZ)V

    return-void
.end method

.method public setUseLegacyStretchBehaviour(Z)V
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetUseLegacyStretchBehaviour(JZ)V

    return-void
.end method

.method public setUseWebDefaults(Z)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetUseWebDefaults(JZ)V

    return-void
.end method
