.class public final enum Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;
.super Ljava/lang/Enum;
.source "BmpHeaderDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/bmp/BmpHeaderDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitmapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum BITMAP:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum OS2_BITMAP_ARRAY:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum OS2_COLOR_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum OS2_COLOR_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum OS2_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

.field public static final enum OS2_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 148
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v1, 0x0

    const-string v2, "BITMAP"

    const/16 v3, 0x4d42

    invoke-direct {v0, v2, v1, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->BITMAP:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    .line 151
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v2, 0x1

    const-string v3, "OS2_BITMAP_ARRAY"

    const/16 v4, 0x4142

    invoke-direct {v0, v3, v2, v4}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_BITMAP_ARRAY:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    .line 154
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v3, 0x2

    const-string v4, "OS2_ICON"

    const/16 v5, 0x4349

    invoke-direct {v0, v4, v3, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    .line 157
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v4, 0x3

    const-string v5, "OS2_COLOR_ICON"

    const/16 v6, 0x4943

    invoke-direct {v0, v5, v4, v6}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_COLOR_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    .line 160
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v5, 0x4

    const-string v6, "OS2_COLOR_POINTER"

    const/16 v7, 0x5043

    invoke-direct {v0, v6, v5, v7}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_COLOR_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    .line 163
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v6, 0x5

    const-string v7, "OS2_POINTER"

    const/16 v8, 0x5450

    invoke-direct {v0, v7, v6, v8}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    const/4 v0, 0x6

    .line 145
    new-array v0, v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    sget-object v7, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->BITMAP:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_BITMAP_ARRAY:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_COLOR_ICON:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_COLOR_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->OS2_POINTER:Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p3, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->value:I

    return-void
.end method

.method public static typeOf(I)Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 177
    invoke-static {}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 179
    iget v4, v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;
    .locals 1

    .line 145
    const-class v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;
    .locals 1

    .line 145
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    invoke-virtual {v0}, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 190
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$1;->$SwitchMap$com$drew$metadata$bmp$BmpHeaderDirectory$BitmapType:[I

    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$BitmapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented bitmap type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Monochrome Pointer"

    return-object v0

    :pswitch_1
    const-string v0, "Monochrome Icon"

    return-object v0

    :pswitch_2
    const-string v0, "Color Pointer"

    return-object v0

    :pswitch_3
    const-string v0, "Color Icon"

    return-object v0

    :pswitch_4
    const-string v0, "Bitmap Array"

    return-object v0

    :pswitch_5
    const-string v0, "Standard"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
