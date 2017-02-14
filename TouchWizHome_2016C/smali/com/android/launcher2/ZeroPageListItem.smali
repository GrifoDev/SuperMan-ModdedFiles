.class public Lcom/android/launcher2/ZeroPageListItem;
.super Ljava/lang/Object;
.source "ZeroPageListItem.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mInstalled:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreview:Landroid/graphics/drawable/Drawable;

.field private mSalesTalk:Ljava/lang/String;

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field private mlandPreview:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/ZeroPageListItem;->mClassName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher2/ZeroPageListItem;->mInstalled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/ZeroPageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mComponentName:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/launcher2/ZeroPageListItem;

    iget-object v1, p1, Lcom/android/launcher2/ZeroPageListItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mInstalled:Z

    return v0
.end method

.method public getLandPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mlandPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSalesTalk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mSalesTalk:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageListItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public setLandPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mlandPreview:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mPreview:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSalesTalk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mSalesTalk:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageListItem;->mAppName:Ljava/lang/String;

    return-void
.end method
