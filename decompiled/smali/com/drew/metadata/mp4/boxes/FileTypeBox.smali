.class public Lcom/drew/metadata/mp4/boxes/FileTypeBox;
.super Lcom/drew/metadata/mp4/boxes/Box;
.source "FileTypeBox.java"


# instance fields
.field compatibleBrands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field majorBrand:Ljava/lang/String;

.field minorVersion:J


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Lcom/drew/metadata/mp4/boxes/Box;-><init>(Lcom/drew/metadata/mp4/boxes/Box;)V

    const/4 p2, 0x4

    .line 42
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->minorVersion:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->compatibleBrands:Ljava/util/ArrayList;

    const/16 v0, 0x10

    :goto_0
    int-to-long v1, v0

    .line 45
    iget-wide v3, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->size:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 46
    iget-object v1, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/Mp4Directory;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/Mp4Directory;->setString(ILjava/lang/String;)V

    .line 53
    iget-wide v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->minorVersion:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/drew/metadata/mp4/Mp4Directory;->setLong(IJ)V

    .line 54
    iget-object v0, p0, Lcom/drew/metadata/mp4/boxes/FileTypeBox;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/drew/metadata/mp4/Mp4Directory;->setStringArray(I[Ljava/lang/String;)V

    return-void
.end method
