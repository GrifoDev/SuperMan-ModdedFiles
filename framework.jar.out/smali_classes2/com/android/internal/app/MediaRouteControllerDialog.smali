.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private final mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mCreated:Z

.field private mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteConnectingState:[I

.field private mMediaRouteOnState:[I

.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final mRouter:Landroid/media/MediaRouter;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v1, 0x101009e

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x10100a0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    const v0, 0x10102fe

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private isVolumeControlAvailable()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103ad

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    new-array v3, v8, [I

    const v5, 0x1110031

    aput v5, v3, v7

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private update()Z
    .locals 3

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_3

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private updateVolume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public getRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v0, 0x104050e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x1090093

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x102025c

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    const v0, 0x1020376

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const v0, 0x1020377

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    const v0, 0x1020373

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x19

    const/4 v1, 0x1

    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    :cond_0
    return-void
.end method
