.class public Lcom/drew/imaging/FileTypeDetector;
.super Ljava/lang/Object;
.source "FileTypeDetector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _ftypMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/drew/imaging/FileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final _root:Lcom/drew/lang/ByteTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/drew/lang/ByteTrie<",
            "Lcom/drew/imaging/FileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/drew/lang/ByteTrie;

    invoke-direct {v0}, Lcom/drew/lang/ByteTrie;-><init>()V

    sput-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    .line 41
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    invoke-virtual {v0, v1}, Lcom/drew/lang/ByteTrie;->setDefaultValue(Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 46
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const-string v3, "II"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 47
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const-string v4, "MM"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 48
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "8BPS"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 49
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 50
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "BM"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 51
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "BA"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 52
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "CI"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 53
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "CP"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 54
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "IC"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 55
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "PT"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 56
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "GIF87a"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 57
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "GIF89a"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 58
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 59
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 60
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 61
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 62
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_8

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 63
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "RIFF"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 64
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 65
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Crw:Lcom/drew/imaging/FileType;

    const/4 v2, 0x3

    new-array v2, v2, [[B

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "HEAPCCDR"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 66
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_b

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 69
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const-string v4, "IIRO"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_c

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 70
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const-string v4, "MMOR"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_d

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 71
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const-string v4, "IIRS"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_e

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 72
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v4, "FUJIFILMCCD-RAW"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 73
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    const/4 v2, 0x2

    new-array v2, v2, [[B

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_f

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 74
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v3, "%!PS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 75
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Eps:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_10

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmoov"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const-string v2, "ftypwide"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmdat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const-string v2, "ftypfree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mov:Lcom/drew/imaging/FileType;

    const-string v2, "ftypqt  "

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypavc1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypiso2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypisom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4A "

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4B "

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4P "

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4V "

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4VH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypM4VP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmmp4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmp41"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmp42"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmp71"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypMSNV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDAS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDSC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDSH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDSM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDSP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDSS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDXC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDXH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDXM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDXP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Mp4:Lcom/drew/imaging/FileType;

    const-string v2, "ftypNDXS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmif1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftypmsf1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftypheic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftypheix"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftyphevc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    sget-object v1, Lcom/drew/imaging/FileType;->Heif:Lcom/drew/imaging/FileType;

    const-string v2, "ftyphevx"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_11

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 125
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Aac:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_12

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 126
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Asf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_13

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 127
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Cfbf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_14

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 128
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Flv:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_15

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 129
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Indd:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_16

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 130
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Mxf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_17

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 131
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_18

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 132
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Qxp:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_19

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 133
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Ram:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_1a

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 134
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Rtf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_1b

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 135
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_1c

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 136
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Sit:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1d

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 137
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Sitx:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_1e

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 138
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v3, "CWS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 139
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v3, "FWS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 140
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Swf:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v3, "ZWS"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 141
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Vob:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1f

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 142
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    sget-object v1, Lcom/drew/imaging/FileType;->Zip:Lcom/drew/imaging/FileType;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const-string v3, "PK"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/drew/lang/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x2at
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0xat
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0xat
        0x2t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x3t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0xat
        0x5t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x2at
        0x0t
        0x8t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1at
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x2at
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x43t
        0x52t
    .end array-data

    :array_c
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x55t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        -0x3bt
        -0x30t
        -0x2dt
        -0x3at
    .end array-data

    :array_11
    .array-data 1
        -0x1t
        -0xft
    .end array-data

    nop

    :array_12
    .array-data 1
        -0x1t
        -0x7t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x30t
        0x26t
        -0x4et
        0x75t
        -0x72t
        0x66t
        -0x31t
        0x11t
        -0x5at
        -0x27t
        0x0t
        -0x56t
        0x0t
        0x62t
        -0x32t
        0x6ct
    .end array-data

    :array_14
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
        0x0t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x46t
        0x4ct
        0x56t
    .end array-data

    :array_16
    .array-data 1
        0x6t
        0x6t
        -0x13t
        -0xbt
        -0x28t
        0x1dt
        0x46t
        -0x1bt
        -0x43t
        0x31t
        -0x11t
        -0x19t
        -0x2t
        0x74t
        -0x49t
        0x1dt
    .end array-data

    :array_17
    .array-data 1
        0x6t
        0xet
        0x2bt
        0x34t
        0x2t
        0x5t
        0x1t
        0x1t
        0xdt
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x49t
        0x49t
        0x58t
        0x50t
        0x52t
        0x33t
    .end array-data

    :array_19
    .array-data 1
        0x0t
        0x0t
        0x4dt
        0x4dt
        0x58t
        0x50t
        0x52t
        0x33t
    .end array-data

    :array_1a
    .array-data 1
        0x72t
        0x74t
        0x73t
        0x70t
        0x3at
        0x2ft
        0x2ft
    .end array-data

    :array_1b
    .array-data 1
        0x7bt
        0x5ct
        0x72t
        0x74t
        0x66t
        0x31t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x53t
        0x49t
        0x54t
        0x21t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x53t
        0x74t
        0x75t
        0x66t
        0x66t
        0x49t
        0x74t
        0x20t
        0x28t
        0x63t
        0x29t
        0x31t
        0x39t
        0x39t
        0x37t
        0x2dt
    .end array-data

    :array_1e
    .array-data 1
        0x53t
        0x74t
        0x75t
        0x66t
        0x66t
        0x49t
        0x74t
        0x21t
    .end array-data

    :array_1f
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;
    .locals 4
    .param p0    # Ljava/io/BufferedInputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    .line 166
    sget-object v1, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    invoke-virtual {v1}, Lcom/drew/lang/ByteTrie;->getMaxDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 170
    new-array v0, v0, [B

    .line 171
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 176
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 178
    sget-object p0, Lcom/drew/imaging/FileTypeDetector;->_root:Lcom/drew/lang/ByteTrie;

    invoke-virtual {p0, v0}, Lcom/drew/lang/ByteTrie;->find([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/drew/imaging/FileType;

    .line 182
    sget-object v1, Lcom/drew/imaging/FileType;->Unknown:Lcom/drew/imaging/FileType;

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-ne p0, v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 185
    sget-object v0, Lcom/drew/imaging/FileTypeDetector;->_ftypMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/imaging/FileType;

    if-eqz v0, :cond_3

    return-object v0

    .line 188
    :cond_0
    sget-object v1, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    if-ne p0, v1, :cond_3

    .line 189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "WAVE"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object p0, Lcom/drew/imaging/FileType;->Wav:Lcom/drew/imaging/FileType;

    return-object p0

    :cond_1
    const-string v0, "AVI "

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget-object p0, Lcom/drew/imaging/FileType;->Avi:Lcom/drew/imaging/FileType;

    return-object p0

    :cond_2
    const-string v0, "WEBP"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    sget-object p0, Lcom/drew/imaging/FileType;->WebP:Lcom/drew/imaging/FileType;

    :cond_3
    return-object p0

    .line 174
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream ended before file\'s magic number could be determined."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream must support mark/reset"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
