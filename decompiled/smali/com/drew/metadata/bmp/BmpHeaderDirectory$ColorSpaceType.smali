.class public final enum Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;
.super Ljava/lang/Enum;
.source "BmpHeaderDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/bmp/BmpHeaderDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

.field public static final enum LCS_CALIBRATED_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

.field public static final enum LCS_WINDOWS_COLOR_SPACE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

.field public static final enum LCS_sRGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

.field public static final enum PROFILE_EMBEDDED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

.field public static final enum PROFILE_LINKED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 378
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v1, 0x0

    const-string v2, "LCS_CALIBRATED_RGB"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_CALIBRATED_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    .line 381
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v2, 0x1

    const-string v3, "LCS_sRGB"

    const-wide/32 v4, 0x73524742

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_sRGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    .line 384
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v3, 0x2

    const-string v4, "LCS_WINDOWS_COLOR_SPACE"

    const-wide/32 v5, 0x57696e20

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_WINDOWS_COLOR_SPACE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    .line 387
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v4, 0x3

    const-string v5, "PROFILE_LINKED"

    const-wide/32 v6, 0x4c494e4b

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_LINKED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    .line 390
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v5, 0x4

    const-string v6, "PROFILE_EMBEDDED"

    const-wide/32 v7, 0x4d424544

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_EMBEDDED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    const/4 v0, 0x5

    .line 375
    new-array v0, v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    sget-object v6, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_CALIBRATED_RGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_sRGB:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->LCS_WINDOWS_COLOR_SPACE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_LINKED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->PROFILE_EMBEDDED:Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 395
    iput-wide p3, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->value:J

    return-void
.end method

.method public static typeOf(J)Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 404
    invoke-static {}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 406
    iget-wide v4, v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->value:J

    cmp-long v6, v4, p0

    if-nez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;
    .locals 1

    .line 375
    const-class v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;
    .locals 1

    .line 375
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    invoke-virtual {v0}, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 417
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$1;->$SwitchMap$com$drew$metadata$bmp$BmpHeaderDirectory$ColorSpaceType:[I

    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$ColorSpaceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "Embedded Profile"

    return-object v0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented color space type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Linked Profile"

    return-object v0

    :cond_2
    const-string v0, "System Default Color Space, sRGB"

    return-object v0

    :cond_3
    const-string v0, "sRGB Color Space"

    return-object v0

    :cond_4
    const-string v0, "Calibrated RGB"

    return-object v0
.end method
