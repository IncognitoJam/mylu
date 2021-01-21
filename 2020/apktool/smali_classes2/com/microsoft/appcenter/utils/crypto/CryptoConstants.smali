.class Lcom/microsoft/appcenter/utils/crypto/CryptoConstants;
.super Ljava/lang/Object;
.source "CryptoConstants.java"


# static fields
.field static final AES_KEY_SIZE:I = 0x100

.field static final ALGORITHM_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field static final ALIAS_SEPARATOR:Ljava/lang/String; = "."

.field static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field static final CHARSET:Ljava/lang/String; = "UTF-8"

.field static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/PKCS7Padding"
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end field

.field static final CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final ENCRYPT_KEY_LIFETIME_IN_YEARS:I = 0x1

.field static final KEYSTORE_ALIAS_PREFIX:Ljava/lang/String; = "appcenter"

.field static final KEYSTORE_ALIAS_PREFIX_MOBILE_CENTER:Ljava/lang/String; = "mobile.center"

.field static final PROVIDER_ANDROID_M:Ljava/lang/String; = "AndroidKeyStoreBCWorkaround"

.field static final PROVIDER_ANDROID_OLD:Ljava/lang/String; = "AndroidOpenSSL"

.field static final RSA_KEY_SIZE:I = 0x800


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
