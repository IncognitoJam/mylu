.class Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "BeaconLocalBroadcastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor$1;->this$0:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 89
    new-instance v0, Lorg/altbeacon/beacon/IntentHandler;

    invoke-direct {v0}, Lorg/altbeacon/beacon/IntentHandler;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/altbeacon/beacon/IntentHandler;->convertIntentsToCallbacks(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
