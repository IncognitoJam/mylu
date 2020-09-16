.class public Lcom/drew/imaging/jpeg/JpegSegmentData;
.super Ljava/lang/Object;
.source "JpegSegmentData.java"


# instance fields
.field private final _segmentDataMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    return-void
.end method

.method private getOrCreateSegmentList(B)Ljava/util/List;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getSegmentList(B)Ljava/util/List;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public addSegment(B[B)V
    .locals 0
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getOrCreateSegmentList(B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsSegment(B)Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSegment(Lcom/drew/imaging/jpeg/JpegSegmentType;)Z
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 257
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->containsSegment(B)Z

    move-result p1

    return p1
.end method

.method public getSegment(B)[B
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getSegment(BI)[B
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 128
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentList(B)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSegment(Lcom/drew/imaging/jpeg/JpegSegmentType;)[B
    .locals 1
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 100
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getSegment(Lcom/drew/imaging/jpeg/JpegSegmentType;I)[B
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 114
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1, p2}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getSegmentCount(B)I
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentList(B)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getSegmentCount(Lcom/drew/imaging/jpeg/JpegSegmentType;)I
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 187
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentCount(B)I

    move-result p1

    return p1
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/drew/imaging/jpeg/JpegSegmentType;->fromByte(B)Lcom/drew/imaging/jpeg/JpegSegmentType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should not have a segmentTypeByte that is not in the enum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public getSegments(B)Ljava/lang/Iterable;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentList(B)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getSegments(Lcom/drew/imaging/jpeg/JpegSegmentType;)Ljava/lang/Iterable;
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .line 144
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegments(B)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public removeSegment(B)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSegment(Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 236
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->removeSegment(B)V

    return-void
.end method

.method public removeSegmentOccurrence(BI)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 226
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeSegmentOccurrence(Lcom/drew/imaging/jpeg/JpegSegmentType;I)V
    .locals 0
    .param p1    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 212
    iget-byte p1, p1, Lcom/drew/imaging/jpeg/JpegSegmentType;->byteValue:B

    invoke-virtual {p0, p1, p2}, Lcom/drew/imaging/jpeg/JpegSegmentData;->removeSegmentOccurrence(BI)V

    return-void
.end method
