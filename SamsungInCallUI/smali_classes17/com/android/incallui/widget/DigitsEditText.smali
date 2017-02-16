.class public Lcom/android/incallui/widget/DigitsEditText;
.super Lcom/android/phone/common/widget/ResizingTextEditText;
.source "DigitsEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/widget/ResizingTextEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    .line 41
    .local v0, "isMobileKeyboard":Z
    if-eqz v0, :cond_0

    .line 43
    const/16 v1, 0x2003

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/DigitsEditText;->setInputType(I)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/DigitsEditText;->setShowSoftInputOnFocus(Z)V

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const v1, 0x20001

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/DigitsEditText;->setInputType(I)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/DigitsEditText;->setInputType(I)V

    .line 50
    const-string v1, "SecDigitsEditText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInputType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getInputType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/DigitsEditText;->setShowSoftInputOnFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/common/widget/ResizingTextEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 59
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    .line 60
    .local v1, "isMobileKeyboard":Z
    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    if-eqz v1, :cond_2

    .line 67
    if-eqz p1, :cond_1

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v2, "SecDigitsEditText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focused : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/incallui/UiAdapter;->displayDialpad(ZZ)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 109
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/phone/common/widget/ResizingTextEditText;->onSizeChanged(IIII)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 102
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/phone/common/widget/ResizingTextEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 105
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/phone/common/widget/ResizingTextEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 83
    .local v2, "ret":Z
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    .line 86
    .local v1, "isMobileKeyboard":Z
    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    if-eqz v1, :cond_1

    .line 92
    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
