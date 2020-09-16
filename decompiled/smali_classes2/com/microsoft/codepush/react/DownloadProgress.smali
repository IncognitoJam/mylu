.class Lcom/microsoft/codepush/react/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# instance fields
.field private mReceivedBytes:J

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mTotalBytes:J

    .line 12
    iput-wide p3, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mReceivedBytes:J

    return-void
.end method


# virtual methods
.method public createWritableMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    .line 16
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 17
    iget-wide v1, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mTotalBytes:J

    const-string v3, "receivedBytes"

    const-string v4, "totalBytes"

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    long-to-int v2, v1

    .line 18
    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 19
    iget-wide v1, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mReceivedBytes:J

    long-to-int v2, v1

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    long-to-double v1, v1

    .line 21
    invoke-interface {v0, v4, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 22
    iget-wide v1, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mReceivedBytes:J

    long-to-double v1, v1

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :goto_0
    return-object v0
.end method

.method public isCompleted()Z
    .locals 5

    .line 28
    iget-wide v0, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mTotalBytes:J

    iget-wide v2, p0, Lcom/microsoft/codepush/react/DownloadProgress;->mReceivedBytes:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
