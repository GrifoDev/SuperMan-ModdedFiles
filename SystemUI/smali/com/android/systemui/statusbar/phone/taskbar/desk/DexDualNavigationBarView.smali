.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;
.super Landroid/widget/RelativeLayout;
.source "DexDualNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackBtn:Landroid/widget/ImageView;

.field private mBackBtnLayout:Landroid/widget/LinearLayout;

.field private final mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private mRotationHandler:Landroid/os/Handler;

.field private mRotationWatcher:Landroid/view/IRotationWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentRotation:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mRotationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentRotation:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->updateCurrentView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mRotationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$eG41caRMlM0QszCobkW2zLqDQtc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$eG41caRMlM0QszCobkW2zLqDQtc;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendEvent(III)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 14

    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v12, v0, 0x40

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v13, 0x101

    move-wide/from16 v2, p4

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateCurrentView(I)V
    .locals 8

    const v7, 0x7f0a0198

    const v6, 0x7f0a0197

    const v5, 0x7f0a0196

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DexDualNavigationBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentView() mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtnLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtn:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtnLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtn:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtnLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtn:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DexDualNavigationBarView_2218(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->sendEvent(III)V

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->sendEvent(III)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onFinishInflate()V
    .locals 4

    const v1, 0x7f0a037b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0802f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0802f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mCurrentRotation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->updateCurrentView(I)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNavigationIconHints(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DexDualNavigationBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavigationIconHints() imeVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
