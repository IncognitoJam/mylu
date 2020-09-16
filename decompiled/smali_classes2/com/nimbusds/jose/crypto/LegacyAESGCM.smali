.class Lcom/nimbusds/jose/crypto/LegacyAESGCM;
.super Ljava/lang/Object;
.source "LegacyAESGCM.java"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final AUTH_TAG_BIT_LENGTH:I = 0x80


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAESCipher(Ljavax/crypto/SecretKey;Z)Lorg/bouncycastle/crypto/engines/AESEngine;
    .locals 2

    .line 67
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 69
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 71
    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0
.end method

.method private static createAESGCMCipher(Ljavax/crypto/SecretKey;Z[B[B)Lorg/bouncycastle/crypto/modes/GCMBlockCipher;
    .locals 3

    .line 96
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/LegacyAESGCM;->createAESCipher(Ljavax/crypto/SecretKey;Z)Lorg/bouncycastle/crypto/engines/AESEngine;

    move-result-object v0

    .line 99
    new-instance v1, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 101
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/16 p0, 0x80

    invoke-direct {v0, v2, p0, p2, p3}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 105
    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v1
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/LegacyAESGCM;->createAESGCMCipher(Ljavax/crypto/SecretKey;Z[B[B)Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    move-result-object p0

    .line 191
    array-length p1, p2

    array-length p3, p4

    add-int/2addr p1, p3

    new-array v2, p1, [B

    .line 193
    array-length p1, p2

    invoke-static {p2, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    array-length p1, p2

    array-length p2, p4

    invoke-static {p4, v0, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length p1, v2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result p1

    .line 198
    new-array p1, p1, [B

    .line 202
    array-length v4, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result p2

    .line 206
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 210
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t validate GCM authentication tag: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;[B[B[B)Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0, p1, p3}, Lcom/nimbusds/jose/crypto/LegacyAESGCM;->createAESGCMCipher(Ljavax/crypto/SecretKey;Z[B[B)Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    move-result-object p0

    .line 135
    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result p1

    .line 136
    new-array p1, p1, [B

    .line 140
    array-length v4, p2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result p2

    .line 145
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, p0

    const/16 p0, 0x10

    sub-int/2addr p2, p0

    .line 155
    new-array p3, p2, [B

    .line 156
    new-array p0, p0, [B

    .line 158
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v0, p0

    invoke-static {p1, p2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    new-instance p1, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;

    invoke-direct {p1, p3, p0}, Lcom/nimbusds/jose/crypto/AuthenticatedCipherText;-><init>([B[B)V

    return-object p1

    :catch_0
    move-exception p0

    .line 149
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t generate GCM authentication tag: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
