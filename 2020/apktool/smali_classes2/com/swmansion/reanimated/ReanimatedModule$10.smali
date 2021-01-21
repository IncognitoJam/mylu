.class Lcom/swmansion/reanimated/ReanimatedModule$10;
.super Ljava/lang/Object;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/ReanimatedModule;->configureProps(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/ReanimatedModule;

.field final synthetic val$nativeProps:Ljava/util/Set;

.field final synthetic val$uiProps:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->this$0:Lcom/swmansion/reanimated/ReanimatedModule;

    iput-object p2, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$nativeProps:Ljava/util/Set;

    iput-object p3, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$uiProps:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$nativeProps:Ljava/util/Set;

    iget-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$uiProps:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/swmansion/reanimated/NodesManager;->configureProps(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
