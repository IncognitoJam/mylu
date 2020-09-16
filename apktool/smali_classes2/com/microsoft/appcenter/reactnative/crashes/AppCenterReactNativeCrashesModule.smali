.class public Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "AppCenterReactNativeCrashesModule.java"


# static fields
.field private static final ALWAYS_SEND:I = 0x2

.field private static final CONTENT_TYPE_FIELD:Ljava/lang/String; = "contentType"

.field private static final DATA_FIELD:Ljava/lang/String; = "data"

.field private static final DONT_SEND:I = 0x0

.field private static final FILE_NAME_FIELD:Ljava/lang/String; = "fileName"

.field private static final SEND:I = 0x1

.field private static final TEXT_FIELD:Ljava/lang/String; = "text"


# instance fields
.field private mCrashListener:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    .line 56
    new-instance v0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-direct {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->mCrashListener:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    .line 57
    invoke-static {p2}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->setAutomaticProcessing(Z)V

    .line 58
    iget-object p2, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->mCrashListener:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-static {p2}, Lcom/microsoft/appcenter/crashes/Crashes;->setListener(Lcom/microsoft/appcenter/crashes/CrashesListener;)V

    .line 59
    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/shared/AppCenterReactNativeShared;->configureAppCenter(Landroid/app/Application;)V

    .line 60
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 61
    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    const-class v0, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->start([Ljava/lang/Class;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateTestCrash(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$6;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$6;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AppCenterReactNativeCrashes"

    return-object v0
.end method

.method public getUnprocessedCrashReports(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 174
    invoke-static {}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getUnprocessedErrorReports()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$7;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public hasCrashedInLastSession(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 95
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->hasCrashedInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$2;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public hasReceivedMemoryWarningInLastSession(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->hasReceivedMemoryWarningInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$3;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public isEnabled(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 128
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$5;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$5;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public lastSessionCrashReport(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 82
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getLastSessionCrashReport()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$1;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public notifyWithUserConfirmation(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 169
    :goto_0
    invoke-static {p1}, Lcom/microsoft/appcenter/crashes/Crashes;->notifyUserConfirmation(I)V

    return-void
.end method

.method public sendCrashReportsOrAwaitUserConfirmationForFilteredIds(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 185
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 188
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sendCrashReportsOrAwaitUserConfirmation(Ljava/util/Collection;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p1

    new-instance v0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;

    invoke-direct {v0, p0, p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$8;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public sendErrorAttachments(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "text"

    const-string v1, "fileName"

    .line 202
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 204
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    const/4 v6, 0x0

    .line 206
    invoke-interface {v5, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    invoke-interface {v5, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    :cond_0
    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-static {v5, v6}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithText(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, "data"

    .line 213
    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v8, "contentType"

    .line 215
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {v7, v6, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {p2, v2}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get error attachment for report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setEnabled(ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 117
    invoke-static {p1}, Lcom/microsoft/appcenter/crashes/Crashes;->setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p1

    new-instance v0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$4;

    invoke-direct {v0, p0, p2}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule$4;-><init>(Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public setReactApplicationContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "Setting react context"

    .line 66
    invoke-static {v0}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesUtils;->logDebug(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesModule;->mCrashListener:Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/reactnative/crashes/AppCenterReactNativeCrashesListener;->setReactApplicationContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method
