.class Lcom/google/android/cameraview/SizeMap;
.super Ljava/lang/Object;
.source "SizeMap.java"


# instance fields
.field private final mRatios:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/google/android/cameraview/AspectRatio;",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/cameraview/Size;)Z
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 40
    invoke-virtual {v1, p1}, Lcom/google/android/cameraview/AspectRatio;->matches(Lcom/google/android/cameraview/Size;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 42
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return v2

    .line 51
    :cond_2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 52
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result p1

    invoke-static {v3, p1}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method ratios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/google/android/cameraview/AspectRatio;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/cameraview/AspectRatio;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method
