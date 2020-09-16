.class public Lcom/microsoft/appcenter/channel/DefaultChannel;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    }
.end annotation


# static fields
.field static final CLEAR_BATCH_SIZE:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MINIMUM_TRANSMISSION_INTERVAL:J = 0xbb8L

.field static final START_TIMER_PREFIX:Ljava/lang/String; = "startTimerPrefix."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAppCenterHandler:Landroid/os/Handler;

.field private mAppSecret:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private mDiscardLogs:Z

.field private mEnabled:Z

.field private final mGroupStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            ">;"
        }
    .end annotation
.end field

.field private final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field private final mIngestions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/ingestion/Ingestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallId:Ljava/util/UUID;

.field private final mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/channel/Channel$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Landroid/os/Handler;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-static {p1, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;

    move-result-object v3

    new-instance v4, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;

    invoke-direct {v4, p1, p3}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/appcenter/persistence/Persistence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/appcenter/ingestion/Ingestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    .line 165
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    .line 166
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    .line 167
    iput-object p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    .line 168
    iput-object p4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 169
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    .line 170
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    iget-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iput-object p5, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/appcenter/channel/DefaultChannel;->sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/channel/DefaultChannel;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    return-void
.end method

.method private static buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 179
    new-instance v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->setLogSerializer(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    return-object v0
.end method

.method private checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 0
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z
    .locals 1

    monitor-enter p0

    .line 200
    :try_start_0
    iget v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 8

    .line 431
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    .line 433
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 435
    iget-object v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {v2, v1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 436
    iget-object v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    new-instance v3, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v3}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    .line 643
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v2, "AppCenter"

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending logs groupName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    invoke-static {p3}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 648
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    goto :goto_1

    .line 650
    :cond_0
    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p1, :cond_1

    .line 652
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 653
    invoke-interface {p1, v1, p3}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 657
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object p2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p2, :cond_0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 625
    invoke-interface {p2, v1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 9
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTimerPrefix."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 810
    iget v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    const-string v6, "AppCenter"

    if-lez v2, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-eqz v2, :cond_1

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-wide v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 814
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The timer value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been saved."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 824
    :cond_2
    iget-wide v7, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    add-long/2addr v4, v7

    cmp-long v2, v4, v0

    if-gez v2, :cond_3

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The timer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " channel finished."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 2
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 833
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    iget v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 834
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 836
    :cond_0
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 799
    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 800
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 802
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            "I",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;-><init>()V

    .line 569
    invoke-virtual {v5, p3}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->setLogs(Ljava/util/List;)V

    .line 570
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    new-instance v6, Lcom/microsoft/appcenter/channel/DefaultChannel$2;

    invoke-direct {v6, p0, p1, p4}, Lcom/microsoft/appcenter/channel/DefaultChannel$2;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    move-object v2, p5

    invoke-interface/range {v1 .. v6}, Lcom/microsoft/appcenter/ingestion/Ingestion;->sendAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    .line 596
    iget-object p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    new-instance p4, Lcom/microsoft/appcenter/channel/DefaultChannel$3;

    invoke-direct {p4, p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel$3;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private suspend(ZLjava/lang/Exception;)V
    .locals 6

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 395
    iput-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 396
    iget v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 397
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 398
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 401
    iget-object v2, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-eqz p1, :cond_1

    .line 405
    iget-object v4, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v4, :cond_1

    .line 407
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 408
    invoke-interface {v4, v5, p2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    .line 414
    :cond_2
    iget-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 416
    :try_start_0
    invoke-interface {v0}, Lcom/microsoft/appcenter/ingestion/Ingestion;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close ingestion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCenter"

    invoke-static {v2, v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 422
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 423
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_2

    .line 426
    :cond_4
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/persistence/Persistence;->clearPendingLogState()V

    :cond_5
    return-void
.end method

.method private declared-synchronized triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 17
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 464
    :try_start_0
    iget-boolean v1, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 465
    monitor-exit p0

    return-void

    .line 467
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 468
    iget v2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "AppCenter"

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerIngestion("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") pendingLogCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 473
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    if-ne v1, v3, :cond_1

    const-string v1, "AppCenter"

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " batches of analytics data to the server."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    .line 479
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getAuthTokenValidityList()Ljava/util/List;

    move-result-object v3

    .line 481
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 482
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 483
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 488
    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->getStartTime()Ljava/util/Date;

    move-result-object v6

    .line 490
    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->getEndTime()Ljava/util/Date;

    move-result-object v7

    .line 493
    invoke-virtual {v1, v4}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->checkIfTokenNeedsToBeRefreshed(Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;)V

    move-object v14, v6

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, v16

    goto :goto_1

    :cond_3
    move-object v7, v5

    move-object v14, v7

    .line 499
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    iget v4, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 501
    iget-object v9, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v10, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    iget-object v11, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    move v12, v2

    move-object v13, v6

    move-object v15, v5

    invoke-virtual/range {v9 .. v15}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 504
    iget v10, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    if-nez v9, :cond_4

    .line 510
    invoke-interface {v3}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    if-nez v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v4, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    .line 511
    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/util/Date;)I

    move-result v4

    if-nez v4, :cond_2

    .line 512
    invoke-virtual {v1, v7}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->removeOldestTokenIfMatching(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "AppCenter"

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ingestLogs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") pendingLogCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v1, :cond_5

    .line 520
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 521
    iget-object v3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {v3, v2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    goto :goto_2

    .line 526
    :cond_5
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    new-instance v10, Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/appcenter/channel/DefaultChannel$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 552
    :cond_6
    :try_start_3
    iget-object v1, v8, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 13

    move-object v10, p0

    move-object v0, p1

    monitor-enter p0

    :try_start_0
    const-string v1, "AppCenter"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_0

    .line 224
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p6

    .line 225
    :goto_0
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v12, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object v8, v11

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 227
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v1, p1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v1, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v1

    iput v1, v12, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 233
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->addListener(Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;)V

    .line 240
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-eq v1, v11, :cond_2

    .line 243
    :cond_1
    invoke-virtual {p0, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 247
    :cond_2
    iget-object v1, v10, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-wide/from16 v3, p3

    move-object/from16 v5, p7

    .line 248
    invoke-interface {v2, p1, v5, v3, v4}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 250
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 1

    monitor-enter p0

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 448
    iget-boolean v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 450
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimerPrefix."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method declared-synchronized checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 7
    .param p1    # Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenter"

    const-string v1, "checkPendingLogs(%s) pendingLogCount=%s batchTimeInterval=%s"

    const/4 v2, 0x3

    .line 768
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-wide v5, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 768
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 773
    iget-boolean v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 778
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    .line 779
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    .line 783
    :cond_1
    iget-boolean v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-nez v1, :cond_2

    .line 784
    iput-boolean v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 785
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 774
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 371
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppCenter"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 378
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onClear(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    if-nez v0, :cond_0

    const-string p1, "AppCenter"

    .line 667
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid group name:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 672
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    if-eqz v1, :cond_2

    const-string p2, "AppCenter"

    const-string p3, "Channel is disabled, the log is discarded."

    .line 673
    invoke-static {p2, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p2, :cond_1

    .line 675
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {p2, p1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 676
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    new-instance p3, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {p3}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {p2, p1, p3}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :cond_1
    monitor-exit p0

    return-void

    .line 682
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 683
    invoke-interface {v2, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_3
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v1

    if-nez v1, :cond_5

    .line 690
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    .line 692
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_3
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "AppCenter"

    const-string p3, "Device log cannot be generated"

    .line 694
    invoke-static {p2, p3, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 700
    :cond_4
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-interface {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/Log;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 704
    :cond_5
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_6

    .line 705
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/Log;->setTimestamp(Ljava/util/Date;)V

    .line 709
    :cond_6
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 710
    invoke-interface {v2, p1, p2, p3}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    goto :goto_2

    .line 715
    :cond_7
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/channel/Channel$Listener;

    if-nez v3, :cond_9

    .line 716
    invoke-interface {v4, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    const-string p2, "AppCenter"

    .line 721
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Log of type \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was filtered out by listener(s)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 723
    :cond_b
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v1, v2, :cond_c

    const-string p2, "AppCenter"

    .line 726
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Log of type \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was not filtered out by listener(s) but no app secret was provided. Not persisting/sending the log."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 727
    monitor-exit p0

    return-void

    .line 732
    :cond_c
    :try_start_6
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/appcenter/persistence/Persistence;->putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    :try_end_6
    .catch Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 743
    :try_start_7
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 744
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 745
    :goto_4
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "AppCenter"

    .line 746
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transmission target ikey="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is paused."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 747
    monitor-exit p0

    return-void

    .line 751
    :cond_e
    :try_start_8
    iget p1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    add-int/2addr p1, v5

    iput p1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    const-string p1, "AppCenter"

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enqueue("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") pendingLogCount="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz p1, :cond_f

    .line 754
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_5

    :cond_f
    const-string p1, "AppCenter"

    const-string p2, "Channel is temporarily disabled, log was saved to disk."

    .line 756
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 759
    :goto_5
    monitor-exit p0

    return-void

    :catch_1
    move-exception p2

    :try_start_9
    const-string p3, "AppCenter"

    const-string v1, "Error persisting log"

    .line 734
    invoke-static {p3, v1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 735
    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p3, :cond_10

    .line 736
    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {p3, p1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 737
    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {p3, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 739
    :cond_10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getGroupState(Ljava/lang/String;)Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    return-object p1
.end method

.method public declared-synchronized invalidateDeviceCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 384
    :try_start_0
    iput-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 272
    invoke-static {p2}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v0, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AppCenter"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-boolean v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-nez v1, :cond_1

    const-string v1, "AppCenter"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    .line 279
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 283
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 284
    invoke-interface {v1, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPaused(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 287
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeGroup(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenter"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeGroup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 258
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->getInstance()Lcom/microsoft/appcenter/utils/context/AuthTokenContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenContext;->removeListener(Lcom/microsoft/appcenter/utils/context/AuthTokenContext$Listener;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 263
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupRemoved(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 1

    monitor-enter p0

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resumeGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 294
    invoke-static {p2}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    iget-object v2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AppCenter"

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeGroup("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v1, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 306
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-boolean v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-eqz v1, :cond_1

    const-string v1, "AppCenter"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 310
    iput-boolean v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    .line 311
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 315
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 316
    invoke-interface {v1, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onResumed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 319
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAppSecret(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 207
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 210
    iget-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 212
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v1, v2, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 2

    monitor-enter p0

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 336
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 339
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    const/4 v1, 0x0

    .line 340
    iput-boolean v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 341
    iget v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 342
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 343
    invoke-interface {v1}, Lcom/microsoft/appcenter/ingestion/Ingestion;->reopen()V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 346
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_1

    .line 349
    :cond_2
    new-instance v1, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v1}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 354
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGloballyEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 356
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogUrl(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/ingestion/Ingestion;->setLogUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxStorageSize(J)Z
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/persistence/Persistence;->setMaxStorageSize(J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 856
    :try_start_0
    new-instance v1, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v1}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
