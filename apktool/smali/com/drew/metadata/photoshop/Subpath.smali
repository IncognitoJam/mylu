.class public Lcom/drew/metadata/photoshop/Subpath;
.super Ljava/lang/Object;
.source "Subpath.java"


# instance fields
.field private final _knots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/drew/metadata/photoshop/Knot;",
            ">;"
        }
    .end annotation
.end field

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 23
    invoke-direct {p0, v0}, Lcom/drew/metadata/photoshop/Subpath;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/photoshop/Subpath;->_knots:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/drew/metadata/photoshop/Subpath;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/drew/metadata/photoshop/Knot;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Subpath;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKnots()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/drew/metadata/photoshop/Knot;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Subpath;->_knots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Subpath;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Subpath;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
