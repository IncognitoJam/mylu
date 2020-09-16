.class Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CryptoHandlerEntry"
.end annotation


# instance fields
.field mAliasIndex:I

.field final mAliasIndexMC:I

.field final mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# direct methods
.method constructor <init>(IILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 494
    iput p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndexMC:I

    .line 495
    iput-object p3, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    return-void
.end method
