.class Lorg/reactnative/camera/RNCameraView$3;
.super Ljava/lang/Object;
.source "RNCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraView;->record(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V
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
.method constructor <init>(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    iput-object p2, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lorg/reactnative/camera/RNCameraView$3;->val$cacheDirectory:Ljava/io/File;

    iput-object p4, p0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "orientation"

    const-string v1, "mute"

    const-string v2, "videoBitrate"

    const-string v3, "quality"

    const-string v4, "maxFileSize"

    const-string v5, "maxDuration"

    const-string v6, "E_RECORDING_FAILED"

    const-string v7, "path"

    .line 277
    :try_start_0
    iget-object v8, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$cacheDirectory:Ljava/io/File;

    const-string v8, ".mp4"

    invoke-static {v7, v8}, Lorg/reactnative/camera/utils/RNFileUtils;->getOutputFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v9, v7

    .line 278
    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 279
    :goto_1
    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v7, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v7, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    move v11, v4

    goto :goto_2

    :cond_2
    const/4 v11, -0x1

    :goto_2
    const/4 v4, 0x1

    .line 281
    invoke-static {v4}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v7

    .line 282
    iget-object v8, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 283
    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v7, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lorg/reactnative/camera/RNCameraViewHelper;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    move-object v13, v3

    goto :goto_3

    :cond_3
    move-object v13, v7

    .line 285
    :goto_3
    iget-object v3, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 286
    iget-object v3, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v13, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 290
    :cond_4
    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    move v12, v1

    goto :goto_4

    :cond_5
    const/4 v12, 0x1

    :goto_4
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 296
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 299
    :goto_5
    iget-object v8, p0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    mul-int/lit16 v10, v5, 0x3e8

    invoke-static/range {v8 .. v14}, Lorg/reactnative/camera/RNCameraView;->access$2601(Lorg/reactnative/camera/RNCameraView;Ljava/lang/String;IIZLandroid/media/CamcorderProfile;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reactnative/camera/RNCameraView;->access$502(Lorg/reactnative/camera/RNCameraView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 301
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1}, Lorg/reactnative/camera/RNCameraView;->access$302(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/Promise;)Lcom/facebook/react/bridge/Promise;

    goto :goto_6

    .line 303
    :cond_7
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "Starting video recording failed. Another recording might be in progress."

    invoke-interface {v0, v6, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 306
    :catch_0
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "Starting video recording failed - could not create video file."

    invoke-interface {v0, v6, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
