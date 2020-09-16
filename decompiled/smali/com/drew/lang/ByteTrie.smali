.class public Lcom/drew/lang/ByteTrie;
.super Ljava/lang/Object;
.source "ByteTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/lang/ByteTrie$ByteTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _maxDepth:I

.field private final _root:Lcom/drew/lang/ByteTrie$ByteTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/drew/lang/ByteTrie$ByteTrieNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/drew/lang/ByteTrie$ByteTrieNode;

    invoke-direct {v0}, Lcom/drew/lang/ByteTrie$ByteTrieNode;-><init>()V

    iput-object v0, p0, Lcom/drew/lang/ByteTrie;->_root:Lcom/drew/lang/ByteTrie$ByteTrieNode;

    return-void
.end method


# virtual methods
.method public varargs addPath(Ljava/lang/Object;[[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[[B)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/drew/lang/ByteTrie;->_root:Lcom/drew/lang/ByteTrie$ByteTrieNode;

    .line 78
    array-length v1, p2

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 79
    array-length v6, v5

    move-object v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-byte v8, v5, v3

    .line 80
    invoke-static {v7}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$100(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/drew/lang/ByteTrie$ByteTrieNode;

    if-nez v9, :cond_0

    .line 82
    new-instance v9, Lcom/drew/lang/ByteTrie$ByteTrieNode;

    invoke-direct {v9}, Lcom/drew/lang/ByteTrie$ByteTrieNode;-><init>()V

    .line 83
    invoke-static {v7}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$100(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v7, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move-object v4, v7

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v4, p1}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->setValue(Ljava/lang/Object;)V

    .line 92
    iget p1, p0, Lcom/drew/lang/ByteTrie;->_maxDepth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/drew/lang/ByteTrie;->_maxDepth:I

    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parts must contain at least one byte."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public find([B)Ljava/lang/Object;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/drew/lang/ByteTrie;->_root:Lcom/drew/lang/ByteTrie$ByteTrieNode;

    .line 61
    invoke-static {v0}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$000(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, p1, v3

    .line 63
    invoke-static {v0}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$100(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/lang/ByteTrie$ByteTrieNode;

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$000(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 68
    invoke-static {v0}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->access$000(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getMaxDepth()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/drew/lang/ByteTrie;->_maxDepth:I

    return v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/drew/lang/ByteTrie;->_root:Lcom/drew/lang/ByteTrie$ByteTrieNode;

    invoke-virtual {v0, p1}, Lcom/drew/lang/ByteTrie$ByteTrieNode;->setValue(Ljava/lang/Object;)V

    return-void
.end method
