.class public Lcom/drew/metadata/exif/ExifSubIFDDirectory;
.super Lcom/drew/metadata/exif/ExifDirectoryBase;
.source "ExifSubIFDDirectory.java"


# static fields
.field public static final TAG_INTEROP_OFFSET:I = 0xa005

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->addExifTagNames(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/drew/metadata/exif/ExifDirectoryBase;-><init>()V

    .line 43
    new-instance v0, Lcom/drew/metadata/exif/ExifSubIFDDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/ExifSubIFDDescriptor;-><init>(Lcom/drew/metadata/exif/ExifSubIFDDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getDateDigitized()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getDateDigitized(Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateDigitized(Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 2
    .param p1    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9292

    .line 121
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x9004

    invoke-virtual {p0, v1, v0, p1}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDateOriginal()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getDateOriginal(Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateOriginal(Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 2
    .param p1    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const v0, 0x9291

    .line 93
    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x9003

    invoke-virtual {p0, v1, v0, p1}, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "Exif SubIFD"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/drew/metadata/exif/ExifSubIFDDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
