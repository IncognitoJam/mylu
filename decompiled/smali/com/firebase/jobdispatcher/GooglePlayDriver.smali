.class public final Lcom/firebase/jobdispatcher/GooglePlayDriver;
.super Ljava/lang/Object;
.source "GooglePlayDriver.java"

# interfaces
.implements Lcom/firebase/jobdispatcher/Driver;


# static fields
.field private static final ACTION_SCHEDULE:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_SCHEDULE"

.field static final BACKEND_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final BUNDLE_PARAM_COMPONENT:Ljava/lang/String; = "component"

.field private static final BUNDLE_PARAM_SCHEDULER_ACTION:Ljava/lang/String; = "scheduler_action"

.field private static final BUNDLE_PARAM_TAG:Ljava/lang/String; = "tag"

.field private static final BUNDLE_PARAM_TOKEN:Ljava/lang/String; = "app"

.field private static final INTENT_PARAM_SOURCE:Ljava/lang/String; = "source"

.field private static final INTENT_PARAM_SOURCE_VERSION:Ljava/lang/String; = "source_version"

.field private static final JOB_DISPATCHER_SOURCE_CODE:I = 0x8

.field private static final JOB_DISPATCHER_SOURCE_VERSION_CODE:I = 0x1

.field private static final SCHEDULER_ACTION_CANCEL_ALL:Ljava/lang/String; = "CANCEL_ALL"

.field private static final SCHEDULER_ACTION_CANCEL_TASK:Ljava/lang/String; = "CANCEL_TASK"

.field private static final SCHEDULER_ACTION_SCHEDULE_TASK:Ljava/lang/String; = "SCHEDULE_TASK"


# instance fields
.field private final mAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private final mToken:Landroid/app/PendingIntent;

.field private final mValidator:Lcom/firebase/jobdispatcher/JobValidator;

.field private final mWriter:Lcom/firebase/jobdispatcher/GooglePlayJobWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mAvailable:Z

    .line 76
    iput-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mToken:Landroid/app/PendingIntent;

    .line 78
    new-instance v0, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;

    invoke-direct {v0}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mWriter:Lcom/firebase/jobdispatcher/GooglePlayJobWriter;

    .line 79
    new-instance v0, Lcom/firebase/jobdispatcher/DefaultJobValidator;

    invoke-direct {v0, p1}, Lcom/firebase/jobdispatcher/DefaultJobValidator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mValidator:Lcom/firebase/jobdispatcher/JobValidator;

    return-void
.end method

.method private createScheduleRequest(Lcom/firebase/jobdispatcher/JobParameters;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SCHEDULE_TASK"

    .line 140
    invoke-direct {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createSchedulerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mWriter:Lcom/firebase/jobdispatcher/GooglePlayJobWriter;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/firebase/jobdispatcher/GooglePlayJobWriter;->writeToBundle(Lcom/firebase/jobdispatcher/JobParameters;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private createSchedulerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scheduler_action"

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mToken:Landroid/app/PendingIntent;

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "source"

    const/16 v1, 0x8

    .line 152
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "source_version"

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createCancelRequest(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public cancelAll()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createBatchCancelRequest()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected createBatchCancelRequest()Landroid/content/Intent;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "CANCEL_ALL"

    .line 122
    invoke-direct {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createSchedulerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->getReceiverClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "component"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method protected createCancelRequest(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "CANCEL_TASK"

    .line 114
    invoke-direct {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createSchedulerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tag"

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->getReceiverClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/firebase/jobdispatcher/GooglePlayReceiver;",
            ">;"
        }
    .end annotation

    .line 129
    const-class v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    return-object v0
.end method

.method public getValidator()Lcom/firebase/jobdispatcher/JobValidator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mValidator:Lcom/firebase/jobdispatcher/JobValidator;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public schedule(Lcom/firebase/jobdispatcher/Job;)I
    .locals 1
    .param p1    # Lcom/firebase/jobdispatcher/Job;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayDriver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayDriver;->createScheduleRequest(Lcom/firebase/jobdispatcher/JobParameters;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
