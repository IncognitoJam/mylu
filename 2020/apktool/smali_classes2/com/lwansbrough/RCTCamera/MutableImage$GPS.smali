.class Lcom/lwansbrough/RCTCamera/MutableImage$GPS;
.super Ljava/lang/Object;
.source "MutableImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lwansbrough/RCTCamera/MutableImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GPS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static latitudeRef(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "S"

    goto :goto_0

    :cond_0
    const-string p0, "N"

    :goto_0
    return-object p0
.end method

.method private static longitudeRef(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "W"

    goto :goto_0

    :cond_0
    const-string p0, "E"

    :goto_0
    return-object p0
.end method

.method private static toDegreeMinuteSecods(D)Ljava/lang/String;
    .locals 6

    .line 308
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v1

    int-to-double v3, v0

    mul-double v3, v3, v1

    sub-double/2addr p0, v3

    double-to-int v3, p0

    mul-double p0, p0, v1

    int-to-double v4, v3

    mul-double v4, v4, v1

    sub-double/2addr p0, v4

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v1

    double-to-int p0, p0

    .line 317
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "/1,"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "/1000,"

    .line 323
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeExifData(DDLandroidx/exifinterface/media/ExifInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-static {p0, p1}, Lcom/lwansbrough/RCTCamera/MutableImage$GPS;->toDegreeMinuteSecods(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitude"

    invoke-virtual {p4, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p0, p1}, Lcom/lwansbrough/RCTCamera/MutableImage$GPS;->latitudeRef(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GPSLatitudeRef"

    invoke-virtual {p4, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p2, p3}, Lcom/lwansbrough/RCTCamera/MutableImage$GPS;->toDegreeMinuteSecods(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GPSLongitude"

    invoke-virtual {p4, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {p2, p3}, Lcom/lwansbrough/RCTCamera/MutableImage$GPS;->longitudeRef(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GPSLongitudeRef"

    invoke-virtual {p4, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
