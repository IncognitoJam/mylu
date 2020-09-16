.class Lcom/firebase/jobdispatcher/ExecutionDelegator;
.super Ljava/lang/Object;
.source "ExecutionDelegator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;,
        Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;
    }
.end annotation


# static fields
.field static final JOB_FINISHED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "FJD.ExternalReceiver"


# instance fields
.field private final context:Landroid/content/Context;

.field private final jobFinishedCallback:Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;

.field private final responseHandler:Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;

.field private final serviceConnections:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Lcom/firebase/jobdispatcher/JobInvocation;",
            "Lcom/firebase/jobdispatcher/JobServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    .line 53
    new-instance v0, Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->responseHandler:Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;

    .line 59
    iput-object p1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->jobFinishedCallback:Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/jobdispatcher/ExecutionDelegator;Lcom/firebase/jobdispatcher/JobInvocation;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->onJobFinishedMessage(Lcom/firebase/jobdispatcher/JobInvocation;I)V

    return-void
.end method

.method private createBindIntent(Lcom/firebase/jobdispatcher/JobParameters;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.firebase.jobdispatcher.ACTION_EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private onJobFinishedMessage(Lcom/firebase/jobdispatcher/JobInvocation;I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/JobServiceConnection;

    .line 116
    invoke-direct {p0, v1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->safeUnbindService(Lcom/firebase/jobdispatcher/JobServiceConnection;)V

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->jobFinishedCallback:Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;

    invoke-interface {v0, p1, p2}, Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;->onJobFinished(Lcom/firebase/jobdispatcher/JobInvocation;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private safeUnbindService(Lcom/firebase/jobdispatcher/JobServiceConnection;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/JobServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error unbinding service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FJD.ExternalReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method executeJob(Lcom/firebase/jobdispatcher/JobInvocation;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    new-instance v0, Lcom/firebase/jobdispatcher/JobServiceConnection;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->responseHandler:Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/firebase/jobdispatcher/JobServiceConnection;-><init>(Lcom/firebase/jobdispatcher/JobInvocation;Landroid/os/Message;)V

    .line 77
    iget-object v1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/jobdispatcher/JobServiceConnection;

    if-eqz v3, :cond_1

    const-string v3, "FJD.ExternalReceiver"

    const-string v4, "Received execution request for already running job"

    .line 80
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->createBindIntent(Lcom/firebase/jobdispatcher/JobParameters;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stopJob(Lcom/firebase/jobdispatcher/JobInvocation;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator;->serviceConnections:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/JobServiceConnection;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/JobServiceConnection;->onStop()V

    .line 98
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->safeUnbindService(Lcom/firebase/jobdispatcher/JobServiceConnection;)V

    .line 100
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
