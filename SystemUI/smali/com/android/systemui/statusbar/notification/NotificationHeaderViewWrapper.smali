.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppName:Landroid/widget/TextView;

.field protected mColor:I

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field protected final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLowPriority:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeDivider:Landroid/widget/TextView;

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field private mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    return-void
.end method

.method private isGrayScale(Landroid/graphics/drawable/Icon;)Z
    .locals 4

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method

.method private resolveColor(Landroid/widget/ImageView;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 5

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_0

    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public flattenTextColor()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    return-void
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8

    const v7, 0x7f0a0227

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected resolveHeaderViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setLabeledBy(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveColor(Landroid/widget/ImageView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10201ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020525

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTimeDivider:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    xor-int/lit8 v6, v7, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateContentColor(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeaderTextColor(Z)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppPrimaryColor(Z)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->isGrayScale(Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppName:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTimeDivider:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTimeDivider:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTime:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/NotificationExpandButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2
.end method

.method protected updateInvertHelper()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2}, Lcom/android/systemui/ViewInvertHelper;->clearTargets()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
