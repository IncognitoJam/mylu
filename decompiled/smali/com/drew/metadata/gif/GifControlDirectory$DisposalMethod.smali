.class public final enum Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
.super Ljava/lang/Enum;
.source "GifControlDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/gif/GifControlDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisposalMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum DO_NOT_DISPOSE:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum INVALID:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum NOT_SPECIFIED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum RESTORE_TO_BACKGROUND_COLOR:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum RESTORE_TO_PREVIOUS:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

.field public static final enum TO_BE_DEFINED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 93
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v1, 0x0

    const-string v2, "NOT_SPECIFIED"

    invoke-direct {v0, v2, v1}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->NOT_SPECIFIED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    .line 94
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v2, 0x1

    const-string v3, "DO_NOT_DISPOSE"

    invoke-direct {v0, v3, v2}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->DO_NOT_DISPOSE:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    .line 95
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v3, 0x2

    const-string v4, "RESTORE_TO_BACKGROUND_COLOR"

    invoke-direct {v0, v4, v3}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_BACKGROUND_COLOR:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    .line 96
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v4, 0x3

    const-string v5, "RESTORE_TO_PREVIOUS"

    invoke-direct {v0, v5, v4}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_PREVIOUS:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    .line 97
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v5, 0x4

    const-string v6, "TO_BE_DEFINED"

    invoke-direct {v0, v6, v5}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->TO_BE_DEFINED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    .line 98
    new-instance v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v6, 0x5

    const-string v7, "INVALID"

    invoke-direct {v0, v7, v6}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->INVALID:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    const/4 v0, 0x6

    .line 92
    new-array v0, v0, [Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    sget-object v7, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->NOT_SPECIFIED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v7, v0, v1

    sget-object v1, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->DO_NOT_DISPOSE:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_BACKGROUND_COLOR:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_PREVIOUS:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->TO_BE_DEFINED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->INVALID:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->$VALUES:[Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static typeOf(I)Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 110
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->INVALID:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    .line 109
    :pswitch_0
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->TO_BE_DEFINED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    .line 105
    :pswitch_1
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_PREVIOUS:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    .line 104
    :pswitch_2
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->RESTORE_TO_BACKGROUND_COLOR:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    .line 103
    :pswitch_3
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->DO_NOT_DISPOSE:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    .line 102
    :pswitch_4
    sget-object p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->NOT_SPECIFIED:Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
    .locals 1

    .line 92
    const-class v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
    .locals 1

    .line 92
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->$VALUES:[Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    invoke-virtual {v0}, [Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory$1;->$SwitchMap$com$drew$metadata$gif$GifControlDirectory$DisposalMethod:[I

    invoke-virtual {p0}, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "To Be Defined"

    return-object v0

    :pswitch_1
    const-string v0, "Restore to Previous"

    return-object v0

    :pswitch_2
    const-string v0, "Restore to Background Color"

    return-object v0

    :pswitch_3
    const-string v0, "Not Specified"

    return-object v0

    :pswitch_4
    const-string v0, "Invalid value"

    return-object v0

    :pswitch_5
    const-string v0, "Don\'t Dispose"

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
