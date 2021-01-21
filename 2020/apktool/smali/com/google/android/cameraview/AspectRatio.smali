.class public Lcom/google/android/cameraview/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/cameraview/AspectRatio;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mX:I

.field private final mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    sput-object v0, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroidx/collection/SparseArrayCompat;

    .line 173
    new-instance v0, Lcom/google/android/cameraview/AspectRatio$1;

    invoke-direct {v0}, Lcom/google/android/cameraview/AspectRatio$1;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/AspectRatio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    .line 87
    iput p2, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    return-void
.end method

.method private static gcd(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-eqz p0, :cond_0

    .line 156
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static of(II)Lcom/google/android/cameraview/AspectRatio;
    .locals 2

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->gcd(II)I

    move-result v0

    .line 45
    div-int/2addr p0, v0

    .line 46
    div-int/2addr p1, v0

    .line 47
    sget-object v0, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/android/cameraview/AspectRatio;

    invoke-direct {v0, p0, p1}, Lcom/google/android/cameraview/AspectRatio;-><init>(II)V

    .line 50
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 51
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 52
    sget-object p1, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, p0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Lcom/google/android/cameraview/AspectRatio;

    invoke-direct {v1, p0, p1}, Lcom/google/android/cameraview/AspectRatio;-><init>(II)V

    .line 58
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/cameraview/AspectRatio;
    .locals 4

    const/16 v0, 0x3a

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "Malformed aspect ratio: "

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-static {v2, v0}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/cameraview/AspectRatio;)I
    .locals 1
    .param p1    # Lcom/google/android/cameraview/AspectRatio;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    check-cast p1, Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->compareTo(Lcom/google/android/cameraview/AspectRatio;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 113
    :cond_1
    instance-of v2, p1, Lcom/google/android/cameraview/AspectRatio;

    if-eqz v2, :cond_2

    .line 114
    check-cast p1, Lcom/google/android/cameraview/AspectRatio;

    .line 115
    iget v2, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    iget v3, p1, Lcom/google/android/cameraview/AspectRatio;->mX:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget p1, p1, Lcom/google/android/cameraview/AspectRatio;->mY:I

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getX()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 132
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public inverse()Lcom/google/android/cameraview/AspectRatio;
    .locals 2

    .line 150
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-static {v0, v1}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/google/android/cameraview/Size;)Z
    .locals 2

    .line 99
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/cameraview/AspectRatio;->gcd(II)I

    move-result v0

    .line 100
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 101
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    .line 102
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toFloat()F
    .locals 2

    .line 126
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 169
    iget p2, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
