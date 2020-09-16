.class public interface abstract Lcom/microsoft/appcenter/http/ServiceCallback;
.super Ljava/lang/Object;
.source "ServiceCallback.java"


# virtual methods
.method public abstract onCallFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onCallSucceeded(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
