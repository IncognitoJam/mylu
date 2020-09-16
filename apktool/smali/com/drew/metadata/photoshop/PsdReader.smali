.class public Lcom/drew/metadata/photoshop/PsdReader;
.super Ljava/lang/Object;
.source "PsdReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/Metadata;)V
    .locals 6
    .param p1    # Lcom/drew/lang/SequentialReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    new-instance v0, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;-><init>()V

    .line 40
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    const v2, 0x38425053

    if-eq v1, v2, :cond_0

    const-string p1, "Invalid PSD file signature"

    .line 48
    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const-string p1, "Invalid PSD file version (must be 1 or 2)"

    .line 55
    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v4, 0x6

    .line 60
    invoke-virtual {p1, v4, v5}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 62
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    .line 63
    invoke-virtual {v0, v3, v1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 66
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 70
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v1

    const/4 v2, 0x3

    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 73
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v2, 0x4

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V

    .line 76
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result v1

    const/4 v2, 0x5

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->setInt(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :try_start_2
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    .line 112
    new-instance v2, Lcom/drew/metadata/photoshop/PhotoshopReader;

    invoke-direct {v2}, Lcom/drew/metadata/photoshop/PhotoshopReader;-><init>()V

    long-to-int v1, v0

    invoke-virtual {v2, p1, v1, p2}, Lcom/drew/metadata/photoshop/PhotoshopReader;->extract(Lcom/drew/lang/SequentialReader;ILcom/drew/metadata/Metadata;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    const-string p1, "Unable to read PSD header"

    .line 79
    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PsdHeaderDirectory;->addError(Ljava/lang/String;)V

    return-void
.end method
