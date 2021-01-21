.class public final enum Lcom/drew/imaging/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/imaging/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/imaging/FileType;

.field public static final enum Aac:Lcom/drew/imaging/FileType;

.field public static final enum Arw:Lcom/drew/imaging/FileType;

.field public static final enum Asf:Lcom/drew/imaging/FileType;

.field public static final enum Avi:Lcom/drew/imaging/FileType;

.field public static final enum Bmp:Lcom/drew/imaging/FileType;

.field public static final enum Cfbf:Lcom/drew/imaging/FileType;

.field public static final enum Cr2:Lcom/drew/imaging/FileType;

.field public static final enum Crw:Lcom/drew/imaging/FileType;

.field public static final enum Eps:Lcom/drew/imaging/FileType;

.field public static final enum Flv:Lcom/drew/imaging/FileType;

.field public static final enum Gif:Lcom/drew/imaging/FileType;

.field public static final enum Heif:Lcom/drew/imaging/FileType;

.field public static final enum Ico:Lcom/drew/imaging/FileType;

.field public static final enum Indd:Lcom/drew/imaging/FileType;

.field public static final enum Jpeg:Lcom/drew/imaging/FileType;

.field public static final enum Mov:Lcom/drew/imaging/FileType;

.field public static final enum Mp4:Lcom/drew/imaging/FileType;

.field public static final enum Mxf:Lcom/drew/imaging/FileType;

.field public static final enum Nef:Lcom/drew/imaging/FileType;

.field public static final enum Orf:Lcom/drew/imaging/FileType;

.field public static final enum Pcx:Lcom/drew/imaging/FileType;

.field public static final enum Pdf:Lcom/drew/imaging/FileType;

.field public static final enum Png:Lcom/drew/imaging/FileType;

.field public static final enum Psd:Lcom/drew/imaging/FileType;

.field public static final enum Qxp:Lcom/drew/imaging/FileType;

.field public static final enum Raf:Lcom/drew/imaging/FileType;

.field public static final enum Ram:Lcom/drew/imaging/FileType;

.field public static final enum Riff:Lcom/drew/imaging/FileType;

.field public static final enum Rtf:Lcom/drew/imaging/FileType;

.field public static final enum Rw2:Lcom/drew/imaging/FileType;

.field public static final enum Sit:Lcom/drew/imaging/FileType;

.field public static final enum Sitx:Lcom/drew/imaging/FileType;

.field public static final enum Swf:Lcom/drew/imaging/FileType;

.field public static final enum Tiff:Lcom/drew/imaging/FileType;

.field public static final enum Unknown:Lcom/drew/imaging/FileType;

.field public static final enum Vob:Lcom/drew/imaging/FileType;

.field public static final enum Wav:Lcom/drew/imaging/FileType;

.field public static final enum WebP:Lcom/drew/imaging/FileType;

.field public static final enum Zip:Lcom/drew/imaging/FileType;


