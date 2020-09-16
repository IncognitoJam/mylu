.class public Lcom/drew/metadata/file/FileTypeDirectory;
.super Lcom/drew/metadata/Directory;
.source "FileTypeDirectory.java"


# static fields
.field public static final TAG_DETECTED_FILE_MIME_TYPE:I = 0x3

.field public static final TAG_DETECTED_FILE_TYPE_LONG_NAME:I = 0x2

.field public static final TAG_DETECTED_FILE_TYPE_NAME:I = 0x1

.field public static final TAG_EXPECTED_FILE_NAME_EXTENSION:I = 0x4

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
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 44
    sget-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Detected File Type Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Detected File Type Long Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Detected MIME Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Expected File Name Extension"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/drew/imaging/FileType;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 52
    new-instance v0, Lcom/drew/metadata/file/FileTypeDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/file/FileTypeDescriptor;-><init>(Lcom/drew/metadata/file/FileTypeDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/file/FileTypeDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 54
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/file/FileTypeDirectory;->setString(ILjava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getLongName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/file/FileTypeDirectory;->setString(ILjava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 58
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/file/FileTypeDirectory;->setString(ILjava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getCommonExtension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 61
    invoke-virtual {p1}, Lcom/drew/imaging/FileType;->getCommonExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/drew/metadata/file/FileTypeDirectory;->setString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "File Type"

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

    .line 75
    sget-object v0, Lcom/drew/metadata/file/FileTypeDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
