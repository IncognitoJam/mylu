.class Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;
.super Ljava/lang/Object;
.source "BeaconsAndroidModule.java"

# interfaces
.implements Lorg/altbeacon/beacon/RangeNotifier;


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

    .line 342
    iput-object p1, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rangingConsumer didRangeBeaconsInRegion, beacons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeaconsAndroidModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rangingConsumer didRangeBeaconsInRegion, region: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v0}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$000(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule$2;->this$0:Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;

    invoke-static {v2, p1, p2}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$300(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "beaconsDidRange"

    invoke-static {v0, v1, p2, p1}, Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;->access$200(Lcom/mackentoch/beaconsandroid/BeaconsAndroidModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
