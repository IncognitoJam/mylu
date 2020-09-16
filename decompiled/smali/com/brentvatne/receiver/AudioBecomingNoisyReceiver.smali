.class public Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioBecomingNoisyReceiver.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private listener:Lcom/brentvatne/receiver/BecomingNoisyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    sget-object v0, Lcom/brentvatne/receiver/BecomingNoisyListener;->NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;

    iput-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    invoke-interface {p1}, Lcom/brentvatne/receiver/BecomingNoisyListener;->onAudioBecomingNoisy()V

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 32
    sget-object v0, Lcom/brentvatne/receiver/BecomingNoisyListener;->NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;

    iput-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setListener(Lcom/brentvatne/receiver/BecomingNoisyListener;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->listener:Lcom/brentvatne/receiver/BecomingNoisyListener;

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
