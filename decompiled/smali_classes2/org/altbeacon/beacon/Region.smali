.class public Lorg/altbeacon/beacon/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAC_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "Region"


# instance fields
.field protected final mBluetoothAddress:Ljava/lang/String;

.field protected final mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}\\:[0-9A-Fa-f]{2}$"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Region;->MAC_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Lorg/altbeacon/beacon/Region$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Region$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_0
    invoke-static {v2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-direct {p0, p2}, Lorg/altbeacon/beacon/Region;->validateMac(Ljava/lang/String;)V

    .line 122
    iput-object p2, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    if-eqz p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uniqueId may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0, p3}, Lorg/altbeacon/beacon/Region;->validateMac(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uniqueId may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uniqueId may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateMac(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 294
    sget-object v0, Lorg/altbeacon/beacon/Region;->MAC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mac address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' Must be 6 hex bytes separated by colons."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Region;->clone()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/altbeacon/beacon/Region;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    new-instance v0, Lorg/altbeacon/beacon/Region;

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 209
    instance-of v0, p1, Lorg/altbeacon/beacon/Region;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Lorg/altbeacon/beacon/Region;

    iget-object p1, p1, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId1()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId2()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId3()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    const/4 v0, 0x2

    .line 151
    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hasSameIdentifiers(Lorg/altbeacon/beacon/Region;)Z
    .locals 4

    .line 216
    iget-object v0, p1, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-object v1, p1, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 219
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    .line 222
    :cond_0
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 225
    :cond_1
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z
    .locals 5

    .line 185
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    .line 186
    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Identifier;

    const/4 v3, 0x0

    .line 188
    iget-object v4, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 189
    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    return v1

    .line 196
    :cond_4
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/Identifier;

    if-le v3, v2, :cond_0

    const-string v5, " "

    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, "id"

    .line 247
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 249
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    const-string v4, "null"

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 261
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object p2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
