.class public Lcom/drew/metadata/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private final _directory:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _tagType:I


# direct methods
.method public constructor <init>(ILcom/drew/metadata/Directory;)V
    .locals 0
    .param p2    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    .line 42
    iput-object p2, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/drew/metadata/Tag;->_tagType:I

    return v0
.end method

.method public getTagTypeHex()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0x%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTagName()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->hasTagName(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (unable to formulate description)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
