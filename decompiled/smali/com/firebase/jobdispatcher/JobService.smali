.class public abstract Lcom/firebase/jobdispatcher/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/JobService$LocalBinder;,
        Lcom/firebase/jobdispatcher/JobService$JobCallback;,
        Lcom/firebase/jobdispatcher/JobService$JobResult;
    }
.end annotation


# static fields
.field static final ACTION_EXECUTE:Ljava/lang/String; = "com.firebase.jobdispatcher.ACTION_EXECUTE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RESULT_FAIL_NORETRY:I = 0x2

.field public static final RESULT_FAIL_RETRY:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "FJD.JobService"


# instance fields
.field private binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

.field private final runningJobs:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/firebase/jobdispatcher/JobService$JobCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    .line 83
    new-instance v0, Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/JobService$LocalBinder;-><init>(Lcom/firebase/jobdispatcher/JobService;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    return-void
.end method


# virtual methods
.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final jobFinished(Lcom/firebase/jobdispatcher/JobParameters;Z)V
    .locals 2
    .param p1    # Lcom/firebase/jobdispatcher/JobParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string p2, "jobFinished called with a null JobParameters"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/JobService$JobCallback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 153
    :goto_0
    invoke-virtual {p1, p2}, Lcom/firebase/jobdispatcher/JobService$JobCallback;->sendResult(I)V

    .line 155
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 168
    iget-object p1, p0, Lcom/firebase/jobdispatcher/JobService;->binder:Lcom/firebase/jobdispatcher/JobService$LocalBinder;

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 160
    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/JobService;->stopSelf(I)V

    const/4 p1, 0x2

    return p1
.end method

.method public abstract onStartJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
.end method

.method public abstract onStopJob(Lcom/firebase/jobdispatcher/JobParameters;)Z
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 175
    iget-object v3, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    iget-object v4, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/jobdispatcher/JobService$JobCallback;

    if-eqz v3, :cond_1

    .line 177
    iget-object v4, v3, Lcom/firebase/jobdispatcher/JobService$JobCallback;->message:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/firebase/jobdispatcher/JobParameters;

    invoke-virtual {p0, v4}, Lcom/firebase/jobdispatcher/JobService;->onStopJob(Lcom/firebase/jobdispatcher/JobParameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/firebase/jobdispatcher/JobService$JobCallback;->sendResult(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 184
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method start(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Message;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p2, "FJD.JobService"

    .line 107
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Job with tag = %s was already running."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/firebase/jobdispatcher/JobService$JobCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/firebase/jobdispatcher/JobService$JobCallback;-><init>(Landroid/os/Message;Lcom/firebase/jobdispatcher/JobService$1;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/JobService;->onStartJob(Lcom/firebase/jobdispatcher/JobParameters;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/JobService$JobCallback;

    invoke-virtual {p1, v2}, Lcom/firebase/jobdispatcher/JobService$JobCallback;->sendResult(I)V

    .line 117
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stop(Lcom/firebase/jobdispatcher/JobInvocation;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->runningJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/JobInvocation;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/JobService$JobCallback;

    if-nez v1, :cond_1

    const-string p1, "FJD.JobService"

    const/4 v1, 0x3

    .line 125
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string v1, "Provided job has already been executed."

    .line 126
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/JobService;->onStopJob(Lcom/firebase/jobdispatcher/JobParameters;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1, p1}, Lcom/firebase/jobdispatcher/JobService$JobCallback;->sendResult(I)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
