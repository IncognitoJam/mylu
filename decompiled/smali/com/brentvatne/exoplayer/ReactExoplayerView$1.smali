.class Lcom/brentvatne/exoplayer/ReactExoplayerView$1;
.super Landroid/os/Handler;
.source "ReactExoplayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/ReactExoplayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;


# direct methods
.method constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 158
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 161
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    .line 162
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 165
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    .line 166
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$100(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/VideoEventEmitter;

    move-result-object v5

    long-to-double v6, v1

    long-to-double v8, v3

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$000(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    long-to-double v10, v1

    invoke-virtual/range {v5 .. v11}, Lcom/brentvatne/exoplayer/VideoEventEmitter;->progressChanged(DDD)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->this$0:Lcom/brentvatne/exoplayer/ReactExoplayerView;

    invoke-static {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->access$200(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
