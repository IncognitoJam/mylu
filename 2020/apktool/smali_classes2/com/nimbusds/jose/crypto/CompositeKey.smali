.class final Lcom/nimbusds/jose/crypto/CompositeKey;
.super Ljava/lang/Object;
.source "CompositeKey.java"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final encKey:Ljavax/crypto/SecretKey;

.field private final inputKey:Ljavax/crypto/SecretKey;

.field private final macKey:Ljavax/crypto/SecretKey;

.field private final truncatedMacLength:I


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->inputKey:Ljavax/crypto/SecretKey;

    .line 81
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 83
    array-length v0, p1

    const-string v1, "AES"

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 87
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x10

    const-string v4, "HMACSHA256"

    invoke-direct {v0, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 88
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, v3, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 89
    iput v3, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->truncatedMacLength:I

    goto :goto_0

    .line 91
    :cond_0
    array-length v0, p1

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1

    .line 95
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x18

    const-string v4, "HMACSHA384"

    invoke-direct {v0, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 96
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, v3, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 97
    iput v3, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->truncatedMacLength:I

    goto :goto_0

    .line 100
    :cond_1
    array-length v0, p1

    const/16 v4, 0x40

    if-ne v0, v4, :cond_2

    .line 104
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HMACSHA512"

    invoke-direct {v0, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 105
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, v3, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 106
    iput v3, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->truncatedMacLength:I

    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    const-string v0, "Unsupported AES/CBC/PKCS5Padding/HMAC-SHA2 key length, must be 256, 384 or 512 bits"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAESKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getInputKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->inputKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMACKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getTruncatedMACByteLength()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/nimbusds/jose/crypto/CompositeKey;->truncatedMacLength:I

    return v0
.end method
