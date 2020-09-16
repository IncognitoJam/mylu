.class Lcommunity/revteltech/nfc/NfcManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NfcManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReactNativeNfcManager"


# instance fields
.field private context:Landroid/content/Context;

.field private final intentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private isForegroundEnabled:Ljava/lang/Boolean;

.field private isReaderModeEnabled:Ljava/lang/Boolean;

.field private isResumed:Ljava/lang/Boolean;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private readerModeFlags:I

.field private tag:Landroid/nfc/Tag;

.field private final techLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

.field private writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 48
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    .line 50
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 51
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    .line 53
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    .line 54
    iput v0, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    .line 1039
    new-instance v0, Lcommunity/revteltech/nfc/NfcManager$2;

    invoke-direct {v0, p0}, Lcommunity/revteltech/nfc/NfcManager$2;-><init>(Lcommunity/revteltech/nfc/NfcManager;)V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 74
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 75
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    const-string p1, "ReactNativeNfcManager"

    const-string v0, "NfcManager created"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Landroid/nfc/Tag;
    .locals 0

    .line 41
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    return-object p1
.end method

.method static synthetic access$100(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcommunity/revteltech/nfc/NfcManager;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private static appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    const/4 v0, 0x0

    .line 1251
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1252
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 1247
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-static {v0, p0}, Lcommunity/revteltech/nfc/NfcManager;->appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method private enableDisableForegroundDispatch(Z)V
    .locals 5

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableForegroundDispatch, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 958
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 960
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 962
    :try_start_0
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "enableReaderMode"

    .line 968
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "presence"

    const/16 v4, 0x2710

    .line 970
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 971
    new-instance v3, Lcommunity/revteltech/nfc/NfcManager$1;

    invoke-direct {v3, p0, p0}, Lcommunity/revteltech/nfc/NfcManager$1;-><init>(Lcommunity/revteltech/nfc/NfcManager;Lcommunity/revteltech/nfc/NfcManager;)V

    iget v4, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "disableReaderMode"

    .line 991
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    goto :goto_0

    .line 964
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "minSdkVersion must be Honeycomb (19) or later."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    .line 996
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getIntentFilters()[Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getTechLists()[[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_3
    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Illegal State Exception starting NFC. Assuming application is terminating."

    .line 1002
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private getIntentFilters()[Landroid/content/IntentFilter;
    .locals 2

    .line 1015
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/IntentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 1008
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1009
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    .line 1010
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 1011
    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getTechLists()[[Ljava/lang/String;
    .locals 3

    .line 1019
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method private hasPendingRequest()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasTagEventRegistration(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "isSessionAvailable"

    .line 930
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 931
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 6

    .line 231
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 233
    :try_start_0
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_5

    .line 234
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 238
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p2, v3, :cond_1

    const-string p1, "mifareClassicAuthenticate fail: invalid sector %d (max %d)"

    .line 240
    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_1
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    const-string p1, "mifareClassicAuthenticate fail: invalid key (needs length 6 but has %d characters)"

    .line 245
    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 246
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v3, 0x41

    if-ne p1, v3, :cond_3

    .line 252
    invoke-static {p3}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result p1

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {p3}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    .line 258
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: AUTH_FAIL"

    aput-object p2, p1, v1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_4
    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    :cond_5
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 266
    new-array p2, v2, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mifareClassicAuthenticate fail: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: TAG_LOST"

    aput-object p2, p1, v1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 269
    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 1157
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->buildNdefJSON(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1158
    invoke-static {p1}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNativeNfcManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.nfc.extra.TAG"

    .line 1098
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_0
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    if-eqz v3, :cond_1

    .line 1103
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    invoke-direct {p0, v2, p1}, Lcommunity/revteltech/nfc/NfcManager;->writeNdef(Landroid/nfc/Tag;Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;)V

    .line 1107
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    .line 1110
    monitor-exit p0

    return-object v1

    .line 1111
    :cond_1
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 1112
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1113
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1, v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->connect(Landroid/nfc/Tag;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1115
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    iget-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 1117
    :cond_2
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "fail to connect tag"

    aput-object v2, v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 1118
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 1123
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1125
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    .line 1127
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1128
    invoke-static {v2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    .line 1129
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 1130
    invoke-direct {p0, v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string p1, "android.nfc.action.TECH_DISCOVERED"

    .line 1131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1133
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-class v0, Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1134
    invoke-static {v2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    .line 1135
    new-array v0, v5, [Landroid/nfc/NdefMessage;

    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    .line 1137
    :cond_6
    invoke-direct {p0, v2}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string p1, "android.nfc.action.TAG_DISCOVERED"

    .line 1139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1140
    invoke-direct {p0, v2}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    :cond_8
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 1125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private registerTagEvent(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "isReaderModeEnabled"

    .line 889
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    const-string v0, "readerModeFlags"

    .line 890
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    const-string p1, "ReactNativeNfcManager"

    const-string v0, "registerTag"

    .line 892
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 893
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 896
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "*/*"

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    new-array v1, p1, [Ljava/lang/String;

    const-class v2, Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    .line 914
    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 900
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "fail"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B
    .locals 3

    .line 1239
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1240
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1241
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1024
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 1025
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 1026
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendEventWithJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1032
    :try_start_0
    invoke-static {p2}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 1033
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1035
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fireNdefEvent fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNativeNfcManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 1148
    :try_start_0
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->tagToJSON(Landroid/nfc/Tag;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1149
    invoke-static {p1}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private unregisterTagEvent(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "registerTag"

    .line 919
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 920
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 921
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 922
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    .line 925
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private writeNdef(Landroid/nfc/Tag;Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;)V
    .locals 8

    .line 1192
    iget-object v0, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->message:Landroid/nfc/NdefMessage;

    .line 1193
    iget-object v1, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->callback:Lcom/facebook/react/bridge/Callback;

    .line 1194
    iget-boolean v2, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->formatReadOnly:Z

    .line 1195
    iget-boolean p2, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->format:Z

    const-string v3, "writeNdef fail: "

    const-string v4, "ready to writeNdef"

    const-string v5, "ReactNativeNfcManager"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    :try_start_0
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1221
    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "fail to apply ndef tech"

    aput-object p2, p1, v7

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1222
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1223
    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "tag is not writeable"

    aput-object p2, p1, v7

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1224
    :cond_2
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result p2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_3

    .line 1225
    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "tag size is not enough"

    aput-object p2, p1, v7

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    const-string p2, "ready to writeNdef, seriously"

    .line 1227
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 1229
    invoke-virtual {p1, v0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 1230
    new-array p1, v7, [Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1233
    new-array p2, v6, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 1199
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1202
    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "fail to apply ndef formatable tech"

    aput-object p2, p1, v7

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string p2, "ready to format ndef, seriously"

    .line 1204
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    if-eqz v2, :cond_6

    .line 1207
    invoke-virtual {p1, v0}, Landroid/nfc/tech/NdefFormatable;->formatReadOnly(Landroid/nfc/NdefMessage;)V

    goto :goto_1

    .line 1209
    :cond_6
    invoke-virtual {p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 1211
    :goto_1
    new-array p1, v7, [Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1214
    new-array p2, v6, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method buildNdefJSON(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lorg/json/JSONObject;
    .locals 3

    .line 1165
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->ndefToJSON(Landroid/nfc/tech/Ndef;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1172
    :try_start_0
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1173
    aget-object p1, p2, p1

    check-cast p1, Landroid/nfc/NdefMessage;

    const-string v1, "ndefMessage"

    .line 1174
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->messageToJSON(Landroid/nfc/NdefMessage;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "NDEF"

    .line 1176
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1179
    :cond_0
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const-string p1, "ReactNativeNfcManager"

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one ndefMessage but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NfcPlugin"

    const-string v1, "Failed to convert ndefMessage into json"

    .line 1185
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cancelNdefWrite(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    iget-object v0, v0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "cancelled"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    .line 727
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 729
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no writing request available"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 731
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelTechnologyRequest(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cancelled"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 112
    :try_start_2
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 113
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public close(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 592
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 594
    :try_start_0
    iget-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V

    const/4 v2, 0x2

    .line 595
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 598
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 600
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public closeTechnology(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 143
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 578
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 580
    :try_start_0
    new-instance v2, Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;-><init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V

    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 581
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    iget-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    invoke-virtual {p1, v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->connect(Landroid/nfc/Tag;)Z

    const/4 p1, 0x2

    .line 582
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v0

    aput-object v2, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 585
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 587
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCachedNdefMessage(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 181
    new-array v3, v2, [Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const/4 v3, 0x2

    .line 182
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getCachedNdefMessage fail"

    .line 184
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getCachedNdefMessage fail"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_BLOCK_SIZE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_PAGE_SIZE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE_C"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE_UNKNOWN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLaunchTagEvent(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 876
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 878
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fail to get current activity"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 882
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 883
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const/4 v3, 0x2

    .line 884
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getMaxTransceiveLength(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 671
    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 674
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 679
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 680
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 681
    invoke-virtual {v3}, Landroid/nfc/tech/NfcA;->getMaxTransceiveLength()I

    move-result v0

    .line 682
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcB"

    .line 684
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    check-cast v3, Landroid/nfc/tech/NfcB;

    .line 686
    invoke-virtual {v3}, Landroid/nfc/tech/NfcB;->getMaxTransceiveLength()I

    move-result v0

    .line 687
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "NfcF"

    .line 689
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 690
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 691
    invoke-virtual {v3}, Landroid/nfc/tech/NfcF;->getMaxTransceiveLength()I

    move-result v0

    .line 692
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 693
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "NfcV"

    .line 694
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 695
    check-cast v3, Landroid/nfc/tech/NfcV;

    .line 696
    invoke-virtual {v3}, Landroid/nfc/tech/NfcV;->getMaxTransceiveLength()I

    move-result v0

    .line 697
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 698
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "IsoDep"

    .line 699
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 700
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 701
    invoke-virtual {v3}, Landroid/nfc/tech/IsoDep;->getMaxTransceiveLength()I

    move-result v0

    .line 702
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 703
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string v4, "MifareUltralight"

    .line 704
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 705
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 706
    invoke-virtual {v3}, Landroid/nfc/tech/MifareUltralight;->getMaxTransceiveLength()I

    move-result v0

    .line 707
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 708
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-void

    :cond_5
    :try_start_d
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getMaxTransceiveLength not supported"

    .line 710
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_e
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getMaxTransceiveLength fail"

    .line 712
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getMaxTransceiveLength fail"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 716
    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 718
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NfcManager"

    return-object v0
.end method

.method public getNdefMessage(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 199
    new-array v3, v2, [Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const/4 v4, 0x2

    .line 200
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getNdefMessage fail"

    .line 202
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getNdefMessage fail"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getTag(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 156
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Landroid/nfc/tech/Ndef;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 160
    new-array v3, v2, [Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    .line 164
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getTag fail"

    .line 166
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getTag fail"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 172
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public goToNfcSetting(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "goToNfcSetting"

    .line 863
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 866
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "fail to get current activity"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 870
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.NFC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 871
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "isEnabled"

    .line 852
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 855
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isSupported(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "isSupported"

    .line 825
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_0

    .line 828
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "fail to get current activity"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 832
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_1

    .line 833
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    aput-object v3, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v4, "MifareClassic"

    .line 840
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 841
    invoke-static {v0}, Lcommunity/revteltech/nfc/MifareUtil;->isDeviceSupported(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 842
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    aput-object v3, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 847
    :cond_2
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public makeReadOnly(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 517
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/Ndef;

    .line 518
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    move-result v0

    const/4 v3, 0x2

    .line 519
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "makeReadOnly fail"

    .line 521
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "makeReadOnly fail"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareClassicAuthenticateA(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 275
    monitor-enter p0

    const/16 v0, 0x41

    .line 276
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcommunity/revteltech/nfc/NfcManager;->mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    .line 277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mifareClassicAuthenticateB(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 282
    monitor-enter p0

    const/16 v0, 0x42

    .line 283
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcommunity/revteltech/nfc/NfcManager;->mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mifareClassicGetBlockCountInSector(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 292
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicGetBlockCountInSector fail: invalid sector %d (max %d)"

    .line 299
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 300
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 304
    :cond_1
    :try_start_3
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicGetBlockCountInSector fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 306
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicGetBlockCountInSector fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 311
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicGetSectorCount(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 319
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 326
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 322
    :cond_1
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "mifareClassicGetSectorCount fail: TYPE_UNKNOWN"

    aput-object v3, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 328
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mifareClassicGetSectorCount fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 331
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 333
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareClassicReadBlock(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 368
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicReadBlock fail: invalid block %d (max %d)"

    .line 375
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 376
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    const/16 v3, 0x10

    .line 380
    :try_start_3
    new-array v3, v3, [B

    .line 381
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object p1

    .line 383
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 384
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 371
    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadBlock fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 388
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicReadBlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 386
    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadBlock fail: TAG_LOST"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 391
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 393
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicReadSector(ILcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 401
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_3

    .line 402
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicReadSector fail: invalid sector %d (max %d)"

    .line 408
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 409
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 413
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 414
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result v5

    const/16 v6, 0x10

    .line 415
    new-array v6, v6, [B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 417
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object v7

    .line 418
    invoke-static {v3, v7}, Lcommunity/revteltech/nfc/NfcManager;->appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 421
    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    aput-object v3, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 404
    :cond_3
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadSector fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 425
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicReadSector fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 423
    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadSector fail: TAG_LOST"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 428
    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 430
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicSectorToBlock(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 341
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicSectorToBlock fail: invalid sector %d (max %d)"

    .line 348
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 349
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 353
    :cond_1
    :try_start_3
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicSectorToBlock fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 355
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicSectorToBlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 358
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 360
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicWriteBlock(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 438
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string p2, "mifareClassicWriteBlock fail: invalid block %d (max %d)"

    .line 445
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 446
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 448
    :cond_1
    :try_start_3
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_2

    const-string p1, "mifareClassicWriteBlock fail: invalid block size %d (should be %d)"

    .line 450
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 451
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 455
    :cond_2
    :try_start_5
    invoke-static {p2}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p2

    .line 456
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->writeBlock(I[B)V

    .line 458
    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 441
    :cond_3
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicWriteBlock fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/nfc/TagLostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    :try_start_6
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 462
    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mifareClassicWriteBlock fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 460
    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicWriteBlock fail: TAG_LOST"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 465
    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 467
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public mifareUltralightReadPages(ILcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 472
    monitor-enter p0

    .line 473
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 475
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareUltralight;

    .line 476
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareUltralight;->readPages(I)[B

    move-result-object p1

    .line 477
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    const/4 v0, 0x2

    .line 478
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 483
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareUltralight fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareUltralight fail: TAG_LOST"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 486
    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 488
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareUltralightWritePage(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 496
    :try_start_1
    invoke-static {p2}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p2

    .line 497
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareUltralight;

    .line 498
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareUltralight;->writePage(I[B)V

    .line 499
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 504
    new-array p2, v1, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifareUltralight fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "mifareUltralight fail: TAG_LOST"

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 509
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "ReactNativeNfcManager"

    const-string p2, "onActivityResult"

    .line 1077
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHostDestroy()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onDestroy"

    .line 952
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHostPause()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onPause"

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 946
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    .line 947
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    return-void
.end method

.method public onHostResume()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onResume"

    .line 936
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 937
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    .line 938
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "NfcManagerDiscoverTag"

    .line 1085
    invoke-direct {p0, v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method

.method public requestNdefWrite(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 736
    monitor-enter p0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 738
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "you should requestTagEvent first"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 739
    monitor-exit p0

    return-void

    .line 742
    :cond_0
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->hasPendingRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "You can only issue one request at a time"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "format"

    .line 745
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "formatReadOnly"

    .line 746
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    move-object v5, p1

    goto :goto_0

    .line 757
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 758
    new-instance p2, Landroid/nfc/NdefMessage;

    invoke-direct {p2, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    move-object v5, p2

    .line 761
    :goto_0
    new-instance p1, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;-><init>(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/NdefMessage;Lcom/facebook/react/bridge/Callback;ZZ)V

    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 768
    :catch_0
    :try_start_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Incorrect ndef format"

    aput-object p2, p1, v1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 771
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public requestTechnology(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 125
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "you should requestTagEvent first"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->hasPendingRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "You can only issue one request at a time"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;-><init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNdefPushMessage(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 779
    :try_start_1
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 786
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 789
    :cond_0
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    .line 790
    new-array v4, v2, [Landroid/app/Activity;

    invoke-virtual {p1, v3, v0, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 791
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 781
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "cannot get current activity"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNdefPushMessage fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "sendNdefPushMessage fail"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 797
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "please first cancel existing tech or write request"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 799
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setTimeout(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 535
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 539
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 541
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcA;->setTimeout(I)V

    .line 542
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcF"

    .line 544
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 546
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcF;->setTimeout(I)V

    .line 547
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "IsoDep"

    .line 549
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 551
    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 552
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 553
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "MifareClassic"

    .line 554
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    check-cast v3, Landroid/nfc/tech/MifareClassic;

    .line 556
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareClassic;->setTimeout(I)V

    .line 557
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 558
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "MifareUltralight"

    .line 559
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 560
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 561
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareUltralight;->setTimeout(I)V

    .line 562
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 563
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "setTimeout not supported"

    .line 565
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_c
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "setTimeout fail"

    .line 567
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "setTimeout fail"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 571
    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 573
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method public start(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 804
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ReactNativeNfcManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "start"

    .line 806
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 811
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fail to get current activity"

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 815
    :cond_0
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 816
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "not support in this device"

    .line 818
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no nfc support"

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public transceive(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 608
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 611
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 615
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 616
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcA;->transceive([B)[B

    move-result-object p1

    .line 617
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 618
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcB"

    .line 620
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    check-cast v3, Landroid/nfc/tech/NfcB;

    .line 622
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcB;->transceive([B)[B

    move-result-object p1

    .line 623
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 624
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "NfcF"

    .line 626
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 628
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcF;->transceive([B)[B

    move-result-object p1

    .line 629
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 630
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "NfcV"

    .line 632
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    check-cast v3, Landroid/nfc/tech/NfcV;

    .line 634
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object p1

    .line 635
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 636
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 637
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "IsoDep"

    .line 638
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 639
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 640
    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1

    .line 641
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 642
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 643
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string v4, "MifareClassic"

    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 645
    check-cast v3, Landroid/nfc/tech/MifareClassic;

    .line 646
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareClassic;->transceive([B)[B

    move-result-object p1

    .line 647
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 648
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 649
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-void

    :cond_5
    :try_start_d
    const-string v4, "MifareUltralight"

    .line 650
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 651
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 652
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareUltralight;->transceive([B)[B

    move-result-object p1

    .line 653
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 654
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 655
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    return-void

    :cond_6
    :try_start_f
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "transceive not supported"

    .line 657
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_10
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "transceive fail"

    .line 659
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "transceive fail"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 664
    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 666
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p1
.end method

.method public writeNdefMessage(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/Ndef;

    .line 217
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 218
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-virtual {v0, v3}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 219
    new-array p1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "writeNdefMessage fail"

    .line 221
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "writeNdefMessage fail"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 227
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
