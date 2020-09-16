.class final Lcom/swmansion/reanimated/nodes/OperatorNode$18;
.super Ljava/lang/Object;
.source "OperatorNode.java"

# interfaces
.implements Lcom/swmansion/reanimated/nodes/OperatorNode$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/OperatorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/swmansion/reanimated/nodes/Node;)D
    .locals 5

    const/4 v0, 0x0

    .line 161
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/swmansion/reanimated/nodes/OperatorNode;->access$200(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    move v3, v1

    const/4 v1, 0x1

    .line 162
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    if-nez v3, :cond_2

    if-nez v3, :cond_1

    .line 163
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/swmansion/reanimated/nodes/OperatorNode;->access$200(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    :goto_3
    return-wide v0
.end method
