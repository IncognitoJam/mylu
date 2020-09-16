.class Lcom/nimbusds/jose/crypto/AESGCMKW;
.super Ljava/lang/Object;
.source "AESGCMKW.java"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptCEK(Ljavax/crypto/SecretKey;[BLcom/nimbusds/jose/crypto/AuthenticatedCipherText;ILjava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;->getCipherText()[B

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [B

    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;->getAuthenticationTag()[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nimbusds/jose/crypto/AESGCM;->decrypt(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;)[B

    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result p1

    if-ne p1, p3, :cond_0

    .line 105
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 102
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "CEK key length mismatch: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static encryptCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Lcom/nimbusds/jose/util/Container<",
            "[B>;",
            "Ljavax/crypto/SecretKey;",
            "Ljava/security/Provider;",
            ")",
            "Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 70
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p2, p1, p0, v0, p3}, Lcom/nimbusds/jose/crypto/AESGCM;->encrypt(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[BLjava/security/Provider;)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;

    move-result-object p0

    return-object p0
.end method
