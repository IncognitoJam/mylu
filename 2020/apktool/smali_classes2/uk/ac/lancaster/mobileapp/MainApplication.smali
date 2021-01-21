.class public Luk/ac/lancaster/mobileapp/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 24
    new-instance v0, Luk/ac/lancaster/mobileapp/MainApplication$1;

    invoke-direct {v0, p0, p0}, Luk/ac/lancaster/mobileapp/MainApplication$1;-><init>(Luk/ac/lancaster/mobileapp/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Luk/ac/lancaster/mobileapp/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 57
    iget-object v0, p0, Luk/ac/lancaster/mobileapp/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    return-void
.end method
