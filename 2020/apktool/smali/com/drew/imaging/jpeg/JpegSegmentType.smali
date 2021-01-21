.class public final enum Lcom/drew/imaging/jpeg/JpegSegmentType;
.super Ljava/lang/Enum;
.source "JpegSegmentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/imaging/jpeg/JpegSegmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP0:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP3:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP4:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP5:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP6:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP7:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP8:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APP9:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPA:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPB:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPE:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum APPF:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DAC:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DHP:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DQT:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum DRI:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum EXP:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum JPG:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final enum SOI:Lcom/drew/imaging/jpeg/JpegSegmentType;

.field public static final canContainMetadataTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final byteValue:B

.field public final canContainMetadata:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "APP0"

    const/16 v4, -0x20

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 45
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v3, "APP1"

    const/16 v4, -0x1f

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 48
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v3, 0x2

    const-string v4, "APP2"

    const/16 v5, -0x1e

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 51
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v4, 0x3

    const-string v5, "APP3"

    const/16 v6, -0x1d

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 54
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v5, 0x4

    const-string v6, "APP4"

    const/16 v7, -0x1c

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP4:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 57
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v6, 0x5

    const-string v7, "APP5"

    const/16 v8, -0x1b

    invoke-direct {v0, v7, v6, v8, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 60
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v7, 0x6

    const-string v8, "APP6"

    const/16 v9, -0x1a

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 63
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/4 v8, 0x7

    const-string v9, "APP7"

    const/16 v10, -0x19

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 66
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v9, 0x8

    const-string v10, "APP8"

    const/16 v11, -0x18

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP8:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 69
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v10, 0x9

    const-string v11, "APP9"

    const/16 v12, -0x17

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 72
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v11, 0xa

    const-string v12, "APPA"

    const/16 v13, -0x16

    invoke-direct {v0, v12, v11, v13, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPA:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 75
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v12, 0xb

    const-string v13, "APPB"

    const/16 v14, -0x15

    invoke-direct {v0, v13, v12, v14, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPB:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 78
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v13, 0xc

    const-string v14, "APPC"

    const/16 v15, -0x14

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 81
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v14, 0xd

    const-string v15, "APPD"

    const/16 v13, -0x13

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 84
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v13, 0xe

    const-string v15, "APPE"

    const/16 v14, -0x12

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPE:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 87
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v14, "APPF"

    const/16 v15, 0xf

    const/16 v13, -0x11

    invoke-direct {v0, v14, v15, v13, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPF:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 90
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOI"

    const/16 v14, 0x10

    const/16 v15, -0x28

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 93
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DQT"

    const/16 v14, 0x11

    const/16 v15, -0x25

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DQT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 96
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DNL"

    const/16 v14, 0x12

    const/16 v15, -0x24

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 99
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DRI"

    const/16 v14, 0x13

    const/16 v15, -0x23

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DRI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 102
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DHP"

    const/16 v14, 0x14

    const/16 v15, -0x22

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 105
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "EXP"

    const/16 v14, 0x15

    const/16 v15, -0x21

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->EXP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 108
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DHT"

    const/16 v14, 0x16

    const/16 v15, -0x3c

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 111
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "DAC"

    const/16 v14, 0x17

    const/16 v15, -0x34

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->DAC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 114
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF0"

    const/16 v14, 0x18

    const/16 v15, -0x40

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 117
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF1"

    const/16 v14, 0x19

    const/16 v15, -0x3f

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 120
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF2"

    const/16 v14, 0x1a

    const/16 v15, -0x3e

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 123
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF3"

    const/16 v14, 0x1b

    const/16 v15, -0x3d

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 129
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF5"

    const/16 v14, 0x1c

    const/16 v15, -0x3b

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 132
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF6"

    const/16 v14, 0x1d

    const/16 v15, -0x3a

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 135
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF7"

    const/16 v14, 0x1e

    const/16 v15, -0x39

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 138
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "JPG"

    const/16 v14, 0x1f

    const/16 v15, -0x38

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->JPG:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 141
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF9"

    const/16 v14, 0x20

    const/16 v15, -0x37

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 144
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF10"

    const/16 v14, 0x21

    const/16 v15, -0x36

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 147
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF11"

    const/16 v14, 0x22

    const/16 v15, -0x35

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 153
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF13"

    const/16 v14, 0x23

    const/16 v15, -0x33

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 156
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF14"

    const/16 v14, 0x24

    const/16 v15, -0x32

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 159
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "SOF15"

    const/16 v14, 0x25

    const/16 v15, -0x31

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 162
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    const-string v13, "COM"

    const/16 v14, 0x26

    const/4 v15, -0x2

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/drew/imaging/jpeg/JpegSegmentType;-><init>(Ljava/lang/String;IBZ)V

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v0, 0x27

    .line 39
    new-array v0, v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    sget-object v13, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v13, v0, v1

    sget-object v13, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v13, v0, v2

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v4

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP4:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v5

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v6

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v7

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v8

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP8:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v9

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v10

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPA:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v11

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPB:Lcom/drew/imaging/jpeg/JpegSegmentType;

    aput-object v2, v0, v12

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0xc

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPD:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPE:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->APPF:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DQT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DNL:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DRI:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->EXP:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DHT:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x16

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->DAC:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x17

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF0:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x18

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x19

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF2:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF3:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF5:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF6:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF7:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->JPG:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF9:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x20

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF10:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x21

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF11:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x22

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF13:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x23

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF14:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x24

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->SOF15:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x25

    aput-object v2, v0, v3

    sget-object v2, Lcom/drew/imaging/jpeg/JpegSegmentType;->COM:Lcom/drew/imaging/jpeg/JpegSegmentType;

    const/16 v3, 0x26

    aput-object v2, v0, v3

    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->$VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const-class v2, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 169
    iget-boolean v5, v4, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadata:Z

    if-eqz v5, :cond_0

    .line 170
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    sput-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadataTypes:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BZ)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput-byte p3, p0, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    .line 182
    iput-boolean p4, p0, Lcom/drew/imaging/jpeg/JpegSegmentType;->canContainMetadata:Z

    return-void
.end method

.method public static fromByte(B)Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 188
    const-class v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 189
    iget-byte v4, v3, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 1

    .line 39
    const-class v0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/jpeg/JpegSegmentType;

    return-object p0
.end method

.method public static values()[Lcom/drew/imaging/jpeg/JpegSegmentType;
    .locals 1

    .line 39
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->$VALUES:[Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-virtual {v0}, [Lcom/drew/imaging/jpeg/JpegSegmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/jpeg/JpegSegmentType;

    return-object v0
.end method
