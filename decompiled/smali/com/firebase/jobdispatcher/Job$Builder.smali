.class public final Lcom/firebase/jobdispatcher/Job$Builder;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Lcom/firebase/jobdispatcher/JobParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConstraints:[I

.field private mExtras:Landroid/os/Bundle;

.field private mLifetime:I

.field private mRecurring:Z

.field private mReplaceCurrent:Z

.field private mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

.field private mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/firebase/jobdispatcher/JobService;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

.field private final mValidator:Lcom/firebase/jobdispatcher/ValidationEnforcer;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/ValidationEnforcer;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v0, Lcom/firebase/jobdispatcher/Trigger;->NOW:Lcom/firebase/jobdispatcher/JobTrigger$ImmediateTrigger;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mLifetime:I

    .line 143
    sget-object v0, Lcom/firebase/jobdispatcher/RetryStrategy;->DEFAULT_EXPONENTIAL:Lcom/firebase/jobdispatcher/RetryStrategy;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mReplaceCurrent:Z

    .line 145
    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRecurring:Z

    .line 148
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mValidator:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/jobdispatcher/Job$Builder;)Ljava/lang/Class;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mServiceClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/jobdispatcher/Job$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/jobdispatcher/Job$Builder;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/jobdispatcher/Job$Builder;)Lcom/firebase/jobdispatcher/JobTrigger;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/firebase/jobdispatcher/Job$Builder;)Lcom/firebase/jobdispatcher/RetryStrategy;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/firebase/jobdispatcher/Job$Builder;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mLifetime:I

    return p0
.end method

.method static synthetic access$600(Lcom/firebase/jobdispatcher/Job$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRecurring:Z

    return p0
.end method

.method static synthetic access$700(Lcom/firebase/jobdispatcher/Job$Builder;)[I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/firebase/jobdispatcher/Job$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mReplaceCurrent:Z

    return p0
.end method


# virtual methods
.method public addConstraint(I)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/2addr v0, v1

    :goto_0
    new-array v0, v0, [I

    .line 158
    iget-object v2, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 160
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v1

    aput p1, v0, v2

    .line 166
    iput-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    return-object p0
.end method

.method public build()Lcom/firebase/jobdispatcher/Job;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mValidator:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    invoke-virtual {v0, p0}, Lcom/firebase/jobdispatcher/ValidationEnforcer;->ensureValid(Lcom/firebase/jobdispatcher/JobParameters;)V

    .line 188
    new-instance v0, Lcom/firebase/jobdispatcher/Job;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/jobdispatcher/Job;-><init>(Lcom/firebase/jobdispatcher/Job$Builder;Lcom/firebase/jobdispatcher/Job$1;)V

    return-object v0
.end method

.method public getConstraints()[I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLifetime()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mLifetime:I

    return v0
.end method

.method public getRetryStrategy()Lcom/firebase/jobdispatcher/RetryStrategy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Lcom/firebase/jobdispatcher/JobTrigger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object v0
.end method

.method public isRecurring()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRecurring:Z

    return v0
.end method

.method public varargs setConstraints([I)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mConstraints:[I

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setLifetime(I)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 258
    iput p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mLifetime:I

    return-object p0
.end method

.method public setRecurring(Z)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRecurring:Z

    return-object p0
.end method

.method public setReplaceCurrent(Z)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mReplaceCurrent:Z

    return-object p0
.end method

.method public setRetryStrategy(Lcom/firebase/jobdispatcher/RetryStrategy;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object p0
.end method

.method public setService(Ljava/lang/Class;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/firebase/jobdispatcher/JobService;",
            ">;)",
            "Lcom/firebase/jobdispatcher/Job$Builder;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mServiceClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setTrigger(Lcom/firebase/jobdispatcher/JobTrigger;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object p0
.end method

.method public shouldReplaceCurrent()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/Job$Builder;->mReplaceCurrent:Z

    return v0
.end method
