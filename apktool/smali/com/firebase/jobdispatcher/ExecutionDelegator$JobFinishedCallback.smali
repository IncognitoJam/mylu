.class interface abstract Lcom/firebase/jobdispatcher/ExecutionDelegator$JobFinishedCallback;
.super Ljava/lang/Object;
.source "ExecutionDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/ExecutionDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "JobFinishedCallback"
.end annotation


# virtual methods
.method public abstract onJobFinished(Lcom/firebase/jobdispatcher/JobInvocation;I)V
    .param p1    # Lcom/firebase/jobdispatcher/JobInvocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
