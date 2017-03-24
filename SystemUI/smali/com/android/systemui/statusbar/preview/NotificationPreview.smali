.class public Lcom/android/systemui/statusbar/preview/NotificationPreview;
.super Ljava/lang/Object;
.source "NotificationPreview.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsClicked:Z

.field private mIsFirstAdded:Z

.field private mKey:Ljava/lang/String;

.field private mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreviewIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public isClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    return v0
.end method

.method public isFirstAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    return v0
.end method

.method public setIsClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsClicked:Z

    return-void
.end method

.method public setIsFirstAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIsFirstAdded:Z

    return-void
.end method

.method public setPreviewIcon(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setPreviewKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreview;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method
