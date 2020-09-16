.class public interface abstract Lcom/firebase/jobdispatcher/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"


# virtual methods
.method public abstract getConstraints()[I
.end method

.method public abstract getExtras()Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLifetime()I
.end method

.method public abstract getRetryStrategy()Lcom/firebase/jobdispatcher/RetryStrategy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getService()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTrigger()Lcom/firebase/jobdispatcher/JobTrigger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isRecurring()Z
.end method

.method public abstract shouldReplaceCurrent()Z
.end method
