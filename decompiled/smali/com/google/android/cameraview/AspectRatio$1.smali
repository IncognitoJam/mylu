.class final Lcom/google/android/cameraview/AspectRatio$1;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/AspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/cameraview/AspectRatio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-static {v0, p1}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/cameraview/AspectRatio;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/cameraview/AspectRatio;
    .locals 0

    .line 185
    new-array p1, p1, [Lcom/google/android/cameraview/AspectRatio;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio$1;->newArray(I)[Lcom/google/android/cameraview/AspectRatio;

    move-result-object p1

    return-object p1
.end method
