.class Lcom/microsoft/appcenter/crashes/Crashes$10;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$alwaysSend:Z


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Z)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iput-boolean p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->val$alwaysSend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 839
    iget-boolean v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->val$alwaysSend:Z

    const/4 v1, 0x0

    const-string v2, "AppCenterCrashes"

    if-eqz v0, :cond_0

    const-string v0, "The flag for user confirmation is set to ALWAYS_SEND, will send logs."

    .line 840
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1100(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Automatic processing disabled, will wait for explicit user confirmation."

    .line 847
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$600(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/appcenter/crashes/CrashesListener;->shouldAwaitUserConfirmation()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CrashesListener.shouldAwaitUserConfirmation returned false, will send logs."

    .line 853
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$10;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    goto :goto_0

    :cond_2
    const-string v0, "CrashesListener.shouldAwaitUserConfirmation returned true, wait sending logs."

    .line 856
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