# instance fields
.field private final _extensions:[Ljava/lang/String;

.field private final _longName:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _mimeType:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private final _name:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v7, Lcom/drew/imaging/FileType;

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    const-string v4, "Unknown"

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    .line 35
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "jpe"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Jpeg"

    const/4 v11, 0x1

    const-string v12, "JPEG"

    const-string v13, "Joint Photographic Experts Group"

    const-string v14, "image/jpeg"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    .line 36
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "tiff"

    const-string/jumbo v2, "tif"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Tiff"

    const/4 v3, 0x2

    const-string v4, "TIFF"

    const-string v5, "Tagged Image File Format"

    const-string v6, "image/tiff"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    .line 37
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "psd"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Psd"

    const/4 v11, 0x3

    const-string v12, "PSD"

    const-string v13, "Photoshop Document"

    const-string v14, "image/vnd.adobe.photoshop"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    .line 38
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "png"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Png"

    const/4 v3, 0x4

    const-string v4, "PNG"

    const-string v5, "Portable Network Graphics"

    const-string v6, "image/png"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    .line 39
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "bmp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Bmp"

    const/4 v11, 0x5

    const-string v12, "BMP"

    const-string v13, "Device Independent Bitmap"

    const-string v14, "image/bmp"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    .line 40
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Gif"

    const/4 v3, 0x6

    const-string v4, "GIF"

    const-string v5, "Graphics Interchange Format"

    const-string v6, "image/gif"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    .line 41
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "ico"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Ico"

    const/4 v11, 0x7

    const-string v12, "ICO"

    const-string v13, "Windows Icon"

    const-string v14, "image/x-icon"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    .line 42
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "pcx"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Pcx"

    const/16 v3, 0x8

    const-string v4, "PCX"

    const-string v5, "PiCture eXchange"

    const-string v6, "image/x-pcx"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    .line 43
    new-instance v0, Lcom/drew/imaging/FileType;

    new-array v15, v8, [Ljava/lang/String;

    const-string v10, "Riff"

    const/16 v11, 0x9

    const-string v12, "RIFF"

    const-string v13, "Resource Interchange File Format"

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    .line 44
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "wav"

    const-string/jumbo v2, "wave"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Wav"

    const/16 v3, 0xa

    const-string v4, "WAV"

    const-string v5, "Waveform Audio File Format"

    const-string v6, "audio/vnd.wave"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Wav:Lcom/drew/imaging/FileType;

    .line 45
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "avi"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Avi"

    const/16 v11, 0xb

    const-string v12, "AVI"

    const-string v13, "Audio Video Interleaved"

    const-string/jumbo v14, "video/vnd.avi"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Avi:Lcom/drew/imaging/FileType;

    .line 46
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "webp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "WebP"

    const/16 v3, 0xc

    const-string v4, "WebP"

    const-string v5, "WebP"

    const-string v6, "image/webp"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->WebP:Lcom/drew/imaging/FileType;

    .line 47
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "mov"

    const-string v2, "qt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Mov"

    const/16 v11, 0xd

    const-string v12, "MOV"

    const-string v13, "QuickTime Movie"

    const-string/jumbo v14, "video/quicktime"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    .line 48
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "mp4"

    const-string v2, "m4a"

    const-string v3, "m4p"

    const-string v4, "m4b"

    const-string v5, "m4r"

    const-string v6, "m4v"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Mp4"

    const/16 v3, 0xe

    const-string v4, "MP4"

    const-string v5, "MPEG-4 Part 14"

    const-string/jumbo v6, "video/mp4"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    .line 49
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "heif"

    const-string v2, "heic"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Heif"

    const/16 v11, 0xf

    const-string v12, "HEIF"

    const-string v13, "High Efficiency Image File Format"

    const-string v14, "image/heif"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    .line 50
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "eps"

    const-string v2, "epsf"

    const-string v3, "epsi"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Eps"

    const/16 v3, 0x10

    const-string v4, "EPS"

    const-string v5, "Encapsulated PostScript"

    const-string v6, "application/postscript"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    .line 53
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "arw"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Arw"

    const/16 v11, 0x11

    const-string v12, "ARW"

    const-string v13, "Sony Camera Raw"

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    .line 55
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "crw"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Crw"

    const/16 v3, 0x12

    const-string v4, "CRW"

    const-string v5, "Canon Camera Raw"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    .line 57
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "cr2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Cr2"

    const/16 v11, 0x13

    const-string v12, "CR2"

    const-string v13, "Canon Camera Raw"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    .line 59
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "nef"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Nef"

    const/16 v3, 0x14

    const-string v4, "NEF"

    const-string v5, "Nikon Camera Raw"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    .line 61
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "orf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Orf"

    const/16 v11, 0x15

    const-string v12, "ORF"

    const-string v13, "Olympus Camera Raw"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    .line 63
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "raf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Raf"

    const/16 v3, 0x16

    const-string v4, "RAF"

    const-string v5, "FujiFilm Camera Raw"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    .line 65
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "rw2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Rw2"

    const/16 v11, 0x17

    const-string v12, "RW2"

    const-string v13, "Panasonic Camera Raw"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    .line 68
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "m4a"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Aac"

    const/16 v3, 0x18

    const-string v4, "AAC"

    const-string v5, "Advanced Audio Coding"

    const-string v6, "audio/aac"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    .line 69
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "asf"

    const-string/jumbo v2, "wma"

    const-string/jumbo v3, "wmv"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Asf"

    const/16 v11, 0x19

    const-string v12, "ASF"

    const-string v13, "Advanced Systems Format"

    const-string/jumbo v14, "video/x-ms-asf"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Asf:Lcom/drew/imaging/FileType;

    .line 70
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v2, "Cfbf"

    const/16 v3, 0x1a

    const-string v4, "CFBF"

    const-string v5, "Compound File Binary Format"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Cfbf:Lcom/drew/imaging/FileType;

    .line 71
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, ".flv"

    const-string v2, ".f4v,"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Flv"

    const/16 v11, 0x1b

    const-string v12, "FLV"

    const-string v13, "Flash Video"

    const-string/jumbo v14, "video/x-flv"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Flv:Lcom/drew/imaging/FileType;

    .line 72
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, ".indd"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Indd"

    const/16 v3, 0x1c

    const-string v4, "INDD"

    const-string v5, "INDesign Document"

    const-string v6, "application/octet-stream"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Indd:Lcom/drew/imaging/FileType;

    .line 73
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "mxf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Mxf"

    const/16 v11, 0x1d

    const-string v12, "MXF"

    const-string v13, "Material Exchange Format"

    const-string v14, "application/mxf"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Mxf:Lcom/drew/imaging/FileType;

    .line 74
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "pdf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Pdf"

    const/16 v3, 0x1e

    const-string v4, "PDF"

    const-string v5, "Portable Document Format"

    const-string v6, "application/pdf"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Pdf:Lcom/drew/imaging/FileType;

    .line 75
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "qzp"

    const-string v2, "qxd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Qxp"

    const/16 v11, 0x1f

    const-string v12, "QXP"

    const-string v13, "Quark XPress Document"

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    .line 76
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "aac"

    const-string v2, "ra"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Ram"

    const/16 v3, 0x20

    const-string v4, "RAM"

    const-string v5, "RealAudio"

    const-string v6, "audio/vnd.rn-realaudio"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Ram:Lcom/drew/imaging/FileType;

    .line 77
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, "rtf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Rtf"

    const/16 v11, 0x21

    const-string v12, "RTF"

    const-string v13, "Rich Text Format"

    const-string v14, "application/rtf"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Rtf:Lcom/drew/imaging/FileType;

    .line 78
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "sit"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Sit"

    const/16 v3, 0x22

    const-string v4, "SIT"

    const-string v5, "Stuffit Archive"

    const-string v6, "application/x-stuffit"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    .line 79
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "sitx"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Sitx"

    const/16 v11, 0x23

    const-string v12, "SITX"

    const-string v13, "Stuffit X Archive"

    const-string v14, "application/x-stuffitx"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Sitx:Lcom/drew/imaging/FileType;

    .line 80
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string/jumbo v1, "swf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Swf"

    const/16 v3, 0x24

    const-string v4, "SWF"

    const-string v5, "Small Web Format"

    const-string v6, "application/vnd.adobe.flash-movie"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    .line 81
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, ".vob"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "Vob"

    const/16 v11, 0x25

    const-string v12, "VOB"

    const-string v13, "Video Object"

    const-string/jumbo v14, "video/dvd"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Vob:Lcom/drew/imaging/FileType;

    .line 82
    new-instance v0, Lcom/drew/imaging/FileType;

    const-string v1, ".zip"

    const-string v2, ".zipx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "Zip"

    const/16 v3, 0x26

    const-string v4, "ZIP"

    const-string v5, "ZIP Archive"

    const-string v6, "application/zip"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/drew/imaging/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/drew/imaging/FileType;->Zip:Lcom/drew/imaging/FileType;

    const/16 v0, 0x27

    .line 32
    new-array v0, v0, [Lcom/drew/imaging/FileType;

    sget-object v1, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Wav:Lcom/drew/imaging/FileType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Avi:Lcom/drew/imaging/FileType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->WebP:Lcom/drew/imaging/FileType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Asf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Cfbf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Flv:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Indd:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Mxf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Pdf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Ram:Lcom/drew/imaging/FileType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Rtf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Sitx:Lcom/drew/imaging/FileType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Vob:Lcom/drew/imaging/FileType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/imaging/FileType;->Zip:Lcom/drew/imaging/FileType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lcom/drew/imaging/FileType;->$VALUES:[Lcom/drew/imaging/FileType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/drew/imaging/FileType;->_name:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/drew/imaging/FileType;->_longName:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/drew/imaging/FileType;->_mimeType:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/imaging/FileType;
    .locals 1

    .line 32
    const-class v0, Lcom/drew/imaging/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/FileType;

    return-object p0
.end method

.method public static values()[Lcom/drew/imaging/FileType;
    .locals 1

    .line 32
    sget-object v0, Lcom/drew/imaging/FileType;->$VALUES:[Lcom/drew/imaging/FileType;

    invoke-virtual {v0}, [Lcom/drew/imaging/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/imaging/FileType;

    return-object v0
.end method


# virtual methods
.method public getAllExtensions()[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    return-object v0
.end method

.method public getCommonExtension()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_extensions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_longName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/drew/imaging/FileType;->_name:Ljava/lang/String;

    return-object v0
.end method
