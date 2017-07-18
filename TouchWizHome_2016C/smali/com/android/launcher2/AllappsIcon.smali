.class public Lcom/android/launcher2/AllappsIcon;
.super Lcom/android/launcher2/AppIconView;
.source "AllappsIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AllappsIcon;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AllappsIcon;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AllappsIcon;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher2/AppIconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTextVisible(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mTextVisible:Z

    if-nez v0, :cond_0

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mTextVisible:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mTextVisible:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllappsIcon;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AllappsIcon;->mTextVisible:Z

    goto :goto_0
.end method
