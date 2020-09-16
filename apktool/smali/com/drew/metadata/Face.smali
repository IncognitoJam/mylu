.class public Lcom/drew/metadata/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field private final _age:Lcom/drew/metadata/Age;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private final _height:I

.field private final _name:Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private final _width:I

.field private final _x:I

.field private final _y:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Lcom/drew/metadata/Age;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/drew/metadata/Age;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/drew/metadata/Face;->_x:I

    .line 49
    iput p2, p0, Lcom/drew/metadata/Face;->_y:I

    .line 50
    iput p3, p0, Lcom/drew/metadata/Face;->_width:I

    .line 51
    iput p4, p0, Lcom/drew/metadata/Face;->_height:I

    .line 52
    iput-object p5, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 94
    :cond_1
    check-cast p1, Lcom/drew/metadata/Face;

    .line 96
    iget v2, p0, Lcom/drew/metadata/Face;->_height:I

    iget v3, p1, Lcom/drew/metadata/Face;->_height:I

    if-eq v2, v3, :cond_2

    return v1

    .line 97
    :cond_2
    iget v2, p0, Lcom/drew/metadata/Face;->_width:I

    iget v3, p1, Lcom/drew/metadata/Face;->_width:I

    if-eq v2, v3, :cond_3

    return v1

    .line 98
    :cond_3
    iget v2, p0, Lcom/drew/metadata/Face;->_x:I

    iget v3, p1, Lcom/drew/metadata/Face;->_x:I

    if-eq v2, v3, :cond_4

    return v1

    .line 99
    :cond_4
    iget v2, p0, Lcom/drew/metadata/Face;->_y:I

    iget v3, p1, Lcom/drew/metadata/Face;->_y:I

    if-eq v2, v3, :cond_5

    return v1

    .line 100
    :cond_5
    iget-object v2, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Age;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    if-eqz v2, :cond_7

    :goto_0
    return v1

    .line 101
    :cond_7
    iget-object v2, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object p1, p1, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    if-eqz p1, :cond_9

    :goto_1
    return v1

    :cond_9
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public getAge()Lcom/drew/metadata/Age;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/drew/metadata/Face;->_height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/drew/metadata/Face;->_width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/drew/metadata/Face;->_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/drew/metadata/Face;->_y:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    iget v0, p0, Lcom/drew/metadata/Face;->_x:I

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget v1, p0, Lcom/drew/metadata/Face;->_y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lcom/drew/metadata/Face;->_width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lcom/drew/metadata/Face;->_height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v1, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/drew/metadata/Age;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "x: "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/drew/metadata/Face;->_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/drew/metadata/Face;->_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width: "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/drew/metadata/Face;->_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/drew/metadata/Face;->_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " name: "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/Face;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    if-eqz v1, :cond_1

    const-string v1, " age: "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/Face;->_age:Lcom/drew/metadata/Age;

    invoke-virtual {v1}, Lcom/drew/metadata/Age;->toFriendlyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
