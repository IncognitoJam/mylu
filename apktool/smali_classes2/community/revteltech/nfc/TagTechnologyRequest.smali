.class Lcommunity/revteltech/nfc/TagTechnologyRequest;
.super Ljava/lang/Object;
.source "TagTechnologyRequest.java"


# static fields
.field static LOG_TAG:Ljava/lang/String; = "NfcManager-tech"


# instance fields
.field mJsCallback:Lcom/facebook/react/bridge/Callback;

.field mTag:Landroid/nfc/Tag;

.field mTech:Landroid/nfc/tech/TagTechnology;

.field mTechType:Ljava/lang/String;

.field mTechTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/react/bridge/Callback;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mJsCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 104
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v0}, Landroid/nfc/tech/TagTechnology;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    sget-object v0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to close tech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method connect(Landroid/nfc/Tag;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "received null tag at connect()"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    iget-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 59
    iget-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Ndef"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_1
    const-string v3, "NfcA"

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_2
    const-string v3, "NfcB"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-static {p1}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_3
    const-string v3, "NfcF"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    invoke-static {p1}, Landroid/nfc/tech/NfcF;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_4
    const-string v3, "NfcV"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    invoke-static {p1}, Landroid/nfc/tech/NfcV;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_5
    const-string v3, "IsoDep"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_6
    const-string v3, "MifareClassic"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 74
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_7
    const-string v3, "MifareUltralight"

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 76
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    .line 79
    :cond_8
    :goto_1
    iget-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    if-nez v3, :cond_9

    goto :goto_2

    .line 84
    :cond_9
    :try_start_0
    sget-object v3, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v3}, Landroid/nfc/tech/TagTechnology;->connect()V

    .line 86
    iput-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTag:Landroid/nfc/Tag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 90
    :catch_0
    sget-object v2, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "fail to connect tech"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    .line 96
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTag:Landroid/nfc/Tag;

    return v0
.end method

.method getPendingCallback()Lcom/facebook/react/bridge/Callback;
    .locals 1

    .line 37
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mJsCallback:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method getTagHandle()Landroid/nfc/Tag;
    .locals 1

    .line 45
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method getTechHandle()Landroid/nfc/tech/TagTechnology;
    .locals 1

    .line 41
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    return-object v0
.end method

.method getTechType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
