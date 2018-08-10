.class public Lcom/android/systemui/statusbar/notification/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarkAmount:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field private mOverflowNumberColor:I

.field private mOverflowNumberColorDark:I

.field private mOverflowNumberPadding:I

.field private mOverflowNumberPaddingDark:I

.field private mOverflowNumberSize:F

.field private mOverflowNumberSizeDark:F

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->initDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 5

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f0d0052

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f0d0053

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    return-object v1
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    const v0, 0x7f1300c8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    const v0, 0x7f1300c7

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f12082b

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120815

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public initDimens(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f070194

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    const v0, 0x7f070195

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    const v0, 0x7f070193

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    const v1, 0x7f070192

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_HybridGroupManager_7131(Landroid/widget/TextView;Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    return-void
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;II)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJ)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    goto :goto_1
.end method
