.class public Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;
.super Ljava/lang/Object;
.source "RemoteJWKSet.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0xfa

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0xfa

.field public static final DEFAULT_HTTP_SIZE_LIMIT:I = 0xc800


# instance fields
.field private final cachedJWKSet:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation
.end field

.field private final jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

.field private final jwkSetURL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->cachedJWKSet:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_1

    .line 118
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    if-eqz p2, :cond_0

    .line 121
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    const p2, 0xc800

    const/16 v0, 0xfa

    invoke-direct {p1, v0, v0, p2}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWK set URL must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyIDs()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 196
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/ResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->cachedJWKSet:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse remote JWK set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 141
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t retrieve remote JWK set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 217
    iget-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->cachedJWKSet:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nimbusds/jose/jwk/JWKSet;

    if-nez p2, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    .line 223
    :cond_0
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSelector;->getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 239
    :cond_2
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 246
    :cond_3
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    if-nez p2, :cond_4

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 253
    :cond_4
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCachedJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->cachedJWKSet:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/jwk/JWKSet;

    return-object v0
.end method

.method public getJWKSetURL()Ljava/net/URL;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    return-object v0
.end method

.method public getResourceRetriever()Lcom/nimbusds/jose/util/ResourceRetriever;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    return-object v0
.end method
