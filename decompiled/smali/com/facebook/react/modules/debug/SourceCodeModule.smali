.class public Lcom/facebook/react/modules/debug/SourceCodeModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "SourceCodeModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "SourceCode"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "SourceCode"


# instance fields
.field private final mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/react/modules/debug/SourceCodeModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/facebook/react/modules/debug/SourceCodeModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 42
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getSourceURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No source URL loaded, have you initialised the instance?"

    .line 41
    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "scriptURL"

    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SourceCode"

    return-object v0
.end method