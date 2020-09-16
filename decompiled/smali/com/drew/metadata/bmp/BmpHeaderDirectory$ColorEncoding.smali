.class public final enum Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;
.super Ljava/lang/Enum;
.source "BmpHeaderDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/bmp/BmpHeaderDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

.field public static final enum RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    const/4 v1, 0x0

    const-string v2, "RGB"

    invoke-direct {v0, v2, v1, v1}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    const/4 v0, 0x1

    .line 356
    new-array v0, v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    sget-object v2, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    aput-object v2, v0, v1

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 362
    iput p3, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->value:I

    return-void
.end method

.method public static typeOf(I)Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    .line 371
    sget-object p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;
    .locals 1

    .line 356
    const-class v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;
    .locals 1

    .line 356
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    invoke-virtual {v0}, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorEncoding;->value:I

    return v0
.end method
