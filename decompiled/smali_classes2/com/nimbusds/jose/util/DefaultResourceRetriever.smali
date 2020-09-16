.class public Lcom/nimbusds/jose/util/DefaultResourceRetriever;
.super Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;
.source "DefaultResourceRetriever.java"

# interfaces
.implements Lcom/nimbusds/jose/util/RestrictedResourceRetriever;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;-><init>(III)V

    return-void
.end method


# virtual methods
.method public retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getSizeLimit()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    new-instance v1, Lcom/nimbusds/jose/util/BoundedInputStream;

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getSizeLimit()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v1

    :cond_0
    :try_start_1
    const-string v1, "UTF-8"

    .line 105
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/IOUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 111
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12b

    if-gt v0, v3, :cond_1

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_1

    .line 119
    new-instance v0, Lcom/nimbusds/jose/util/Resource;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/util/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 107
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 108
    throw p1

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t open HTTP(S) connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
