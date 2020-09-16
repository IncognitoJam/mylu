.class public Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingHeadlessService;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "ReactNativeFirebaseMessagingHeadlessService.java"


# static fields
.field private static final TASK_KEY:Ljava/lang/String; = "ReactNativeFirebaseMessagingHeadlessTask"

.field private static final TIMEOUT_DEFAULT:J = 0xea60L

.field private static final TIMEOUT_JSON_KEY:Ljava/lang/String; = "messaging_android_headless_task_timeout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "message"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 24
    new-instance v6, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 26
    invoke-static {p1}, Lio/invertase/firebase/messaging/ReactNativeFirebaseMessagingSerializer;->remoteMessageToWritableMap(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 27
    invoke-static {}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getSharedInstance()Lio/invertase/firebase/common/ReactNativeFirebaseJSON;

    move-result-object p1

    const-wide/32 v0, 0xea60

    const-string v3, "messaging_android_headless_task_timeout"

    invoke-virtual {p1, v3, v0, v1}, Lio/invertase/firebase/common/ReactNativeFirebaseJSON;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x1

    const-string v1, "ReactNativeFirebaseMessagingHeadlessTask"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object v6
.end method
