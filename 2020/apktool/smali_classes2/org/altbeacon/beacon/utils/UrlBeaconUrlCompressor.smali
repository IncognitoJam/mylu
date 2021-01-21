.class public Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;
.super Ljava/lang/Object;
.source "UrlBeaconUrlCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;
    }
.end annotation


# static fields
.field private static final EDDYSTONE_URL_BIZ:B = 0xct

.field private static final EDDYSTONE_URL_BIZ_SLASH:B = 0x5t

.field private static final EDDYSTONE_URL_COM:B = 0x7t

.field private static final EDDYSTONE_URL_COM_SLASH:B = 0x0t

.field private static final EDDYSTONE_URL_EDU:B = 0x9t

.field private static final EDDYSTONE_URL_EDU_SLASH:B = 0x2t

.field private static final EDDYSTONE_URL_FQDN_GROUP:I = 0x3

.field private static final EDDYSTONE_URL_GOV:B = 0xdt

.field private static final EDDYSTONE_URL_GOV_SLASH:B = 0x6t

.field private static final EDDYSTONE_URL_INFO:B = 0xbt

.field private static final EDDYSTONE_URL_INFO_SLASH:B = 0x4t

.field private static final EDDYSTONE_URL_NET:B = 0xat

.field private static final EDDYSTONE_URL_NET_SLASH:B = 0x3t

.field private static final EDDYSTONE_URL_ORG:B = 0x8t

.field private static final EDDYSTONE_URL_ORG_SLASH:B = 0x1t

.field private static final EDDYSTONE_URL_PATH_GROUP:I = 0x5

.field private static final EDDYSTONE_URL_PROTOCOL_GROUP:I = 0x1

.field private static final EDDYSTONE_URL_PROTOCOL_HTTP:B = 0x2t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTPS:B = 0x3t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTPS_WWW:B = 0x1t

.field private static final EDDYSTONE_URL_PROTOCOL_HTTP_WWW:B = 0x0t

.field private static final EDDYSTONE_URL_REGEX:Ljava/lang/String; = "^((?i)http|https):\\/\\/((?i)www\\.)?((?:[0-9a-zA-Z_-]+\\.?)+)(/?)([./0-9a-zA-Z_-]*)"

.field private static final EDDYSTONE_URL_SLASH_GROUP:I = 0x4

.field private static final EDDYSTONE_URL_WWW_GROUP:I = 0x2

.field private static final TLD_NOT_ENCODABLE:B = -0x1t

.field private static final URL_HOST_WWW:Ljava/lang/String; = "www."

.field private static final URL_PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field private static final URL_PROTOCOL_HTTPS_COLON_SLASH_SLASH:Ljava/lang/String; = "https://"

.field private static final URL_PROTOCOL_HTTPS_WWW_DOT:Ljava/lang/String; = "https://www."

.field private static final URL_PROTOCOL_HTTP_COLON_SLASH_SLASH:Ljava/lang/String; = "http://"

.field private static final URL_PROTOCOL_HTTP_WWW_DOT:Ljava/lang/String; = "http://www."

.field private static final URL_TLD_DOT_BIZ:Ljava/lang/String; = ".biz"

.field private static final URL_TLD_DOT_BIZ_SLASH:Ljava/lang/String; = ".biz/"

.field private static final URL_TLD_DOT_COM:Ljava/lang/String; = ".com"

.field private static final URL_TLD_DOT_COM_SLASH:Ljava/lang/String; = ".com/"

.field private static final URL_TLD_DOT_EDU:Ljava/lang/String; = ".edu"

.field private static final URL_TLD_DOT_EDU_SLASH:Ljava/lang/String; = ".edu/"

.field private static final URL_TLD_DOT_GOV:Ljava/lang/String; = ".gov"

.field private static final URL_TLD_DOT_GOV_SLASH:Ljava/lang/String; = ".gov/"

