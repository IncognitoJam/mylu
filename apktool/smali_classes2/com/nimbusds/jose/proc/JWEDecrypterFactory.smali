.class public interface abstract Lcom/nimbusds/jose/proc/JWEDecrypterFactory;
.super Ljava/lang/Object;
.source "JWEDecrypterFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/JWEProvider;


# virtual methods
.method public abstract createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method
