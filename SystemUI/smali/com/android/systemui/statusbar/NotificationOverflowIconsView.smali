.class public Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
.super Lcom/android/systemui/statusbar/phone/IconMerger;
.source "NotificationOverflowIconsView.java"


# instance fields
.field private mIconRightMargin:I

.field private mIconSize:I

.field private mMoreText:Landroid/widget/TextView;

.field private mMoreTextOverTenWidth:I

.field private mMoreTextWidth:I

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateMoreText()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0470

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreTextWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020336

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreTextOverTenWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020337

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconRightMargin:I

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addView(Landroid/view/View;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->updateMoreText()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconRightMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreTextWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreTextOverTenWidth:I

    return-void
.end method

.method public setMoreText(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    return-void
.end method
