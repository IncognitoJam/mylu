.class public Lorg/reactnative/camera/utils/ScopedContext;
.super Ljava/lang/Object;
.source "ScopedContext.java"


# instance fields
.field private cacheDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/reactnative/camera/utils/ScopedContext;->cacheDirectory:Ljava/io/File;

    .line 16
    invoke-virtual {p0, p1}, Lorg/reactnative/camera/utils/ScopedContext;->createCacheDirectory(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createCacheDirectory(Landroid/content/Context;)V
    .locals 2

    .line 20
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/Camera/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/reactnative/camera/utils/ScopedContext;->cacheDirectory:Ljava/io/File;

    return-void
.end method

.method public getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/reactnative/camera/utils/ScopedContext;->cacheDirectory:Ljava/io/File;

    return-object v0
.end method
