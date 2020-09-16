.class public final synthetic Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$SgHHqKrgOJ8vvRnakgUybwmDe2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private final synthetic f$1:[Lcom/google/android/exoplayer2/offline/DownloadAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$SgHHqKrgOJ8vvRnakgUybwmDe2w;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$SgHHqKrgOJ8vvRnakgUybwmDe2w;->f$1:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$SgHHqKrgOJ8vvRnakgUybwmDe2w;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$SgHHqKrgOJ8vvRnakgUybwmDe2w;->f$1:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->lambda$saveActions$2$DownloadManager([Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    return-void
.end method
