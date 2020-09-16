.class public abstract Lcom/firebase/jobdispatcher/SimpleJobService;
.super Lcom/firebase/jobdispatcher/JobService;
.source "SimpleJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;
    }
.end annotation


# instance fields
.field private final runningJobs:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Lcom/firebase/jobdispatcher/JobParameters;",
            "Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/firebase/jobdispatcher/JobService;-><init>()V

    .line 29
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/SimpleJobService;->onJobFinished(Lcom/firebase/jobdispatcher/JobParameters;Z)V

    return-void
.end method

.method private onJobFinished(Lcom/firebase/jobdispatcher/JobParameters;Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/firebase/jobdispatcher/SimpleJobService;->jobFinished(Lcom/firebase/jobdispatcher/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public abstract onRunJob(Lcom/firebase/jobdispatcher/JobParameters;)I
.end method

.method public onStartJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 35
    new-instance v0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;-><init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;Lcom/firebase/jobdispatcher/SimpleJobService$1;)V

    .line 37
    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 41
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1, v1}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->cancel(Z)Z

    .line 53
    monitor-exit v0

    return v1

    .line 55
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
