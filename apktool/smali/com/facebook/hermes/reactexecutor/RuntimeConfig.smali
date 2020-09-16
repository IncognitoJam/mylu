.class public final Lcom/facebook/hermes/reactexecutor/RuntimeConfig;
.super Ljava/lang/Object;
.source "RuntimeConfig.java"


# instance fields
.field public bytecodeWarmupPercent:I

.field public enableSampledStats:Z

.field public es6Symbol:Z

.field public heapDumper:Lcom/facebook/hermes/instrumentation/HermesMemoryDumper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public heapSizeMB:J

.field public tripWireCooldownMS:J

.field public tripWireEnabled:Z

.field public tripWireLimitBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
