.class public final Lcom/nimbusds/jose/EncryptionMethod;
.super Lcom/nimbusds/jose/Algorithm;
.source "EncryptionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/EncryptionMethod$Family;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cekBitLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const/16 v2, 0x100

    const-string v3, "A128CBC-HS256"

    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 63
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 72
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A192CBC-HS384"

    const/16 v4, 0x180

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 71
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 80
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const/16 v3, 0x200

    const-string v4, "A256CBC-HS512"

    invoke-direct {v0, v4, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 79
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 88
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A128CBC+HS256"

    invoke-direct {v0, v4, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 87
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 96
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A256CBC+HS512"

    invoke-direct {v0, v4, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 95
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 104
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A128GCM"

    const/16 v4, 0x80

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 103
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 112
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A192GCM"

    const/16 v4, 0xc0

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 111
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 120
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A256GCM"

    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    .line 119
    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 170
    iput p3, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;
    .locals 1

    .line 222
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 226
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 230
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 234
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 238
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 242
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 246
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 250
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 256
    :cond_7
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cekBitLength()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return v0
.end method
