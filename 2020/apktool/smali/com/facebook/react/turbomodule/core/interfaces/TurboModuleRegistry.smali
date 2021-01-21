.class public interface abstract Lcom/facebook/react/turbomodule/core/interfaces/TurboModuleRegistry;
.super Ljava/lang/Object;
.source "TurboModuleRegistry.java"


# virtual methods
.method public abstract getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getModules()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasModule(Ljava/lang/String;)Z
.end method
