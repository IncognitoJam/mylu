.class Lcom/firebase/jobdispatcher/JobService$LocalBinder;
.super Landroid/os/Binder;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/jobdispatcher/JobService;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/JobService;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$LocalBinder;->this$0:Lcom/firebase/jobdispatcher/JobService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/firebase/jobdispatcher/JobService;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$LocalBinder;->this$0:Lcom/firebase/jobdispatcher/JobService;

    return-object v0
.end method
