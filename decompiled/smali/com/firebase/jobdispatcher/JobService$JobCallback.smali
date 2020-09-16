.class final Lcom/firebase/jobdispatcher/JobService$JobCallback;
.super Ljava/lang/Object;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JobCallback"
.end annotation


# instance fields
.field public final message:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/os/Message;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$JobCallback;->message:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Message;Lcom/firebase/jobdispatcher/JobService$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/JobService$JobCallback;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method sendResult(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$JobCallback;->message:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
