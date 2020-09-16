.class public Lcom/drew/metadata/photoshop/Knot;
.super Ljava/lang/Object;
.source "Knot.java"


# instance fields
.field private final _points:[D

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 16
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/drew/metadata/photoshop/Knot;->_points:[D

    .line 21
    iput-object p1, p0, Lcom/drew/metadata/photoshop/Knot;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPoint(I)D
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Knot;->_points:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Knot;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public setPoint(ID)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/drew/metadata/photoshop/Knot;->_points:[D

    aput-wide p2, v0, p1

    return-void
.end method
