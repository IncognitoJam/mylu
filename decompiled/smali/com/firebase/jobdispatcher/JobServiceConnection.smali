.class Lcom/firebase/jobdispatcher/JobServiceConnection;
.super Ljava/lang/Object;
.source "JobServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

.field private final jobFinishedMessage:Landroid/os/Message;

.field private final jobInvocation:Lcom/firebase/jobdispatcher/JobInvocation;

.field private wasMessageUsed:Z


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/JobInvocation;Landroid/os/Message;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->wasMessageUsed:Z

    .line 43
    iput-object p2, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobFinishedMessage:Landroid/os/Message;

    .line 44
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobInvocation:Lcom/firebase/jobdispatcher/JobInvocation;

    .line 45
    iget-object p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobFinishedMessage:Landroid/os/Message;

    iget-object p2, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobInvocation:Lcom/firebase/jobdispatcher/JobInvocation;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized isBound()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    instance-of p1, p2, Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    if-nez p1, :cond_0

    const-string p1, "FJD.ExternalReceiver"

    const-string p2, "Unknown service connected"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->wasMessageUsed:Z

    if-eqz p1, :cond_1

    const-string p1, "FJD.ExternalReceiver"

    const-string p2, "onServiceConnected Duplicate calls. Ignored."

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 58
    :try_start_2
    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->wasMessageUsed:Z

    .line 61
    check-cast p2, Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    .line 63
    iget-object p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/JobService$LocalBinder;->getService()Lcom/firebase/jobdispatcher/JobService;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobInvocation:Lcom/firebase/jobdispatcher/JobInvocation;

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobFinishedMessage:Landroid/os/Message;

    invoke-virtual {p1, p2, v0}, Lcom/firebase/jobdispatcher/JobService;->start(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onStop()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/JobServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/JobService$LocalBinder;->getService()Lcom/firebase/jobdispatcher/JobService;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobServiceConnection;->jobInvocation:Lcom/firebase/jobdispatcher/JobInvocation;

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/JobService;->stop(Lcom/firebase/jobdispatcher/JobInvocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
