.class Lcom/nimbusds/jose/crypto/LegacyConcatKDF;
.super Ljava/lang/Object;
.source "LegacyConcatKDF.java"


# static fields
.field private static final ENCRYPTION_BYTES:[B

.field private static final INTEGRITY_BYTES:[B

.field private static final ONE_BYTES:[B

.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 53
    new-array v1, v0, [B

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ONE_BYTES:[B

    .line 59
    new-array v0, v0, [B

    sput-object v0, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ZERO_BYTES:[B

    const/16 v0, 0xa

    .line 65
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ENCRYPTION_BYTES:[B

    const/16 v0, 0x9

    .line 74
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->INTEGRITY_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0x45t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x6et
        0x74t
        0x65t
        0x67t
        0x72t
        0x69t
        0x74t
        0x79t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCEK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    :try_start_0
    sget-object v1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ONE_BYTES:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 114
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    .line 116
    div-int/lit8 v1, p0, 0x2

    .line 117
    invoke-static {v1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p2, :cond_0

    .line 127
    array-length p1, p2

    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ZERO_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    if-eqz p3, :cond_1

    .line 137
    array-length p1, p3

    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 141
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ZERO_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 145
    :goto_1
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ENCRYPTION_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 159
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SHA-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 168
    array-length p1, p0

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    .line 169
    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p0, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 163
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 149
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateCIK(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;[B[B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    :try_start_0
    sget-object v1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ONE_BYTES:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 206
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 210
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    .line 213
    invoke-static {p0}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p2, :cond_0

    .line 223
    array-length p1, p2

    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 227
    :cond_0
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ZERO_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    if-eqz p3, :cond_1

    .line 233
    array-length p1, p3

    invoke-static {p1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 234
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 237
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->ZERO_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    :goto_1
    sget-object p1, Lcom/nimbusds/jose/crypto/LegacyConcatKDF;->INTEGRITY_BYTES:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 255
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SHA-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "HMACSHA"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3

    :catch_0
    move-exception p0

    .line 259
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 245
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
