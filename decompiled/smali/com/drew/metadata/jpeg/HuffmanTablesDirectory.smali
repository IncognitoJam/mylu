.class public Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;
.super Lcom/drew/metadata/Directory;
.source "HuffmanTablesDirectory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;
    }
.end annotation


# static fields
.field public static final TAG_NUMBER_OF_TABLES:I = 0x1

.field protected static final TYPICAL_CHROMINANCE_AC_LENGTHS:[B

.field protected static final TYPICAL_CHROMINANCE_AC_VALUES:[B

.field protected static final TYPICAL_CHROMINANCE_DC_LENGTHS:[B

.field protected static final TYPICAL_CHROMINANCE_DC_VALUES:[B

.field protected static final TYPICAL_LUMINANCE_AC_LENGTHS:[B

.field protected static final TYPICAL_LUMINANCE_AC_VALUES:[B

.field protected static final TYPICAL_LUMINANCE_DC_LENGTHS:[B

.field protected static final TYPICAL_LUMINANCE_DC_VALUES:[B

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


# instance fields
.field protected final tables:Ljava/util/List;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 42
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_DC_LENGTHS:[B

    const/16 v1, 0xc

    .line 47
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_DC_VALUES:[B

    .line 52
    new-array v2, v0, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_DC_LENGTHS:[B

    .line 57
    new-array v1, v1, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_DC_VALUES:[B

    .line 62
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_AC_LENGTHS:[B

    const/16 v1, 0xa2

    .line 67
    new-array v2, v1, [B

    fill-array-data v2, :array_5

    sput-object v2, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_LUMINANCE_AC_VALUES:[B

    .line 91
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_AC_LENGTHS:[B

    .line 96
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->TYPICAL_CHROMINANCE_AC_VALUES:[B

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Number of Tables"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x2t
        0x1t
        0x3t
        0x3t
        0x2t
        0x4t
        0x3t
        0x5t
        0x5t
        0x4t
        0x4t
        0x0t
        0x0t
        0x1t
        0x7dt
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x0t
        0x4t
        0x11t
        0x5t
        0x12t
        0x21t
        0x31t
        0x41t
        0x6t
        0x13t
        0x51t
        0x61t
        0x7t
        0x22t
        0x71t
        0x14t
        0x32t
        -0x7ft
        -0x6ft
        -0x5ft
        0x8t
        0x23t
        0x42t
        -0x4ft
        -0x3ft
        0x15t
        0x52t
        -0x2ft
        -0x10t
        0x24t
        0x33t
        0x62t
        0x72t
        -0x7et
        0x9t
        0xat
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x4t
        0x3t
        0x4t
        0x7t
        0x5t
        0x4t
        0x4t
        0x0t
        0x1t
        0x2t
        0x77t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x11t
        0x4t
        0x5t
        0x21t
        0x31t
        0x6t
        0x12t
        0x41t
        0x51t
        0x7t
        0x61t
        0x71t
        0x13t
        0x22t
        0x32t
        -0x7ft
        0x8t
        0x14t
        0x42t
        -0x6ft
        -0x5ft
        -0x4ft
        -0x3ft
        0x9t
        0x23t
        0x33t
        0x52t
        -0x10t
        0x15t
        0x62t
        0x72t
        -0x2ft
        0xat
        0x16t
        0x24t
        0x34t
        -0x1ft
        0x25t
        -0xft
        0x17t
        0x18t
        0x19t
        0x1at
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->tables:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/drew/metadata/jpeg/HuffmanTablesDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/jpeg/HuffmanTablesDescriptor;-><init>(Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "Huffman"

    return-object v0
.end method

.method public getNumberOfTables()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTable(I)Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;

    return-object p1
.end method

.method protected getTables()Ljava/util/List;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->tables:Ljava/util/List;

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

    .line 147
    sget-object v0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public isOptimized()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->isTypical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTypical()Z
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;

    .line 210
    invoke-virtual {v2}, Lcom/drew/metadata/jpeg/HuffmanTablesDirectory$HuffmanTable;->isTypical()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
