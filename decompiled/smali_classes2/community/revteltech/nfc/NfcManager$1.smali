.class Lcommunity/revteltech/nfc/NfcManager$1;
.super Ljava/lang/Object;
.source "NfcManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcommunity/revteltech/nfc/NfcManager;

.field final synthetic val$manager:Lcommunity/revteltech/nfc/NfcManager;


# direct methods
.method constructor <init>(Lcommunity/revteltech/nfc/NfcManager;Lcommunity/revteltech/nfc/NfcManager;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    iput-object p2, p0, Lcommunity/revteltech/nfc/NfcManager$1;->val$manager:Lcommunity/revteltech/nfc/NfcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 4

    .line 974
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->val$manager:Lcommunity/revteltech/nfc/NfcManager;

    invoke-static {v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->access$002(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Landroid/nfc/Tag;

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "readerMode onTagDiscovered"

    .line 975
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-class v1, Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    .line 980
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcommunity/revteltech/nfc/NfcManager;->access$100(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    invoke-static {v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->access$200(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 986
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    const-string v1, "NfcManagerDiscoverTag"

    invoke-static {v0, v1, p1}, Lcommunity/revteltech/nfc/NfcManager;->access$300(Lcommunity/revteltech/nfc/NfcManager;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_1
    return-void
.end method
