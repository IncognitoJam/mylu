.class public Lcom/nimbusds/jose/util/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lcom/nimbusds/jose/util/Resource;->content:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/nimbusds/jose/util/Resource;->contentType:Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The resource content must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/nimbusds/jose/util/Resource;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/nimbusds/jose/util/Resource;->contentType:Ljava/lang/String;

    return-object v0
.end method
