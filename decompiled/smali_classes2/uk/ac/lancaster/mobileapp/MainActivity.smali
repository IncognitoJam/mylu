.class public Luk/ac/lancaster/mobileapp/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 2

    .line 32
    new-instance v0, Luk/ac/lancaster/mobileapp/MainActivity$1;

    invoke-virtual {p0}, Luk/ac/lancaster/mobileapp/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Luk/ac/lancaster/mobileapp/MainActivity$1;-><init>(Luk/ac/lancaster/mobileapp/MainActivity;Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "ilancasterlite"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onConfigurationChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "newConfig"

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Luk/ac/lancaster/mobileapp/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
