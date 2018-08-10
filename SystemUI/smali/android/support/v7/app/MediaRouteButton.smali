.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private mButtonTint:Landroid/content/res/ColorStateList;

.field private final mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, p3}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    new-instance v2, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    sget-object v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    new-instance v2, Landroid/support/v7/app/MediaRouteButton$1;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/app/MediaRouteButton$1;-><init>(Landroid/support/v7/app/MediaRouteButton;Landroid/util/TypedValue;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/MediaRouteButton$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateContentDescription()V
    .locals 2

    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_0

    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connecting:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_1

    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connected:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_disconnected:I

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget v10, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v11

    add-int/2addr v8, v11

    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    iget-object v10, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    sparse-switch v6, :sswitch_data_0

    :sswitch_0
    move v4, v5

    :goto_1
    sparse-switch v1, :sswitch_data_1

    :sswitch_1
    move v3, v0

    :goto_2
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v8, v9

    goto :goto_0

    :sswitch_2
    move v4, v7

    goto :goto_1

    :sswitch_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :sswitch_4
    move v3, v2

    goto :goto_2

    :sswitch_5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method refreshRoute()V
    .locals 8

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    :goto_1
    const/4 v3, 0x0

    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v2, :cond_0

    iput-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    const/4 v3, 0x1

    :cond_0
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v1, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    :cond_2
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_8

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_5

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_2
.end method

.method setCheatSheetEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_button_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V
    .locals 2
    .param p1    # Landroid/support/v7/app/MediaRouteDialogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-void
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public showDialog()Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-nez v4, :cond_0

    return v6

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v3, v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :cond_2
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "MediaRouteButton"

    const-string/jumbo v5, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_4
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "MediaRouteButton"

    const-string/jumbo v5, "showDialog(): Route controller dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
