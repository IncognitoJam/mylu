.class Lcom/wenkesj/voice/VoiceModule$1;
.super Ljava/lang/Object;
.source "VoiceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wenkesj/voice/VoiceModule;->startSpeechWithPermissions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wenkesj/voice/VoiceModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$opts:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    iput-object p2, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$opts:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    iget-object v3, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$opts:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v2, v3}, Lcom/wenkesj/voice/VoiceModule;->access$000(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 138
    iget-object v2, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    invoke-static {v2, v1}, Lcom/wenkesj/voice/VoiceModule;->access$102(Lcom/wenkesj/voice/VoiceModule;Z)Z

    .line 139
    iget-object v2, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 141
    iget-object v3, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
