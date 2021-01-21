.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;
.super Ljava/lang/Object;
.source "DefaultJWEDecrypterFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEDecrypterFactory;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 63
    sget-object v1, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object v1, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object v1, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v1, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    sget-object v1, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object v1, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    sget-object v1, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v1, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-void
.end method


# virtual methods
.method public createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    instance-of p1, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz p1, :cond_0

    .line 120
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .line 122
    new-instance p1, Lcom/nimbusds/jose/crypto/RSADecrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSADecrypter;-><init>(Ljava/security/PrivateKey;)V

    goto/16 :goto_1

    .line 117
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 124
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    instance-of p1, p2, Ljava/security/interfaces/ECPrivateKey;

    if-eqz p1, :cond_2

    .line 131
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    .line 132
    new-instance p1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    goto/16 :goto_1

    .line 128
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 134
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    sget-object v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    .line 141
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 142
    new-instance v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 144
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/DirectDecrypter;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    move-object p1, v0

    goto/16 :goto_1

    .line 145
    :cond_4
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 138
    :cond_5
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 150
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    sget-object v0, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_8

    .line 157
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 158
    new-instance v0, Lcom/nimbusds/jose/crypto/AESDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 160
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/AESDecrypter;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 161
    :cond_7
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Lcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 154
    :cond_8
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 166
    :cond_9
    sget-object v0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 167
    sget-object v0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 169
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    if-eqz p1, :cond_a

    .line 173
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    .line 174
    new-instance p2, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;-><init>([B)V

    move-object p1, p2

    .line 182
    :goto_1
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 183
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setProvider(Ljava/security/Provider;)V

    .line 184
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setKeyEncryptionProvider(Ljava/security/Provider;)V

    .line 185
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setMACProvider(Ljava/security/Provider;)V

    .line 186
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setContentEncryptionProvider(Ljava/security/Provider;)V

    return-object p1

    .line 170
    :cond_a
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 178
    :cond_b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Unsupported JWE algorithm or encryption method"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-object v0
.end method

.method public supportedEncryptionMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public supportedJWEAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
