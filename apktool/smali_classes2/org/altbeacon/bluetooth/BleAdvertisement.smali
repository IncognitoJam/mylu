.class public Lorg/altbeacon/bluetooth/BleAdvertisement;
.super Ljava/lang/Object;
.source "BleAdvertisement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleAdvertisement"


# instance fields
.field private mBytes:[B

.field private mPdus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    .line 20
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BleAdvertisement;->parsePdus()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mPdus:Ljava/util/List;

    return-void
.end method

.method private parsePdus()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 27
    :cond_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    invoke-static {v2, v1}, Lorg/altbeacon/bluetooth/Pdu;->parse([BI)Lorg/altbeacon/bluetooth/Pdu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v2}, Lorg/altbeacon/bluetooth/Pdu;->getDeclaredLength()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v2, :cond_2

    .line 33
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mBytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getPdus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/altbeacon/bluetooth/Pdu;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BleAdvertisement;->mPdus:Ljava/util/List;

    return-object v0
.end method
