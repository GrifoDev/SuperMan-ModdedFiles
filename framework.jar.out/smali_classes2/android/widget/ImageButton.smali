.class public Landroid/widget/ImageButton;
.super Landroid/widget/ImageView;
.source "ImageButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mIsThemeDeviceDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Landroid/widget/ImageButton;->mIsThemeDeviceDefault:Z

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHoverUIFeatureLevel()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110082

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ImageButton;->mIsThemeDeviceDefault:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ImageButton;->mIsThemeDeviceDefault:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
