.class public interface abstract Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
.super Ljava/lang/Object;
.source "JWTClaimsVerifier.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
