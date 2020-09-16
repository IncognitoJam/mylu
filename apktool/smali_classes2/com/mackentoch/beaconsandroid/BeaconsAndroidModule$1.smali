.class Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;
.super Ljava/lang/Object;
.source "BeaconsAndroidModule.java"

# interfaces
.implements Lorg/altbeacon/beacon/MonitorNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;


# direct methods
.method constructor <init>(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V
    .locals 0

    return-void
.end method

.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$000(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v2, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$100(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "regionDidEnter"

    invoke-static {v0, v1, v2, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$200(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$000(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$1;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v2, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$100(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "regionDidExit"

    invoke-static {v0, v1, v2, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$200(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
