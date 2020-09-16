.class Lorg/reactnative/camera/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule;->resumePreview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/CameraModule;

.field final synthetic val$viewTag:I


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule;I)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$4;->this$0:Lorg/reactnative/camera/CameraModule;

    iput p2, p0, Lorg/reactnative/camera/CameraModule$4;->val$viewTag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    .line 246
    :try_start_0
    iget v0, p0, Lorg/reactnative/camera/CameraModule$4;->val$viewTag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/reactnative/camera/RNCameraView;

    .line 247
    invoke-virtual {p1}, Lorg/reactnative/camera/RNCameraView;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lorg/reactnative/camera/RNCameraView;->resumePreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
