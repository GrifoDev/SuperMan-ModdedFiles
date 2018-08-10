.class public Lcom/android/systemui/pip/tv/PipControlsView;
.super Landroid/widget/LinearLayout;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipControlsView$1;,
        Lcom/android/systemui/pip/tv/PipControlsView$2;,
        Lcom/android/systemui/pip/tv/PipControlsView$3;,
        Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/pip/tv/PipControlButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/tv/PipControlsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$1;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$2;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$3;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->setOrientation(I)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->setGravity(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_tv_PipControlsView_8465(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_tv_PipControlsView_8758(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/pip/tv/PipControlsView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateMediaController()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method private updateUserActions()V
    .locals 10

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d01ce

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/tv/PipControlsView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v6, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;

    invoke-direct {v7, v1}, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ;-><init>(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v9}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/pip/tv/-$Lambda$Oiq86WOA62rnj-bUR420RGgXbzQ$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v1, v5}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const v5, 0x3f0a3d71    # 0.54f

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    :cond_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v5}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    :goto_5
    const/4 v3, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    if-nez v4, :cond_9

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v6, 0x7f080281

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v6, 0x7f12084d

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v6, 0x7f080285

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v6, 0x7f120852

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    goto :goto_5
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$4;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$5;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$6;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method
