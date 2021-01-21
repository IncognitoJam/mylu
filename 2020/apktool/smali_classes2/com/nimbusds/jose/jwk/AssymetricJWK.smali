.class public interface abstract Lcom/nimbusds/jose/jwk/AssymetricJWK;
.super Ljava/lang/Object;
.source "AssymetricJWK.java"


# virtual methods
.method public abstract toKeyPair()Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public abstract toPrivateKey()Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public abstract toPublicKey()Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method
