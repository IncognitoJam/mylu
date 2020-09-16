.class public Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;
.super Ljava/lang/Object;
.source "UpdateLayoutMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mHeight:I

.field private final mLayoutDirection:I

.field private final mReactTag:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    .line 26
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    .line 27
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    .line 28
    iput p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    .line 29
    iput p5, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    .line 30
    invoke-direct {p0, p6}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->convertLayoutDirection(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mLayoutDirection:I

    return-void
.end method

.method private convertLayoutDirection(I)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    return v1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported layout direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 6

    .line 49
    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    iget v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    iget v4, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    iget v5, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateLayout(IIIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mLayoutDirection:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateLayoutMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - layoutDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
