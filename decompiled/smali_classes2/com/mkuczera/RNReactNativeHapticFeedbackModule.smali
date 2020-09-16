.class public Lcom/mkuczera/RNReactNativeHapticFeedbackModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNReactNativeHapticFeedbackModule.java"


# instance fields
.field reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 22
    iput-object p1, p0, Lcom/mkuczera/RNReactNativeHapticFeedbackModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNReactNativeHapticFeedback"

    return-object v0
.end method

.method public trigger(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ignoreAndroidSystemSettings"

    .line 33
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 34
    iget-object v0, p0, Lcom/mkuczera/RNReactNativeHapticFeedbackModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/mkuczera/RNReactNativeHapticFeedbackModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "vibrator"

    invoke-virtual {p2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 39
    new-array v2, v0, [J

    fill-array-data v2, :array_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x6

    const/4 v11, 0x4

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "textHandleMove"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "virtualKey"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "impactMedium"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "contextClick"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "keyboardTap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "longPress"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_6
    const-string v3, "notificationSuccess"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "clockTick"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v3, "keyboardRelease"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v3, "notificationError"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_a
    const-string v3, "virtualKeyRelease"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xe

    goto :goto_1

    :sswitch_b
    const-string v3, "impactLight"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_c
    const-string v3, "impactHeavy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_d
    const-string v3, "keyboardPress"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_e
    const-string v3, "notificationWarning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x9

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x7

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x6

    goto :goto_2

    :pswitch_6
    const/4 v1, 0x4

    goto :goto_2

    .line 59
    :pswitch_7
    new-array v2, v10, [J

    fill-array-data v2, :array_1

    goto :goto_2

    .line 56
    :pswitch_8
    new-array v2, v11, [J

    fill-array-data v2, :array_2

    goto :goto_2

    .line 53
    :pswitch_9
    new-array v2, v11, [J

    fill-array-data v2, :array_3

    goto :goto_2

    .line 50
    :pswitch_a
    new-array v2, v0, [J

    fill-array-data v2, :array_4

    goto :goto_2

    .line 47
    :pswitch_b
    new-array v2, v0, [J

    fill-array-data v2, :array_5

    goto :goto_2

    .line 44
    :pswitch_c
    new-array v2, v0, [J

    fill-array-data v2, :array_6

    :goto_2
    :pswitch_d
    if-eqz v1, :cond_3

    int-to-long v0, v1

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {p2, v2, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ef10fcf -> :sswitch_e
        -0x7e2a6764 -> :sswitch_d
        -0x7189e0df -> :sswitch_c
        -0x714f9c90 -> :sswitch_b
        -0x65d20ded -> :sswitch_a
        -0x5f20cc23 -> :sswitch_9
        -0x493495e0 -> :sswitch_8
        -0x37bb1535 -> :sswitch_7
        -0x31417f68 -> :sswitch_6
        0x6ce9b27 -> :sswitch_5
        0x10eaf63c -> :sswitch_4
        0x4104d519 -> :sswitch_3
        0x48d72c5b -> :sswitch_2
        0x71b4a754 -> :sswitch_1
        0x725d1726 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x14
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x14
        0x28
        0x1e
        0x28
        0x28
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x14
        0x3c
        0x28
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x28
        0x3c
        0x14
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3c
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x28
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x14
    .end array-data
.end method
