.class public interface abstract Lcom/nimbusds/jose/proc/JWSVerifierFactory;
.super Ljava/lang/Object;
.source "JWSVerifierFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSProvider;


# virtual methods
.method public abstract createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method
