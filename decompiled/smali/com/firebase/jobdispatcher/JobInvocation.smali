.class final Lcom/firebase/jobdispatcher/JobInvocation;
.super Ljava/lang/Object;
.source "JobInvocation.java"

# interfaces
.implements Lcom/firebase/jobdispatcher/JobParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    }
.end annotation


# instance fields
.field private final mConstraints:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLifetime:I

.field private final mRecurring:Z

.field private final mReplaceCurrent:Z

.field private final mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

.field private final mService:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$000(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTag:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$100(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mService:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$200(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Lcom/firebase/jobdispatcher/JobTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    .line 56
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$300(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Lcom/firebase/jobdispatcher/RetryStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    .line 57
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$400(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mRecurring:Z

    .line 58
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$500(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mLifetime:I

    .line 59
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$600(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mConstraints:[I

    .line 60
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$700(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mExtras:Landroid/os/Bundle;

    .line 61
    invoke-static {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->access$800(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mReplaceCurrent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/JobInvocation$Builder;Lcom/firebase/jobdispatcher/JobInvocation$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/JobInvocation;-><init>(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    check-cast p1, Lcom/firebase/jobdispatcher/JobInvocation;

    .line 211
    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/JobInvocation;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mService:Ljava/lang/String;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/JobInvocation;->mService:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    iget-object p1, p1, Lcom/firebase/jobdispatcher/JobInvocation;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    .line 213
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getConstraints()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mConstraints:[I

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLifetime()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mLifetime:I

    return v0
.end method

.method public getRetryStrategy()Lcom/firebase/jobdispatcher/RetryStrategy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Lcom/firebase/jobdispatcher/JobTrigger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mService:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRecurring()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mRecurring:Z

    return v0
.end method

.method public shouldReplaceCurrent()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/JobInvocation;->mReplaceCurrent:Z

    return v0
.end method
