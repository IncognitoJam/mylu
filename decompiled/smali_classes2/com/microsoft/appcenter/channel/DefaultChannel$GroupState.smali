.class Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
.super Lcom/microsoft/appcenter/utils/context/AbstractTokenContextListener;
.source "DefaultChannel.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupState"
.end annotation


# instance fields
.field final mBatchTimeInterval:J

.field final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field final mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

.field final mMaxLogsPerBatch:I

.field final mMaxParallelBatches:I

.field final mName:Ljava/lang/String;

.field mPaused:Z

.field final mPausedTargetKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLogCount:I

.field final mRunnable:Ljava/lang/Runnable;

.field mScheduled:Z

.field final mSendingBatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/context/AbstractTokenContextListener;-><init>()V

    .line 888
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    .line 918
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    .line 924
    new-instance p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    .line 944
    iput-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    .line 945
    iput p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    .line 946
    iput-wide p4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    .line 947
    iput p6, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    .line 948
    iput-object p7, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 949
    iput-object p8, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    return-void
.end method


# virtual methods
.method public onNewAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 954
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-virtual {p1, p0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    return-void
.end method
