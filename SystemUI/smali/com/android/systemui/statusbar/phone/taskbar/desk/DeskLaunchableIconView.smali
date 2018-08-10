.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;
.super Lcom/android/systemui/statusbar/StatusBarIconView;
.source "DeskLaunchableIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;
    }
.end annotation


# instance fields
.field private mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mIsMouseExit:Z

.field private mKey:Ljava/lang/String;

.field private mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

.field mPosition:[I

.field mStatusBarNotification:Landroid/service/notification/StatusBarNotification;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mIsMouseExit:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mPosition:[I

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setContextClickable(Z)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setSoundEffectsEnabled(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080763

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->getLocationOnScreen([I)V

    return-void
.end method


# virtual methods
.method public getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPostionX()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public isSameView(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setPosition()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;->onLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V

    :cond_0
    return-void
.end method

.method public onContextClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;->onRightClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mKey:Ljava/lang/String;

    return-void
.end method
