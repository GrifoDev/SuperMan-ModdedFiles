.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "DeskStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeskIconManager"
.end annotation


# instance fields
.field private final mIconHPadding:I

.field private final mIconSize:I

.field private mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconHPadding:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    return-void
.end method

.method private setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->semSetHoverPopupType(I)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setKey(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconHPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconHPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconHPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconHPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;)V

    return-object v0
.end method
