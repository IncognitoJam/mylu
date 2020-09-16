.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$2Zac3B-Whc_7swHmcnO1d7h-1Gc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$2Zac3B-Whc_7swHmcnO1d7h-1Gc;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$2Zac3B-Whc_7swHmcnO1d7h-1Gc;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->detachPlayer()V

    return-void
.end method
