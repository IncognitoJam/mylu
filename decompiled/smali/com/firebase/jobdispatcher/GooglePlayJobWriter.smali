.class final Lcom/firebase/jobdispatcher/GooglePlayJobWriter;
.super Ljava/lang/Object;
.source "GooglePlayJobWriter.java"


# static fields
.field static final LEGACY_NETWORK_ANY:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LEGACY_NETWORK_CONNECTED:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LEGACY_NETWORK_UNMETERED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LEGACY_RETRY_POLICY_EXPONENTIAL:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LEGACY_RETRY_POLICY_LINEAR:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_PARAM_EXTRAS:Ljava/lang/String; = "extras"

.field static final REQUEST_PARAM_PERSISTED:Ljava/lang/String; = "persisted"

.field static final REQUEST_PARAM_REQUIRED_NETWORK:Ljava/lang/String; = "requiredNetwork"

.field static final REQUEST_PARAM_REQUIRES_CHARGING:Ljava/lang/String; = "requiresCharging"

.field static final REQUEST_PARAM_RETRY_STRATEGY:Ljava/lang/String; = "retryStrategy"

.field static final REQUEST_PARAM_RETRY_STRATEGY_INITIAL_BACKOFF_SECONDS:Ljava/lang/String; = "initial_backoff_seconds"

.field static final REQUEST_PARAM_RETRY_STRATEGY_MAXIMUM_BACKOFF_SECONDS:Ljava/lang/String; = "maximum_backoff_seconds"

.field static final REQUEST_PARAM_RETRY_STRATEGY_POLICY:Ljava/lang/String; = "retry_policy"

.field static final REQUEST_PARAM_SERVICE:Ljava/lang/String; = "service"

.field static final REQUEST_PARAM_TAG:Ljava/lang/String; = "tag"

.field static final REQUEST_PARAM_TRIGGER_TYPE:Ljava/lang/String; = "trigger_type"

.field static final REQUEST_PARAM_TRIGGER_WINDOW_END:Ljava/lang/String; = "window_end"

.field static final REQUEST_PARAM_TRIGGER_WINDOW_FLEX:Ljava/lang/String; = "period_flex"

.field static final REQUEST_PARAM_TRIGGER_WINDOW_PERIOD:Ljava/lang/String; = "period"

.field static final REQUEST_PARAM_TRIGGER_WINDOW_START:Ljava/lang/String; = "window_start"

.field static final REQUEST_PARAM_UPDATE_CURRENT:Ljava/lang/String; = "update_current"


# instance fields
.field private jobCoder:Lcom/firebase/jobdispatcher/JobCoder;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/firebase/jobdispatcher/JobCoder;

    const-string v1, "com.firebase.jobdispatcher."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/jobdispatcher/JobCoder;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->jobCoder:Lcom/firebase/jobdispatcher/JobCoder;

    return-void
.end method

.method private convertConstraintsToLegacyNetConstant(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private convertRetryPolicyToLegacyVersion(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private writeConstraintsToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getConstraints()[I

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/jobdispatcher/Constraint;->compact([I)I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "requiresCharging"

    .line 149
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->convertConstraintsToLegacyNetConstant(I)I

    move-result p1

    const-string v0, "requiredNetwork"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static writeExecutionWindowTriggerToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;)V
    .locals 2

    const-string/jumbo v0, "trigger_type"

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-interface {p0}, Lcom/firebase/jobdispatcher/JobParameters;->isRecurring()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;->getWindowEnd()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "period"

    .line 68
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-virtual {p2}, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;->getWindowEnd()I

    move-result p0

    invoke-virtual {p2}, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;->getWindowStart()I

    move-result p2

    sub-int/2addr p0, p2

    int-to-long v0, p0

    const-string p0, "period_flex"

    .line 70
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;->getWindowStart()I

    move-result p0

    int-to-long v0, p0

    const-string/jumbo p0, "window_start"

    .line 73
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    invoke-virtual {p2}, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;->getWindowEnd()I

    move-result p0

    int-to-long v0, p0

    const-string/jumbo p0, "window_end"

    .line 75
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private static writeImmediateTriggerToBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "trigger_type"

    const/4 v1, 0x2

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "window_start"

    const-wide/16 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "window_end"

    const-wide/16 v1, 0x1e

    .line 83
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private writeRetryStrategyToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getRetryStrategy()Lcom/firebase/jobdispatcher/RetryStrategy;

    move-result-object p1

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/RetryStrategy;->getPolicy()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->convertRetryPolicyToLegacyVersion(I)I

    move-result v1

    const-string v2, "retry_policy"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/RetryStrategy;->getInitialBackoff()I

    move-result v1

    const-string v2, "initial_backoff_seconds"

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/RetryStrategy;->getMaximumBackoff()I

    move-result p1

    const-string v1, "maximum_backoff_seconds"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "retryStrategy"

    .line 119
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private writeTriggerToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTrigger()Lcom/firebase/jobdispatcher/JobTrigger;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/firebase/jobdispatcher/Trigger;->NOW:Lcom/firebase/jobdispatcher/JobTrigger$ImmediateTrigger;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {p2}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeImmediateTriggerToBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 139
    :cond_0
    instance-of v1, v0, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;

    if-eqz v1, :cond_1

    .line 140
    check-cast v0, Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;

    invoke-static {p1, p2, v0}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeExecutionWindowTriggerToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;)V

    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown trigger: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public writeToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 87
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->shouldReplaceCurrent()Z

    move-result v0

    const-string/jumbo v1, "update_current"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getLifetime()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "persisted"

    .line 91
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-class v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeTriggerToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeConstraintsToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeRetryStrategyToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)V

    .line 99
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/JobParameters;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->jobCoder:Lcom/firebase/jobdispatcher/JobCoder;

    invoke-virtual {v1, p1, v0}, Lcom/firebase/jobdispatcher/JobCoder;->encode(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extras"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method
