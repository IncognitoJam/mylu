.class final Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;
.super Lcom/facebook/jni/DestructorThread$Destructor;
.source "YogaNodeJNIPhantomRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/yoga/YogaNodeJNIPhantomRefs;->registerPhantomRef(Lcom/facebook/yoga/YogaNode;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mNativePointer:J

.field final synthetic val$nativePointer:J


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 30
    iput-wide p2, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;->val$nativePointer:J

    invoke-direct {p0, p1}, Lcom/facebook/jni/DestructorThread$Destructor;-><init>(Ljava/lang/Object;)V

    .line 31
    iget-wide p1, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;->val$nativePointer:J

    iput-wide p1, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;->mNativePointer:J

    return-void
.end method


# virtual methods
.method protected destruct()V
    .locals 5

    .line 34
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 35
    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNative;->jni_YGNodeFree(J)V

    .line 36
    iput-wide v2, p0, Lcom/facebook/yoga/YogaNodeJNIPhantomRefs$1;->mNativePointer:J

    :cond_0
    return-void
.end method
