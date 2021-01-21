.class Lorg/reactnative/camera/RNCameraView$1;
.super Lcom/google/android/cameraview/CameraView$Callback;
.source "RNCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/RNCameraView;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/RNCameraView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-direct {p0}, Lcom/google/android/cameraview/CameraView$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpened(Lcom/google/android/cameraview/CameraView;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lorg/reactnative/camera/RNCameraViewHelper;->emitCameraReadyEvent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onFramePreview(Lcom/google/android/cameraview/CameraView;[BIII)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    .line 146
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getFacing()I

    move-result v2

    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v3}, Lorg/reactnative/camera/RNCameraView;->getCameraOrientation()I

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v2, v3}, Lorg/reactnative/camera/RNCameraViewHelper;->getCorrectCameraRotation(III)I

    move-result v16

    .line 147
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$600(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v2

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-boolean v2, v2, Lorg/reactnative/camera/RNCameraView;->barCodeScannerTaskLock:Z

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 148
    :goto_0
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v3}, Lorg/reactnative/camera/RNCameraView;->access$700(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-boolean v3, v3, Lorg/reactnative/camera/RNCameraView;->faceDetectorTaskLock:Z

    if-nez v3, :cond_1

    instance-of v3, v1, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    if-eqz v3, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 149
    :goto_1
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v3}, Lorg/reactnative/camera/RNCameraView;->access$800(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-boolean v3, v3, Lorg/reactnative/camera/RNCameraView;->googleBarcodeDetectorTaskLock:Z

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    if-eqz v3, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    .line 150
    :goto_2
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v3}, Lorg/reactnative/camera/RNCameraView;->access$900(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-boolean v3, v3, Lorg/reactnative/camera/RNCameraView;->textRecognizerTaskLock:Z

    if-nez v3, :cond_3

    instance-of v3, v1, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    if-eqz v3, :cond_3

    const/16 v19, 0x1

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    :goto_3
    if-nez v2, :cond_4

    if-nez v17, :cond_4

    if-nez v18, :cond_4

    if-nez v19, :cond_4

    return-void

    .line 155
    :cond_4
    array-length v3, v15

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    move/from16 v12, p3

    int-to-double v7, v12

    mul-double v7, v7, v5

    move/from16 v11, p4

    int-to-double v5, v11

    mul-double v7, v7, v5

    cmpg-double v5, v3, v7

    if-gez v5, :cond_5

    return-void

    :cond_5
    if-eqz v2, :cond_6

    .line 160
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iput-boolean v13, v2, Lorg/reactnative/camera/RNCameraView;->barCodeScannerTaskLock:Z

    .line 161
    move-object v3, v1

    check-cast v3, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;

    .line 162
    new-instance v10, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1000(Lorg/reactnative/camera/RNCameraView;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v4

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1100(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v8

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1200(Lorg/reactnative/camera/RNCameraView;)F

    move-result v9

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1300(Lorg/reactnative/camera/RNCameraView;)F

    move-result v20

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1400(Lorg/reactnative/camera/RNCameraView;)F

    move-result v21

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1500(Lorg/reactnative/camera/RNCameraView;)F

    move-result v22

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1600(Lorg/reactnative/camera/RNCameraView;)I

    move-result v23

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1700(Lorg/reactnative/camera/RNCameraView;)I

    move-result v24

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v25

    move-object v2, v10

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v1, v10

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    const/4 v0, 0x0

    move/from16 v14, v24

    move/from16 v15, v25

    invoke-direct/range {v2 .. v15}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;-><init>(Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTaskDelegate;Lcom/google/zxing/MultiFormatReader;[BIIZFFFFIIF)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/reactnative/camera/tasks/BarCodeScannerAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v17, :cond_7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 166
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    const/4 v14, 0x1

    iput-boolean v14, v1, Lorg/reactnative/camera/RNCameraView;->faceDetectorTaskLock:Z

    .line 167
    move-object/from16 v3, p1

    check-cast v3, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;

    .line 168
    new-instance v13, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$1800(Lorg/reactnative/camera/RNCameraView;)Lorg/reactnative/facedetector/RNFaceDetector;

    move-result-object v4

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getFacing()I

    move-result v10

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getWidth()I

    move-result v11

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getHeight()I

    move-result v12

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$1900(Lorg/reactnative/camera/RNCameraView;)I

    move-result v1

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2000(Lorg/reactnative/camera/RNCameraView;)I

    move-result v17

    move-object v2, v13

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, v16

    move-object/from16 v26, v13

    move v13, v1

    const/4 v1, 0x1

    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;-><init>(Lorg/reactnative/camera/tasks/FaceDetectorAsyncTaskDelegate;Lorg/reactnative/facedetector/RNFaceDetector;[BIIIFIIIII)V

    new-array v2, v15, [Ljava/lang/Void;

    move-object/from16 v3, v26

    invoke-virtual {v3, v2}, Lorg/reactnative/camera/tasks/FaceDetectorAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    :goto_5
    if-eqz v18, :cond_d

    .line 172
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    iput-boolean v1, v2, Lorg/reactnative/camera/RNCameraView;->googleBarcodeDetectorTaskLock:Z

    .line 173
    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2100(Lorg/reactnative/camera/RNCameraView;)I

    move-result v2

    sget v3, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->NORMAL_MODE:I

    if-ne v2, v3, :cond_8

    .line 174
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2, v15}, Lorg/reactnative/camera/RNCameraView;->access$2202(Lorg/reactnative/camera/RNCameraView;Z)Z

    goto :goto_6

    .line 175
    :cond_8
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2100(Lorg/reactnative/camera/RNCameraView;)I

    move-result v2

    sget v3, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->ALTERNATE_MODE:I

    if-ne v2, v3, :cond_9

    .line 176
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2200(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/reactnative/camera/RNCameraView;->access$2202(Lorg/reactnative/camera/RNCameraView;Z)Z

    goto :goto_6

    .line 177
    :cond_9
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2100(Lorg/reactnative/camera/RNCameraView;)I

    move-result v2

    sget v3, Lorg/reactnative/barcodedetector/RNBarcodeDetector;->INVERTED_MODE:I

    if-ne v2, v3, :cond_a

    .line 178
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2, v1}, Lorg/reactnative/camera/RNCameraView;->access$2202(Lorg/reactnative/camera/RNCameraView;Z)Z

    .line 180
    :cond_a
    :goto_6
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2200(Lorg/reactnative/camera/RNCameraView;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v14, p2

    const/4 v2, 0x0

    .line 181
    :goto_7
    array-length v3, v14

    if-ge v2, v3, :cond_c

    .line 182
    aget-byte v3, v14, v2

    not-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v14, p2

    .line 185
    :cond_c
    move-object/from16 v3, p1

    check-cast v3, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;

    .line 186
    new-instance v13, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2300(Lorg/reactnative/camera/RNCameraView;)Lorg/reactnative/barcodedetector/RNBarcodeDetector;

    move-result-object v4

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getFacing()I

    move-result v10

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getWidth()I

    move-result v11

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v2}, Lorg/reactnative/camera/RNCameraView;->getHeight()I

    move-result v12

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$1900(Lorg/reactnative/camera/RNCameraView;)I

    move-result v17

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v2}, Lorg/reactnative/camera/RNCameraView;->access$2000(Lorg/reactnative/camera/RNCameraView;)I

    move-result v18

    move-object v2, v13

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, v16

    move-object v1, v13

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-direct/range {v2 .. v14}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;-><init>(Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTaskDelegate;Lorg/reactnative/barcodedetector/RNBarcodeDetector;[BIIIFIIIII)V

    new-array v2, v15, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/reactnative/camera/tasks/BarcodeDetectorAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_d
    if-eqz v19, :cond_e

    .line 190
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/reactnative/camera/RNCameraView;->textRecognizerTaskLock:Z

    .line 191
    move-object/from16 v2, p1

    check-cast v2, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;

    .line 192
    new-instance v14, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$2400(Lorg/reactnative/camera/RNCameraView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getFacing()I

    move-result v9

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getWidth()I

    move-result v10

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-virtual {v1}, Lorg/reactnative/camera/RNCameraView;->getHeight()I

    move-result v11

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$1900(Lorg/reactnative/camera/RNCameraView;)I

    move-result v12

    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v1}, Lorg/reactnative/camera/RNCameraView;->access$2000(Lorg/reactnative/camera/RNCameraView;)I

    move-result v13

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v16

    invoke-direct/range {v1 .. v13}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;-><init>(Lorg/reactnative/camera/tasks/TextRecognizerAsyncTaskDelegate;Lcom/facebook/react/uimanager/ThemedReactContext;[BIIIFIIIII)V

    new-array v1, v15, [Ljava/lang/Void;

    invoke-virtual {v14, v1}, Lorg/reactnative/camera/tasks/TextRecognizerAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_e
    return-void
.end method

.method public onMountError(Lcom/google/android/cameraview/CameraView;)V
    .locals 1

    const-string v0, "Camera view threw an error - component could not be rendered."

    .line 90
    invoke-static {p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper;->emitMountErrorEvent(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public onPictureTaken(Lcom/google/android/cameraview/CameraView;[BI)V
    .locals 9

    .line 95
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$000(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/bridge/Promise;

    .line 96
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$100(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "fastMode"

    .line 97
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-interface {v3, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$200(Lorg/reactnative/camera/RNCameraView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/File;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v8, 0x0

    if-lt v0, v1, :cond_1

    .line 102
    new-instance v0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;

    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    move-object v1, v0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;-><init>([BLcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;ILorg/reactnative/camera/tasks/PictureSavedDelegate;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v8, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, p2, p3}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;

    iget-object v7, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    move-object v1, v0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;-><init>([BLcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;ILorg/reactnative/camera/tasks/PictureSavedDelegate;)V

    new-array p2, v8, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, p2}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    invoke-static {p1}, Lorg/reactnative/camera/RNCameraViewHelper;->emitPictureTakenEvent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onRecordingEnd(Lcom/google/android/cameraview/CameraView;)V
    .locals 0

    .line 122
    invoke-static {p1}, Lorg/reactnative/camera/RNCameraViewHelper;->emitRecordingEndEvent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onRecordingStart(Lcom/google/android/cameraview/CameraView;Ljava/lang/String;II)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "videoOrientation"

    .line 114
    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p3, "deviceOrientation"

    .line 115
    invoke-interface {v0, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 116
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/reactnative/camera/utils/RNFileUtils;->uriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "uri"

    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1, v0}, Lorg/reactnative/camera/RNCameraViewHelper;->emitRecordingStartEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onVideoRecorded(Lcom/google/android/cameraview/CameraView;Ljava/lang/String;II)V
    .locals 2

    .line 127
    iget-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {p1}, Lorg/reactnative/camera/RNCameraView;->access$300(Lorg/reactnative/camera/RNCameraView;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 129
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v0}, Lorg/reactnative/camera/RNCameraView;->access$400(Lorg/reactnative/camera/RNCameraView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "isRecordingInterrupted"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "videoOrientation"

    .line 131
    invoke-interface {p1, v0, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p3, "deviceOrientation"

    .line 132
    invoke-interface {p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 133
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/reactnative/camera/utils/RNFileUtils;->uriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "uri"

    invoke-interface {p1, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {p2}, Lorg/reactnative/camera/RNCameraView;->access$300(Lorg/reactnative/camera/RNCameraView;)Lcom/facebook/react/bridge/Promise;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {p1}, Lorg/reactnative/camera/RNCameraView;->access$300(Lorg/reactnative/camera/RNCameraView;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    const-string p2, "E_RECORDING"

    const-string p3, "Couldn\'t stop recording - there is none in progress"

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    iget-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/reactnative/camera/RNCameraView;->access$502(Lorg/reactnative/camera/RNCameraView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 139
    iget-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/reactnative/camera/RNCameraView;->access$402(Lorg/reactnative/camera/RNCameraView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 140
    iget-object p1, p0, Lorg/reactnative/camera/RNCameraView$1;->this$0:Lorg/reactnative/camera/RNCameraView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/reactnative/camera/RNCameraView;->access$302(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/Promise;)Lcom/facebook/react/bridge/Promise;

    :cond_1
    return-void
.end method
