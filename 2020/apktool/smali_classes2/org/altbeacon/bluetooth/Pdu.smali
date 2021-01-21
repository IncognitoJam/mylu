.class public Lorg/altbeacon/bluetooth/Pdu;
.super Ljava/lang/Object;
.source "Pdu.java"


# static fields
.field public static final GATT_SERVICE_UUID_PDU_TYPE:B = 0x16t

.field public static final MANUFACTURER_DATA_PDU_TYPE:B = -0x1t

.field private static final TAG:Ljava/lang/String; = "Pdu"


# instance fields
.field private mBytes:[B

.field private mDeclaredLength:I

.field private mEndIndex:I

.field private mStartIndex:I

.field private mType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BI)Lorg/altbeacon/bluetooth/Pdu;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 31
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 32
    aget-byte v0, p0, p1

    if-lez v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 34
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 36
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 37
    new-instance v3, Lorg/altbeacon/bluetooth/Pdu;

    invoke-direct {v3}, Lorg/altbeacon/bluetooth/Pdu;-><init>()V

    add-int/2addr p1, v0

    .line 41
    iput p1, v3, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    .line 42
    iget p1, v3, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    array-length v4, p0

    if-lt p1, v4, :cond_0

    .line 43
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    .line 45
    :cond_0
    iput-byte v1, v3, Lorg/altbeacon/bluetooth/Pdu;->mType:B

    .line 46
    iput v0, v3, Lorg/altbeacon/bluetooth/Pdu;->mDeclaredLength:I

    .line 47
    iput v2, v3, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    .line 48
    iput-object p0, v3, Lorg/altbeacon/bluetooth/Pdu;->mBytes:[B

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method


# virtual methods
.method public getActualLength()I
    .locals 2

    .line 76
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    iget v1, p0, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDeclaredLength()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mDeclaredLength:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mStartIndex:I

    return v0
.end method

.method public getType()B
    .locals 1

    .line 60
    iget-byte v0, p0, Lorg/altbeacon/bluetooth/Pdu;->mType:B

    return v0
.end method
