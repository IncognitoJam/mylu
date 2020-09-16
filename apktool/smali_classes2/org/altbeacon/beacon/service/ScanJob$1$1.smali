.class Lorg/altbeacon/beacon/service/ScanJob$1$1;
.super Ljava/lang/Object;
.source "ScanJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/ScanJob$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/altbeacon/beacon/service/ScanJob$1;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/ScanJob$1;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob$1$1;->this$1:Lorg/altbeacon/beacon/service/ScanJob$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$1$1;->this$1:Lorg/altbeacon/beacon/service/ScanJob$1;

    iget-object v0, v0, Lorg/altbeacon/beacon/service/ScanJob$1;->this$0:Lorg/altbeacon/beacon/service/ScanJob;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanJob;->access$300(Lorg/altbeacon/beacon/service/ScanJob;)V

    return-void
.end method
