.class public final enum Lcom/drew/imaging/png/PngColorType;
.super Ljava/lang/Enum;
.source "PngColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/imaging/png/PngColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/imaging/png/PngColorType;

.field public static final enum Greyscale:Lcom/drew/imaging/png/PngColorType;

.field public static final enum GreyscaleWithAlpha:Lcom/drew/imaging/png/PngColorType;

.field public static final enum IndexedColor:Lcom/drew/imaging/png/PngColorType;

.field public static final enum TrueColor:Lcom/drew/imaging/png/PngColorType;

.field public static final enum TrueColorWithAlpha:Lcom/drew/imaging/png/PngColorType;


# instance fields
.field private final _allowedBitDepths:[I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _description:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _numericValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 34
    new-instance v6, Lcom/drew/imaging/png/PngColorType;

    const/4 v7, 0x5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    const-string v1, "Greyscale"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Greyscale"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drew/imaging/png/PngColorType;-><init>(Ljava/lang/String;IILjava/lang/String;[I)V

    sput-object v6, Lcom/drew/imaging/png/PngColorType;->Greyscale:Lcom/drew/imaging/png/PngColorType;

    .line 39
    new-instance v0, Lcom/drew/imaging/png/PngColorType;

    const/4 v1, 0x2

    new-array v13, v1, [I

    fill-array-data v13, :array_1

    const-string v9, "TrueColor"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "True Color"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/drew/imaging/png/PngColorType;-><init>(Ljava/lang/String;IILjava/lang/String;[I)V

    sput-object v0, Lcom/drew/imaging/png/PngColorType;->TrueColor:Lcom/drew/imaging/png/PngColorType;

    .line 44
    new-instance v0, Lcom/drew/imaging/png/PngColorType;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const-string v15, "IndexedColor"

    const/16 v16, 0x2

    const/16 v17, 0x3

    const-string v18, "Indexed Color"

    move-object v14, v0

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/drew/imaging/png/PngColorType;-><init>(Ljava/lang/String;IILjava/lang/String;[I)V

    sput-object v0, Lcom/drew/imaging/png/PngColorType;->IndexedColor:Lcom/drew/imaging/png/PngColorType;

    .line 49
    new-instance v0, Lcom/drew/imaging/png/PngColorType;

    new-array v13, v1, [I

    fill-array-data v13, :array_3

    const-string v9, "GreyscaleWithAlpha"

    const/4 v10, 0x3

    const/4 v11, 0x4

    const-string v12, "Greyscale with Alpha"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/drew/imaging/png/PngColorType;-><init>(Ljava/lang/String;IILjava/lang/String;[I)V

    sput-object v0, Lcom/drew/imaging/png/PngColorType;->GreyscaleWithAlpha:Lcom/drew/imaging/png/PngColorType;

    .line 54
    new-instance v0, Lcom/drew/imaging/png/PngColorType;

    new-array v3, v1, [I

    fill-array-data v3, :array_4

    const-string v15, "TrueColorWithAlpha"

    const/16 v16, 0x4

    const/16 v17, 0x6

    const-string v18, "True Color with Alpha"

    move-object v14, v0

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/drew/imaging/png/PngColorType;-><init>(Ljava/lang/String;IILjava/lang/String;[I)V

    sput-object v0, Lcom/drew/imaging/png/PngColorType;->TrueColorWithAlpha:Lcom/drew/imaging/png/PngColorType;

    .line 29
    new-array v0, v7, [Lcom/drew/imaging/png/PngColorType;

    sget-object v3, Lcom/drew/imaging/png/PngColorType;->Greyscale:Lcom/drew/imaging/png/PngColorType;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Lcom/drew/imaging/png/PngColorType;->TrueColor:Lcom/drew/imaging/png/PngColorType;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v3, Lcom/drew/imaging/png/PngColorType;->IndexedColor:Lcom/drew/imaging/png/PngColorType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/drew/imaging/png/PngColorType;->GreyscaleWithAlpha:Lcom/drew/imaging/png/PngColorType;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/imaging/png/PngColorType;->TrueColorWithAlpha:Lcom/drew/imaging/png/PngColorType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/drew/imaging/png/PngColorType;->$VALUES:[Lcom/drew/imaging/png/PngColorType;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;IILjava/lang/String;[I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/drew/imaging/png/PngColorType;->_numericValue:I

    .line 75
    iput-object p4, p0, Lcom/drew/imaging/png/PngColorType;->_description:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/drew/imaging/png/PngColorType;->_allowedBitDepths:[I

    return-void
.end method

.method public static fromNumericValue(I)Lcom/drew/imaging/png/PngColorType;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 59
    const-class v0, Lcom/drew/imaging/png/PngColorType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/png/PngColorType;

    .line 60
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3}, Lcom/drew/imaging/png/PngColorType;->getNumericValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/imaging/png/PngColorType;
    .locals 1

    .line 29
    const-class v0, Lcom/drew/imaging/png/PngColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/png/PngColorType;

    return-object p0
.end method

.method public static values()[Lcom/drew/imaging/png/PngColorType;
    .locals 1

    .line 29
    sget-object v0, Lcom/drew/imaging/png/PngColorType;->$VALUES:[Lcom/drew/imaging/png/PngColorType;

    invoke-virtual {v0}, [Lcom/drew/imaging/png/PngColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/png/PngColorType;

    return-object v0
.end method


# virtual methods
.method public getAllowedBitDepths()[I
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/drew/imaging/png/PngColorType;->_allowedBitDepths:[I

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/drew/imaging/png/PngColorType;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getNumericValue()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/drew/imaging/png/PngColorType;->_numericValue:I

    return v0
.end method
