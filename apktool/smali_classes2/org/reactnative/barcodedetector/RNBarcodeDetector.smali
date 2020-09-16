.class public Lorg/reactnative/barcodedetector/RNBarcodeDetector;
.super Ljava/lang/Object;
.source "RNBarcodeDetector.java"


# static fields
.field public static ALL_FORMATS:I = 0x0

.field public static ALTERNATE_MODE:I = 0x1

.field public static INVERTED_MODE:I = 0x2

.field public static NORMAL_MODE:I


# instance fields
.field private mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field private mBarcodeType:I

.field private mBuilder:Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

.field private mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    .line 24
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object p1

    iput-object p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    return-void
.end method

.method private createBarcodeDetector()V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    return-void
.end method

.method private releaseBarcodeDetector()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->release()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    :cond_0
    return-void
.end method


# virtual methods
.method public detect(Lorg/reactnative/frame/RNFrame;)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactnative/frame/RNFrame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iget-object v1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {v0, v1}, Lorg/reactnative/camera/utils/ImageDimensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->releaseBarcodeDetector()V

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v0, :cond_1

    .line 47
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->createBarcodeDetector()V

    .line 48
    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {p1}, Lorg/reactnative/frame/RNFrame;->getFrame()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->createBarcodeDetector()V

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeDetector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->releaseBarcodeDetector()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mPreviousDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-void
.end method

.method public setBarcodeType(I)V
    .locals 1

    .line 55
    iget v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    if-eq p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->release()V

    .line 57
    iget-object v0, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBuilder:Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    .line 58
    iput p1, p0, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->mBarcodeType:I

    :cond_0
    return-void
.end method
