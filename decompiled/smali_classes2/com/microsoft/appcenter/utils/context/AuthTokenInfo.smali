.class public Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;
.super Ljava/lang/Object;
.source "AuthTokenInfo.java"


# static fields
.field private static final EXPIRATION_OFFSET_TO_REFRESH_SEC:I = 0x258


# instance fields
.field private final mAuthToken:Ljava/lang/String;

.field private final mEndTime:Ljava/util/Date;

.field private final mStartTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0, v0}, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mAuthToken:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mStartTime:Ljava/util/Date;

    .line 55
    iput-object p3, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mEndTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mStartTime:Ljava/util/Date;

    return-object v0
.end method

.method isAboutToExpire()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mEndTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/16 v2, 0x258

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 69
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/context/AuthTokenInfo;->mEndTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method
