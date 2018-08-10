.class public Lcom/android/internal/widget/CachingIconView;
.super Landroid/widget/ImageView;
.source "CachingIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDesiredVisibility:I

.field private mForceHidden:Z

.field private mInternalSetDrawable:Z

.field private mLastPackage:Ljava/lang/String;

.field private mLastResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method private declared-synchronized resetCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized testAndSetCache(I)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateVisibility()V
    .locals 2

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    return-void
.end method

.method public setForceHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_0
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setImageResource(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_0
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    return-void
.end method
