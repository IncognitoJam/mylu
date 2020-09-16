.class public Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;
.super Lcom/facebook/yoga/YogaNodeJNIBase;
.source "YogaNodeJNIPhantomRefs.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>()V

    .line 14
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->mNativePointer:J

    invoke-static {p0, v0, v1}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->registerPhantomRef(Lcom/facebook/yoga/YogaNode;J)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/yoga/YogaConfig;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/yoga/YogaNodeJNIBase;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    .line 19
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->mNativePointer:J

    invoke-static {p0, v0, v1}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->registerPhantomRef(Lcom/facebook/yoga/YogaNode;J)V

    return-void
.end method

.method private static final registerPhantomRef(Lcom/facebook/yoga/YogaNode;J)V
    .locals 1

    .line 30
    new-instance v0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cloneWithoutChildren()Lcom/facebook/yoga/YogaNode;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->cloneWithoutChildren()Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneWithoutChildren()Lcom/facebook/yoga/YogaNodeJNIBase;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->cloneWithoutChildren()Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithoutChildren()Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;
    .locals 3

    .line 24
    invoke-super {p0}, Lcom/facebook/yoga/YogaNodeJNIBase;->cloneWithoutChildren()Lcom/facebook/yoga/YogaNodeJNIBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;

    .line 25
    iget-wide v1, v0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->mNativePointer:J

    invoke-static {v0, v1, v2}, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->registerPhantomRef(Lcom/facebook/yoga/YogaNode;J)V

    return-object v0
.end method
