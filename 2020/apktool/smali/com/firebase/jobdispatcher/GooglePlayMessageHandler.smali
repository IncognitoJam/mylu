.class Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;
.super Landroid/os/Handler;
.source "GooglePlayMessageHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x4

.field static final MSG_RESULT:I = 0x3

.field static final MSG_START_EXEC:I = 0x1

.field static final MSG_STOP_EXEC:I = 0x2


# instance fields
.field private final googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    iput-object p2, p0, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    return-void
.end method

.method private handleStartMessage(Landroid/os/Message;)V
    .locals 3

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string/jumbo v1, "tag"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v2, Lcom/firebase/jobdispatcher/GooglePlayMessengerCallback;

    invoke-direct {v2, p1, v1}, Lcom/firebase/jobdispatcher/GooglePlayMessengerCallback;-><init>(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {p1, v0, v2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->prepareJob(Landroid/os/Bundle;Lcom/firebase/jobdispatcher/JobCallback;)Lcom/firebase/jobdispatcher/JobInvocation;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getExecutionDelegator()Lcom/firebase/jobdispatcher/ExecutionDelegator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->executeJob(Lcom/firebase/jobdispatcher/JobInvocation;)Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x3

    const-string v0, "FJD.GooglePlayReceiver"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Invalid start execution message."

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private handleStopMessage(Landroid/os/Message;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getJobCoder()Lcom/firebase/jobdispatcher/JobCoder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/JobCoder;->decode(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/JobInvocation$Builder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    const-string v0, "FJD.GooglePlayReceiver"

    .line 106
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Invalid stop execution message."

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/jobdispatcher/JobInvocation$Builder;->build()Lcom/firebase/jobdispatcher/JobInvocation;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getExecutionDelegator()Lcom/firebase/jobdispatcher/ExecutionDelegator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->stopJob(Lcom/firebase/jobdispatcher/JobInvocation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "FJD.GooglePlayReceiver"

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->googlePlayReceiver:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 60
    :try_start_0
    iget v2, p1, Landroid/os/Message;->sendingUid:I

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->handleStopMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayMessageHandler;->handleStartMessage(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    const-string p1, "Message was not sent from GCM."

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
