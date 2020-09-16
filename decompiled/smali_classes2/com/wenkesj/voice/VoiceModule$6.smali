.class Lcom/wenkesj/voice/VoiceModule$6;
.super Ljava/lang/Object;
.source "VoiceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wenkesj/voice/VoiceModule;->isSpeechAvailable(Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wenkesj/voice/VoiceModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$self:Lcom/wenkesj/voice/VoiceModule;


# direct methods
.method constructor <init>(Lcom/wenkesj/voice/VoiceModule;Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule$6;->this$0:Lcom/wenkesj/voice/VoiceModule;

    iput-object p2, p0, Lcom/wenkesj/voice/VoiceModule$6;->val$self:Lcom/wenkesj/voice/VoiceModule;

    iput-object p3, p0, Lcom/wenkesj/voice/VoiceModule$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/wenkesj/voice/VoiceModule$6;->val$self:Lcom/wenkesj/voice/VoiceModule;

    iget-object v3, v3, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/wenkesj/voice/VoiceModule$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 245
    iget-object v4, p0, Lcom/wenkesj/voice/VoiceModule$6;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
