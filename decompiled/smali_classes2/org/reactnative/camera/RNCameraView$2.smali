.class Lorg/reactnative/camera/RNCameraView$2;
.super Ljava/lang/Object;
.source "RNCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraView;->takePicture(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/RNCameraView;

.field final synthetic val$cacheDirectory:Ljava/io/File;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    iput-object p2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lorg/reactnative/camera/RNCameraView$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lorg/reactnative/camera/RNCameraView$2;->val$cacheDirectory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$000(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$100(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$200(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$cacheDirectory:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1}, Lorg/reactnative/camera/RNCameraView;->access$2501(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$000(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Queue;

    move-result-object v1

    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$100(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$200(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "E_TAKE_PICTURE_FAILED"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
