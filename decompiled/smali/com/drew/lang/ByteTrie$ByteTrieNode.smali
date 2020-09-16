.class Lcom/drew/lang/ByteTrie$ByteTrieNode;
.super Ljava/lang/Object;
.source "ByteTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/lang/ByteTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteTrieNode"
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
.field private final _children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/drew/lang/ByteTrie$ByteTrieNode<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_children:Ljava/util/Map;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/drew/lang/ByteTrie$ByteTrieNode;)Ljava/util/Map;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_children:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/drew/lang/ByteTrie$ByteTrieNode;->_value:Ljava/lang/Object;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Value already set for this trie node"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
