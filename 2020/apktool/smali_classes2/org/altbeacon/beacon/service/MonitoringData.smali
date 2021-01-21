.class public Lorg/altbeacon/beacon/service/MonitoringData;
.super Ljava/lang/Object;
.source "MonitoringData.java"


# static fields
.field private static final INSIDE_KEY:Ljava/lang/String; = "inside"

.field private static final REGION_KEY:Ljava/lang/String; = "region"

.field private static final TAG:Ljava/lang/String; = "MonitoringData"


# instance fields
.field private final mInside:Z

.field private final mRegion:Lorg/altbeacon/beacon/Region;


# direct methods
.method public constructor <init>(ZLorg/altbeacon/beacon/Region;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mInside:Z

    .line 40
    iput-object p2, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mRegion:Lorg/altbeacon/beacon/Region;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lorg/altbeacon/beacon/service/MonitoringData;
    .locals 2

    .line 57
    const-class v0, Lorg/altbeacon/beacon/Region;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "region"

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "inside"

    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 63
    new-instance v1, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v1, p0, v0}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    return-object v1
.end method


# virtual methods
.method public getRegion()Lorg/altbeacon/beacon/Region;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mRegion:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public isInside()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mInside:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    iget-object v1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mRegion:Lorg/altbeacon/beacon/Region;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/MonitoringData;->mInside:Z

    const-string v2, "inside"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
