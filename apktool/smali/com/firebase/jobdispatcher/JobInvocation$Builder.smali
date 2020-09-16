.class final Lcom/firebase/jobdispatcher/JobInvocation$Builder;
.super Ljava/lang/Object;
.source "JobInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/JobInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mConstraints:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLifetime:I

.field private mRecurring:Z

.field private mReplaceCurrent:Z

.field private mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

.field private mService:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Lcom/firebase/jobdispatcher/JobTrigger;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Lcom/firebase/jobdispatcher/RetryStrategy;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mRecurring:Z

    return p0
.end method

.method static synthetic access$500(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mLifetime:I

    return p0
.end method

.method static synthetic access$600(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)[I
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mConstraints:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$800(Lcom/firebase/jobdispatcher/JobInvocation$Builder;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mReplaceCurrent:Z

    return p0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method build()Lcom/firebase/jobdispatcher/JobInvocation;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mService:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/firebase/jobdispatcher/JobInvocation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/jobdispatcher/JobInvocation;-><init>(Lcom/firebase/jobdispatcher/JobInvocation$Builder;Lcom/firebase/jobdispatcher/JobInvocation$1;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required fields were not populated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConstraints([I)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mConstraints:[I

    return-object p0
.end method

.method public setLifetime(I)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0

    .line 169
    iput p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mLifetime:I

    return-object p0
.end method

.method public setRecurring(Z)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mRecurring:Z

    return-object p0
.end method

.method public setReplaceCurrent(Z)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mReplaceCurrent:Z

    return-object p0
.end method

.method public setRetryStrategy(Lcom/firebase/jobdispatcher/RetryStrategy;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mRetryStrategy:Lcom/firebase/jobdispatcher/RetryStrategy;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mService:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setTrigger(Lcom/firebase/jobdispatcher/JobTrigger;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;
    .locals 0
    .param p1    # Lcom/firebase/jobdispatcher/JobTrigger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->mTrigger:Lcom/firebase/jobdispatcher/JobTrigger;

    return-object p0
.end method
