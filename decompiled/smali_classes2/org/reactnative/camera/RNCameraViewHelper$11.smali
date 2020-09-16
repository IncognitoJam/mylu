.class final Lorg/reactnative/camera/RNCameraViewHelper$11;
.super Ljava/lang/Object;
.source "RNCameraViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraViewHelper;->emitBarCodeReadEvent(Landroid/view/ViewGroup;Lcom/google/zxing/Result;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$barCode:Lcom/google/zxing/Result;

.field final synthetic val$height:I

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic val$view:Landroid/view/ViewGroup;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/google/zxing/Result;IILcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$view:Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$barCode:Lcom/google/zxing/Result;

    iput p3, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$width:I

    iput p4, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$height:I

    iput-object p5, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 307
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$barCode:Lcom/google/zxing/Result;

    iget v2, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$width:I

    iget v3, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$height:I

    invoke-static {v0, v1, v2, v3}, Lorg/reactnative/camera/events/BarCodeReadEvent;->obtain(ILcom/google/zxing/Result;II)Lorg/reactnative/camera/events/BarCodeReadEvent;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$11;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
