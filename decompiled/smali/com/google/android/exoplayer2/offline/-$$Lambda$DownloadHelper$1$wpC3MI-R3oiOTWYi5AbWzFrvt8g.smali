.class public final synthetic Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

.field private final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$1$wpC3MI-R3oiOTWYi5AbWzFrvt8g;->f$2:Ljava/io/IOException;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;->lambda$run$1$DownloadHelper$1(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;Ljava/io/IOException;)V

    return-void
.end method