.field private static final URL_TLD_DOT_INFO:Ljava/lang/String; = ".info"

.field private static final URL_TLD_DOT_INFO_SLASH:Ljava/lang/String; = ".info/"

.field private static final URL_TLD_DOT_NET:Ljava/lang/String; = ".net"

.field private static final URL_TLD_DOT_NET_SLASH:Ljava/lang/String; = ".net/"

.field private static final URL_TLD_DOT_ORG:Ljava/lang/String; = ".org"

.field private static final URL_TLD_DOT_ORG_SLASH:Ljava/lang/String; = ".org/"

.field private static tldMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    .line 82
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".com/"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".org/"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".edu/"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".net/"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".info/"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".biz/"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".gov/"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".com"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".org"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".edu"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".net"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".info"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".biz"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    new-instance v1, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    const-string v2, ".gov"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;-><init>(Ljava/lang/String;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 173
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "^((?i)http|https):\\/\\/((?i)www\\.)?((?:[0-9a-zA-Z_-]+\\.?)+)(/?)([./0-9a-zA-Z_-]*)"

    .line 175
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 176
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    .line 179
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 183
    :goto_0
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 186
    :cond_1
    aput-byte v2, v0, v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    .line 189
    :goto_1
    aput-byte v2, v0, v1

    .line 195
    :goto_2
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 196
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 197
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 198
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    if-eqz v2, :cond_a

    .line 204
    new-array v6, v4, [B

    const/16 v7, 0x2e

    aput-byte v7, v6, v1

    .line 205
    array-length v7, v2

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    array-length v7, v2

    sub-int/2addr v7, v4

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_4
    if-ge v8, v7, :cond_6

    if-lez v8, :cond_5

    .line 209
    array-length v10, v6

    invoke-static {v6, v1, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v10, v6

    add-int/2addr v9, v10

    .line 213
    :cond_5
    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 214
    array-length v11, v10

    .line 215
    invoke-static {v10, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 220
    :cond_6
    array-length v6, v2

    if-le v6, v4, :cond_9

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v6, v2

    goto :goto_5

    .line 223
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    :goto_5
    invoke-static {v6}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->encodedByteForTopLevelDomain(Ljava/lang/String;)B

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    add-int/lit8 v2, v9, 0x1

    .line 226
    aput-byte v6, v0, v9

    if-eqz v3, :cond_b

    goto :goto_7

    .line 229
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 230
    array-length v3, v2

    .line 231
    invoke-static {v2, v1, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v9, v3

    move v2, v4

    goto :goto_6

    :cond_9
    move v2, v9

    goto :goto_6

    :cond_a
    const/4 v2, 0x1

    :cond_b
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_c

    .line 239
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    :cond_c
    const/4 v3, 0x5

    .line 248
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 256
    :cond_d
    new-array p0, v2, [B

    .line 257
    array-length v2, p0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 260
    :cond_e
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0

    .line 264
    :cond_f
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0
.end method

.method private static encodedByteForTopLevelDomain(Ljava/lang/String;)B
    .locals 4

    .line 101
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    .line 104
    iget-object v3, v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->tld:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-byte v1, v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->encodedByte:B

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static topLevelDomainForByte(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 6

    .line 115
    sget-object v0, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->tldMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;

    .line 118
    iget-byte v4, v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->encodedByte:B

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 120
    iget-object v2, v2, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor$TLDMapEntry;->tld:Ljava/lang/String;

    move-object v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static uncompress([B)Ljava/lang/String;
    .locals 4

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 271
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "https://"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "http://"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "https://www."

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "http://www."

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v1, -0x1

    .line 288
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 289
    aget-byte v3, p0, v2

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    goto :goto_3

    .line 294
    :cond_4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Lorg/altbeacon/beacon/utils/UrlBeaconUrlCompressor;->topLevelDomainForByte(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    int-to-char v1, v3

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    .line 303
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
