.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$1;
    }
.end annotation


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mIsParentThemeDeviceDefault:Z

.field private mIsParentThemeDeviceDefaultLight:Z

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/android/internal/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field public mPopupWindowLayout:I

.field private mPositionAnchorView:Landroid/view/View;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v2, 0x800003

    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPositionAnchorView:Landroid/view/View;

    iput v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    new-instance v2, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600cb

    invoke-virtual {v2, v5, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefault:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600cd

    invoke-virtual {v2, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mIsParentThemeDeviceDefaultLight:Z

    return-void

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method private createPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 13

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    if-lt v11, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopup;->setGravity(I)V

    return-object v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    goto :goto_1
.end method

.method private showPopup(IIZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/internal/view/menu/MenuPopup;->setShowTitle(Z)V

    if-eqz p3, :cond_1

    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v3, v5, 0x7

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr p1, v5

    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/MenuPopup;->setVerticalOffset(I)V

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v2, v5

    new-instance v1, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    sub-int v6, p2, v2

    add-int v7, p1, v2

    add-int v8, p2, v2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lcom/android/internal/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopup;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getPopup()Lcom/android/internal/view/menu/MenuPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->createPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    return v2
.end method

.method public tryShow(II)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    return v1
.end method
