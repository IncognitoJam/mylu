.class public Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;
.super Ljava/lang/Object;
.source "DefaultJWTClaimsVerifier.java"

# interfaces
.implements Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
.implements Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
.implements Lcom/nimbusds/jwt/proc/ClockSkewAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
        "TC;>;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;",
        "Lcom/nimbusds/jwt/proc/ClockSkewAware;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CLOCK_SKEW_SECONDS:I = 0x3c

.field private static final EXPIRED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

.field private static final JWT_BEFORE_USE_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;


# instance fields
.field private maxClockSkew:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string v1, "Expired JWT"

    invoke-direct {v0, v1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->EXPIRED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 68
    new-instance v0, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string v1, "JWT before use time"

    invoke-direct {v0, v1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->JWT_BEFORE_USE_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 74
    iput v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    return-void
.end method


# virtual methods
.method public getMaxClockSkew()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    return v0
.end method

.method public setMaxClockSkew(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 101
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget v1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    int-to-long v1, v1

    invoke-static {v0, p2, v1, v2}, Lcom/nimbusds/jwt/util/DateUtils;->isAfter(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->EXPIRED_JWT_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    throw p1

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getNotBeforeTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 116
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->maxClockSkew:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->isBefore(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    sget-object p1, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->JWT_BEFORE_USE_EXCEPTION:Lcom/nimbusds/jwt/proc/BadJWTException;

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
