.class public final enum Lcom/nimbusds/jose/jwk/KeyUse;
.super Ljava/lang/Enum;
.source "KeyUse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/jwk/KeyUse;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

.field private static final synthetic ENUM$VALUES:[Lcom/nimbusds/jose/jwk/KeyUse;

.field public static final enum SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v1, 0x0

    const-string v2, "SIGNATURE"

    const-string v3, "sig"

    .line 45
    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/jwk/KeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 48
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v2, 0x1

    const-string v3, "ENCRYPTION"

    const-string v4, "enc"

    .line 51
    invoke-direct {v0, v3, v2, v4}, Lcom/nimbusds/jose/jwk/KeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v3, v0, v1

    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->ENUM$VALUES:[Lcom/nimbusds/jose/jwk/KeyUse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 71
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key use identifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static from(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 4

    .line 138
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    .line 144
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 150
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0

    .line 155
    :cond_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    .line 156
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0

    .line 160
    :cond_3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v3, 0x3

    aget-boolean v0, v0, v3

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return-object v1

    .line 166
    :cond_6
    :goto_0
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0

    .line 161
    :cond_7
    :goto_1
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    invoke-static {}, Lcom/nimbusds/jose/jwk/KeyUse;->values()[Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 116
    iget-object v5, v4, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid JWK use: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 1

    .line 1
    const-class v0, Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/jwk/KeyUse;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/jwk/KeyUse;
    .locals 4

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->ENUM$VALUES:[Lcom/nimbusds/jose/jwk/KeyUse;

    array-length v1, v0

    new-array v2, v1, [Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public identifier()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/KeyUse;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyUse;->identifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
