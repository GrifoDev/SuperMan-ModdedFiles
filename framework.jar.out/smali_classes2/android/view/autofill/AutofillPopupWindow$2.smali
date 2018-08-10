.class Landroid/view/autofill/AutofillPopupWindow$2;
.super Landroid/view/View;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$virtualBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$2;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    iput-object p3, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$virtualBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public getAccessibilityViewId()I
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    return v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$virtualBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$virtualBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method public getWindowDisplayFrame(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method
