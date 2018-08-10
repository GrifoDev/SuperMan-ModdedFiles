.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkIconManager"
.end annotation


# instance fields
.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mIconHPadding:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070680

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Landroid/widget/ImageView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Landroid/widget/ImageView;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->applyDark(Landroid/widget/ImageView;)V

    return-void
.end method
