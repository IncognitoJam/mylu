.class public Lcom/drew/metadata/webp/WebpDirectory;
.super Lcom/drew/metadata/Directory;
.source "WebpDirectory.java"


# static fields
.field public static final CHUNK_EXIF:Ljava/lang/String; = "EXIF"

.field public static final CHUNK_ICCP:Ljava/lang/String; = "ICCP"

.field public static final CHUNK_VP8:Ljava/lang/String; = "VP8 "

.field public static final CHUNK_VP8L:Ljava/lang/String; = "VP8L"

.field public static final CHUNK_VP8X:Ljava/lang/String; = "VP8X"

.field public static final CHUNK_XMP:Ljava/lang/String; = "XMP "

.field public static final FORMAT:Ljava/lang/String; = "WEBP"

.field public static final TAG_HAS_ALPHA:I = 0x3

.field public static final TAG_IMAGE_HEIGHT:I = 0x1

.field public static final TAG_IMAGE_WIDTH:I = 0x2

.field public static final TAG_IS_ANIMATION:I = 0x4

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

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Has Alpha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Is Animation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 60
    new-instance v0, Lcom/drew/metadata/webp/WebpDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/webp/WebpDescriptor;-><init>(Lcom/drew/metadata/webp/WebpDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/webp/WebpDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "WebP"

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

    .line 74
    sget-object v0, Lcom/drew/metadata/webp/WebpDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
