.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;,
        Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    }
.end annotation


# static fields
.field static final DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mApiLevel:I

.field private final mContext:Landroid/content/Context;

.field private final mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

.field final mCryptoHandlers:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    sget-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->DEFAULT_CRYPTO_FACTORY:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    .line 160
    iput p3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const/4 p1, 0x0

    const-string p2, "AppCenter"

    const/16 v0, 0x13

    if-lt p3, v0, :cond_0

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 166
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :catch_1
    const-string v0, "Cannot use secure keystore on this device."

    .line 169
    invoke-static {p2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    if-eqz p1, :cond_1

    const/16 v0, 0x17

    if-lt p3, v0, :cond_1

    .line 177
    :try_start_2
    new-instance p3, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;

    invoke-direct {p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesHandler;-><init>()V

    invoke-direct {p0, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string p3, "Cannot use modern encryption on this device."

    .line 179
    invoke-static {p2, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 190
    :try_start_3
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoRsaHandler;-><init>()V

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    const-string p1, "Cannot use old encryption on this device."

    .line 192
    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_2
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;

    invoke-direct {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;-><init>()V

    .line 198
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoNoOpHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(IILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "mobile.center"

    goto :goto_0

    :cond_0
    const-string p3, "appcenter"

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/security/KeyStore$Entry;

    move-result-object p2

    .line 378
    iget-object p4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-interface {p1, p4, v0, p2, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object p2

    .line 379
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-8"

    invoke-direct {p3, p2, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 381
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    iget-object p2, p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    if-eq p1, p2, :cond_0

    .line 382
    invoke-virtual {p0, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 384
    :goto_0
    new-instance p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p2, p3, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    sget-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    .line 211
    :cond_0
    sget-object p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->sInstance:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    return-object p0
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/security/KeyStore$Entry;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 272
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p2, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    return-object p1
.end method

.method private getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;
    .locals 2
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    iget-object v0, p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    iget p1, p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/security/KeyStore$Entry;

    move-result-object p1

    return-object p1
.end method

.method private registerHandler(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 9
    .param p1    # Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 226
    invoke-direct {p0, p1, v2, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-direct {p0, p1, v0, v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-direct {p0, p1, v2, v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object v5

    .line 229
    iget-object v6, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 230
    iget-object v7, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v7, v3}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 231
    iget-object v8, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v8, v4}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 232
    iget-object v8, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v8, v5}, Ljava/security/KeyStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    if-eqz v7, :cond_0

    .line 235
    invoke-virtual {v7, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 239
    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v4, "AppCenter"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating alias: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget-object v5, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {p1, v2, v1, v5}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 250
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    invoke-direct {v4, v3, v0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;-><init>(IILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 344
    new-instance p1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p1, v0, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v1, ":"

    .line 348
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 349
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 350
    :cond_2
    iget-object v3, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    :goto_1
    const-string v4, "Failed to decrypt data."

    const-string v5, "AppCenter"

    if-nez v3, :cond_3

    .line 354
    invoke-static {v5, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p2, p1, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_3
    const/4 v6, 0x1

    .line 360
    :try_start_0
    iget v7, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    aget-object v8, v1, v6

    invoke-direct {p0, v3, v7, v8, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 365
    :catch_0
    :try_start_1
    iget v2, v2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    xor-int/2addr v2, v6

    aget-object v1, v1, v6

    invoke-direct {p0, v3, v2, v1, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getDecryptedData(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;ILjava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 369
    :catch_1
    invoke-static {v5, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance p2, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    invoke-direct {p2, p1, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "AppCenter"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 290
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;

    .line 291
    iget-object v2, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 295
    :try_start_1
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getKeyStoreEntry(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;)Ljava/security/KeyStore$Entry;

    move-result-object v4

    .line 296
    iget-object v5, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget v6, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mApiLevel:I

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v2, v5, v6, v4, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B

    move-result-object v4

    .line 297
    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 307
    :catch_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alias expired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget v4, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    xor-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 309
    iget v1, v1, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    invoke-direct {p0, v2, v1, v3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getAlias(Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;IZ)Ljava/lang/String;

    move-result-object v1

    .line 312
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 318
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    iget-object v4, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1, v4}, Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;->generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    const-string v1, "Failed to encrypt data."

    .line 327
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method getCryptoFactory()Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->mCryptoFactory:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;

    return-object v0
.end method
