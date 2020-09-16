.class public Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;
.super Ljava/lang/Object;
.source "RNPushNotificationHelper.java"


# static fields
.field private static final DEFAULT_VIBRATION:J = 0x12cL

.field private static final LOG_TAG:Ljava/lang/String; = "RNPushNotificationHelper"

.field private static final NOTIFICATION_OPENED:Ljava/lang/String; = "com.amazonaws.amplify.pushnotification.NOTIFICATION_OPENED"

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:I = 0xea60

.field public static final PREFERENCES_KEY:Ljava/lang/String; = "rn_push_notification"


# instance fields
.field private context:Landroid/content/Context;

.field private final scheduledNotificationsPersistence:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-string v0, "rn_push_notification"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 467
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private notificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private openApp()Z
    .locals 3

    .line 479
    invoke-virtual {p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10200000

    .line 486
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 487
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private scheduleNextNotificationIfRepeating(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "repeatType"

    .line 404
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "repeatTime"

    .line 405
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    if-eqz v1, :cond_8

    const-string v4, "fireDate"

    .line 408
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const-string v7, "minute"

    const-string v8, "hour"

    const-string v9, "day"

    const-string/jumbo v10, "week"

    const-string/jumbo v11, "time"

    .line 410
    filled-new-array {v11, v10, v9, v8, v7}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    const-string v14, "RNPushNotificationHelper"

    const/4 v15, 0x1

    if-nez v12, :cond_0

    .line 414
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v1, v0, v13

    const-string v1, "Invalid repeatType specified as %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 418
    :cond_0
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v16, 0x0

    if-eqz v12, :cond_1

    cmp-long v12, v2, v16

    if-gtz v12, :cond_1

    const-string v0, "repeatType specified as time but no repeatTime has been mentioned"

    .line 419
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/4 v13, 0x3

    const/4 v12, 0x2

    sparse-switch v18, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v15, :cond_6

    if-eq v1, v12, :cond_5

    if-eq v1, v13, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    move-wide/from16 v1, v16

    goto :goto_3

    :cond_3
    const-wide/32 v1, 0xea60

    goto :goto_2

    :cond_4
    const-wide/32 v1, 0x36ee80

    goto :goto_2

    :cond_5
    const-wide/32 v1, 0x5265c00

    goto :goto_2

    :cond_6
    const-wide/32 v1, 0x240c8400

    :goto_2
    add-long/2addr v1, v5

    goto :goto_3

    :cond_7
    add-long v1, v5, v2

    :goto_3
    cmp-long v3, v1, v16

    if-eqz v3, :cond_8

    .line 446
    new-array v3, v12, [Ljava/lang/Object;

    const-string v5, "id"

    .line 447
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v15

    const-string v5, "Repeating notification with id %s at time %s"

    .line 446
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-double v1, v1

    .line 448
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 449
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduled(Landroid/os/Bundle;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_4
        0x1839c -> :sswitch_3
        0x30f5e4 -> :sswitch_2
        0x3652cd -> :sswitch_1
        0x379ff4 -> :sswitch_0
    .end sparse-switch
.end method

.method private toScheduleNotificationIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "id"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-class v3, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationPublisher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notificationId"

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearNotifications()V
    .locals 2

    const-string v0, "RNPushNotificationHelper"

    const-string v1, "Clearing alerts from the notification centre"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->notificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public getMainActivityClass()Ljava/lang/Class;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleNotificationOpen()V
    .locals 0

    return-void
.end method

.method public sendNotificationScheduled(Landroid/os/Bundle;)V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RNPushNotificationHelper"

    if-nez v0, :cond_0

    const-string p1, "No activity class found for the scheduled notification"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "message"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "No message specified for the scheduled notification"

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "id"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "No notification ID specified for the scheduled notification"

    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "fireDate"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_3

    const-string p1, "No date specified for the scheduled notification"

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_3
    new-instance v0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationAttributes;

    invoke-direct {v0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationAttributes;-><init>(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationAttributes;->getId()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storing push notification with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 116
    invoke-virtual {v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationAttributes;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-static {v3}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 119
    iget-object v0, p0, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduledCore(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNotificationScheduledCore(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "fireDate"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 132
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->toScheduleNotificationIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x2

    .line 134
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "id"

    .line 135
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const-string p1, "Setting a notification with id %s at time %s"

    .line 134
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "RNPushNotificationHelper"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public sendToNotificationCentre(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "playSound"

    const-string v3, "notification"

    const-string v4, "raw"

    const-string v5, "ongoing"

    const-string v6, "RNPushNotificationHelper"

    .line 145
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "No activity class found for the notification"

    .line 147
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v7, "message"

    .line 151
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "pinpoint.notification.body"

    .line 154
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot send to notification centre because there is no \'message\' field in: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v8, "id"

    .line 162
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, "pinpoint.campaign.campaign_id"

    .line 164
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v0, "No notification ID specified for the notification"

    .line 166
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_2
    iget-object v9, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 172
    iget-object v10, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "title"

    .line 174
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    const-string v11, "pinpoint.notification.title"

    .line 176
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 178
    iget-object v11, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 179
    iget-object v12, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 186
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->notificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    .line 188
    new-instance v13, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v14, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v13, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    const-string/jumbo v13, "ticker"

    .line 190
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    const/4 v13, 0x0

    .line 191
    invoke-virtual {v11, v13}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    const/4 v14, 0x1

    .line 192
    invoke-virtual {v11, v14}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    const-string v15, "autoCancel"

    .line 193
    invoke-virtual {v2, v15, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v11, v15}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 195
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v15, v14, :cond_4

    .line 196
    invoke-virtual {v11, v10}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    const-string v15, "group"

    .line 199
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 201
    invoke-virtual {v11, v15}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 204
    :cond_5
    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v15, "largeIcon"

    .line 206
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "subText"

    .line 208
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 211
    invoke-virtual {v11, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6
    const-string v14, "number"

    .line 214
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 216
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_7
    const-string/jumbo v14, "smallIcon"

    .line 222
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v13, "mipmap"

    if-eqz v14, :cond_8

    .line 225
    :try_start_1
    invoke-virtual {v9, v14, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    :goto_0
    move-object/from16 v16, v7

    goto :goto_1

    :cond_8
    const-string v14, "ic_notification"

    .line 227
    invoke-virtual {v9, v14, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :goto_1
    const-string v7, "ic_launcher"

    if-nez v14, :cond_9

    .line 231
    :try_start_2
    invoke-virtual {v9, v7, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_9

    const v14, 0x108009b

    :cond_9
    if-eqz v15, :cond_a

    .line 239
    invoke-virtual {v9, v15, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 241
    :cond_a
    invoke-virtual {v9, v7, v13, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 244
    :goto_2
    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v13, 0x15

    if-eqz v7, :cond_c

    if-nez v15, :cond_b

    .line 246
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v13, :cond_c

    .line 247
    :cond_b
    invoke-virtual {v11, v9}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 250
    :cond_c
    invoke-virtual {v11, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v7, "bigText"

    .line 251
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    move-object/from16 v7, v16

    .line 258
    :cond_d
    new-instance v9, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 260
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.amazonaws.amplify.pushnotification.NOTIFICATION_OPENED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendNotification: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    .line 265
    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v14

    .line 266
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    const-string v0, "pinpoint.notification.sound"

    .line 267
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v15, "default"

    .line 269
    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 276
    iget-object v14, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v4, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_f

    .line 277
    iget-object v14, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v4, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_f
    const/16 v14, 0x2e

    .line 279
    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v14, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v4, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 283
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "android.resource://"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v14, v0

    .line 286
    :cond_10
    invoke-virtual {v11, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 289
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    const/4 v15, 0x0

    const/16 v9, 0x1a

    if-lt v0, v9, :cond_12

    .line 290
    invoke-virtual {v11, v15}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 291
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 292
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v9, 0x5

    .line 293
    invoke-virtual {v0, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 297
    new-instance v9, Landroid/app/NotificationChannel;

    invoke-direct {v9, v10, v10, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v10, 0x1

    .line 298
    invoke-virtual {v9, v10}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 299
    invoke-virtual {v9, v10}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 300
    invoke-virtual {v9, v14, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 301
    invoke-virtual {v12, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 304
    :cond_12
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 305
    :cond_13
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 308
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v13, :cond_15

    const-string v0, "call"

    .line 309
    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "color"

    .line 311
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 313
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 317
    :cond_15
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 321
    iget-object v0, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const/high16 v9, 0x8000000

    invoke-static {v0, v5, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 324
    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string/jumbo v0, "vibrate"

    .line 326
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "vibrate"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    const-string/jumbo v0, "vibration"

    .line 327
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "vibration"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    goto :goto_4

    :cond_17
    const-wide/16 v13, 0x12c

    :goto_4
    const-wide/16 v17, 0x0

    cmp-long v0, v13, v17

    if-nez v0, :cond_18

    const-wide/16 v13, 0x12c

    :cond_18
    const/4 v0, 0x2

    .line 330
    new-array v0, v0, [J

    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    aput-wide v16, v0, v7

    const/4 v7, 0x1

    aput-wide v13, v0, v7

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_19
    :try_start_3
    const-string v0, "actions"

    .line 335
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Lorg/json/JSONArray;

    const-string v7, "actions"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :cond_1a
    move-object v0, v15

    :goto_5
    move-object v7, v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    const-string v7, "Exception while converting actions to JSON object."

    .line 337
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v15

    :goto_6
    if-eqz v7, :cond_1b

    const/4 v10, 0x0

    .line 345
    :goto_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ge v10, v0, :cond_1b

    .line 348
    :try_start_5
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 354
    :try_start_6
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 355
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "action"

    .line 357
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    iget-object v4, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-static {v4, v5, v13, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v13, 0x0

    .line 361
    invoke-virtual {v11, v13, v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    move-object v4, v0

    const-string v0, "Exception while getting action from actionsArray."

    .line 350
    invoke-static {v6, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x4

    goto :goto_7

    .line 377
    :cond_1b
    iget-object v0, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 378
    iget-object v0, v1, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-static {v0}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 383
    :cond_1c
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 384
    iget v3, v0, Landroid/app/Notification;->defaults:I

    const/4 v4, 0x4

    or-int/2addr v3, v4

    iput v3, v0, Landroid/app/Notification;->defaults:I

    const-string/jumbo v3, "tag"

    .line 386
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "tag"

    .line 387
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v12, v3, v5, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_9

    .line 390
    :cond_1d
    invoke-virtual {v12, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 397
    :goto_9
    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/amplify/pushnotification/modules/RNPushNotificationHelper;->scheduleNextNotificationIfRepeating(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v2, "failed to send push notification"

    .line 399
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void
.end method
