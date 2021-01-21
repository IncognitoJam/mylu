.class public Lorg/altbeacon/beacon/BeaconIntentProcessor;
.super Landroid/app/IntentService;
.source "BeaconIntentProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconIntentProcessor"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BeaconIntentProcessor"

    .line 56
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 61
    new-instance v0, Lorg/altbeacon/beacon/IntentHandler;

    invoke-direct {v0}, Lorg/altbeacon/beacon/IntentHandler;-><init>()V

    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/altbeacon/beacon/IntentHandler;->convertIntentsToCallbacks(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
