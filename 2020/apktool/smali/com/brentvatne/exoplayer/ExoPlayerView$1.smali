.class Lcom/brentvatne/exoplayer/ExoPlayerView$1;
.super Ljava/lang/Object;
.source "ExoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/exoplayer/ExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;


# direct methods
.method constructor <init>(Lcom/brentvatne/exoplayer/ExoPlayerView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 180
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 181
    invoke-virtual {v3}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->measure(II)V

    .line 182
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v3}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ExoPlayerView$1;->this$0:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v4}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/brentvatne/exoplayer/ExoPlayerView;->layout(IIII)V

    return-void
.end method
