.class Lcom/facebook/react/views/textinput/ReactEditText$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ReactEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactEditText;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/facebook/react/views/textinput/ReactEditText;->access$002(Lcom/facebook/react/views/textinput/ReactEditText;Z)Z

    .line 131
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p1}, Lcom/facebook/react/views/textinput/ReactEditText;->requestFocus()Z

    .line 132
    iget-object p1, p0, Lcom/facebook/react/views/textinput/ReactEditText$1;->this$0:Lcom/facebook/react/views/textinput/ReactEditText;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/facebook/react/views/textinput/ReactEditText;->access$002(Lcom/facebook/react/views/textinput/ReactEditText;Z)Z

    return p2

    .line 135
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
