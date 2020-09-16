.class public final Lcom/firebase/jobdispatcher/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Lcom/firebase/jobdispatcher/JobParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/Job$Builder;
    }
.end annotation


# instance fields
.field private final mConstraints:[I

.field private mExtras:Landroid/os/Bundle;

.field private final mLifetime:I

.field private final mRecurring:Z

.field private final mReplaceCurrent:Z

.field private final mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

.field private final mService:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/Job$Builder;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$000(Lcom/firebase/jobdispatcher/Job$Builder;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$000(Lcom/firebase/jobdispatcher/Job$Builder;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mService:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$100(Lcom/firebase/jobdispatcher/Job$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mExtras:Landroid/os/Bundle;

    .line 42
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$200(Lcom/firebase/jobdispatcher/Job$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mTag:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$300(Lcom/firebase/jobdispatcher/Job$Builder;)Lcom/firebase/jobdispatcher/JobTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    .line 44
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$400(Lcom/firebase/jobdispatcher/Job$Builder;)Lcom/firebase/jobdispatcher/RetryStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    .line 45
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$500(Lcom/firebase/jobdispatcher/Job$Builder;)I

    move-result v0

    iput v0, p0, Lcom/firebase/jobdispatcher/Job;->mLifetime:I

    .line 46
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$600(Lcom/firebase/jobdispatcher/Job$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/Job;->mRecurring:Z

    .line 47
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$700(Lcom/firebase/jobdispatcher/Job$Builder;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$700(Lcom/firebase/jobdispatcher/Job$Builder;)[I

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_1
    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mConstraints:[I

    .line 48
    invoke-static {p1}, Lcom/firebase/jobdispatcher/Job$Builder;->access$800(Lcom/firebase/jobdispatcher/Job$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/Job;->mReplaceCurrent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/Job$Builder;Lcom/firebase/jobdispatcher/Job$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/Job;-><init>(Lcom/firebase/jobdispatcher/Job$Builder;)V

    return-void
.end method


# virtual methods
.method public getConstraints()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mConstraints:[I

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLifetime()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/firebase/jobdispatcher/Job;->mLifetime:I

    return v0
.end method

.method public getRetryStrategy()Lcom/firebase/jobdispatcher/RetryStrategy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Lcom/firebase/jobdispatcher/JobTrigger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object v0
.end method

.method public isRecurring()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/Job;->mRecurring:Z

    return v0
.end method

.method public shouldReplaceCurrent()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/Job;->mReplaceCurrent:Z

    return v0
.end method
