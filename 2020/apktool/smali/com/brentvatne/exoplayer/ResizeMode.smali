.class Lcom/brentvatne/exoplayer/ResizeMode;
.super Ljava/lang/Object;
.source "ResizeMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/ResizeMode$Mode;
    }
.end annotation


# static fields
.field static final RESIZE_MODE_CENTER_CROP:I = 0x4

.field static final RESIZE_MODE_FILL:I = 0x3

.field static final RESIZE_MODE_FIT:I = 0x0

.field static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toResizeMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
