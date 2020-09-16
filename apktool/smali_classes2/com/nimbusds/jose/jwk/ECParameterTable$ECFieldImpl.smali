.class Lcom/nimbusds/jose/jwk/ECParameterTable$ECFieldImpl;
.super Ljava/lang/Object;
.source "ECParameterTable.java"

# interfaces
.implements Ljava/security/spec/ECField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/ECParameterTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECFieldImpl"
.end annotation


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/nimbusds/jose/jwk/ECParameterTable$ECFieldImpl;->size:I

    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/nimbusds/jose/jwk/ECParameterTable$ECFieldImpl;->size:I

    return v0
.end method
