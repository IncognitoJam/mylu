.class public Lcom/drew/metadata/gif/GifControlDirectory;
.super Lcom/drew/metadata/Directory;
.source "GifControlDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
    }
.end annotation


# static fields
.field public static final TAG_DELAY:I = 0x1

.field public static final TAG_DISPOSAL_METHOD:I = 0x2

.field public static final TAG_TRANSPARENT_COLOR_FLAG:I = 0x4

.field public static final TAG_TRANSPARENT_COLOR_INDEX:I = 0x5

.field public static final TAG_USER_INPUT_FLAG:I = 0x3

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

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 46
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Delay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Disposal Method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "User Input Flag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Transparent Color Flag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Transparent Color Index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 55
    new-instance v0, Lcom/drew/metadata/gif/GifControlDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/gif/GifControlDescriptor;-><init>(Lcom/drew/metadata/gif/GifControlDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/gif/GifControlDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getDisposalMethod()Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, v0}, Lcom/drew/metadata/gif/GifControlDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/gif/GifControlDirectory$DisposalMethod;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "GIF Control"

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

    .line 85
    sget-object v0, Lcom/drew/metadata/gif/GifControlDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p0, v0}, Lcom/drew/metadata/gif/GifControlDirectory;->getBooleanObject(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
