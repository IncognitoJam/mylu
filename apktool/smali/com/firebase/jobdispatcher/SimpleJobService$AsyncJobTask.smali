.class Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;
.super Landroid/os/AsyncTask;
.source "SimpleJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/SimpleJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncJobTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final jobParameters:Lcom/firebase/jobdispatcher/JobParameters;

.field private final jobService:Lcom/firebase/jobdispatcher/SimpleJobService;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobService:Lcom/firebase/jobdispatcher/SimpleJobService;

    .line 77
    iput-object p2, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobParameters:Lcom/firebase/jobdispatcher/JobParameters;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;Lcom/firebase/jobdispatcher/SimpleJobService$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;-><init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobService:Lcom/firebase/jobdispatcher/SimpleJobService;

    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobParameters:Lcom/firebase/jobdispatcher/JobParameters;

    invoke-virtual {p1, v0}, Lcom/firebase/jobdispatcher/SimpleJobService;->onRunJob(Lcom/firebase/jobdispatcher/JobParameters;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobService:Lcom/firebase/jobdispatcher/SimpleJobService;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->jobParameters:Lcom/firebase/jobdispatcher/JobParameters;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/firebase/jobdispatcher/SimpleJobService;->access$100(Lcom/firebase/jobdispatcher/SimpleJobService;Lcom/firebase/jobdispatcher/JobParameters;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/SimpleJobService$AsyncJobTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
