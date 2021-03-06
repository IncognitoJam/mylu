.class Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;
.super Landroid/os/Handler;
.source "ExecutionDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/ExecutionDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseHandler"
.end annotation


# instance fields
.field private final executionDelegatorReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/firebase/jobdispatcher/ExecutionDelegator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/firebase/jobdispatcher/ExecutionDelegator;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    iput-object p2, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;->executionDelegatorReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "FJD.ExternalReceiver"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unknown message type received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/firebase/jobdispatcher/JobInvocation;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/firebase/jobdispatcher/ExecutionDelegator$ResponseHandler;->executionDelegatorReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/ExecutionDelegator;

    if-nez v0, :cond_1

    const-string p1, "handleMessage: service was unexpectedly GC\'d, can\'t send job result"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/firebase/jobdispatcher/JobInvocation;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/firebase/jobdispatcher/ExecutionDelegator;->access$000(Lcom/firebase/jobdispatcher/ExecutionDelegator;Lcom/firebase/jobdispatcher/JobInvocation;I)V

    return-void

    :cond_2
    const-string p1, "handleMessage: unknown obj returned"

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
