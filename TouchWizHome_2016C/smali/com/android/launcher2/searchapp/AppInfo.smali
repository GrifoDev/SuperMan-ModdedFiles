.class public Lcom/android/launcher2/searchapp/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mChecked:Z

.field private mClassName:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mEnabled:Z

.field public mHidden:Z

.field private mId:Ljava/lang/Long;

.field private mPackageName:Ljava/lang/String;

.field private mSection:Ljava/lang/String;

.field private user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mHidden:Z

    return-void
.end method

.method private checkForIconDpi()V
    .locals 1

    sget v0, Lcom/android/launcher2/searchapp/SearchAppController;->mIconDpi:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppController;->getInstance()Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppController;->getInstance()Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->setIconDpi()I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mChecked:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mEnabled:Z

    return v0
.end method

.method public getHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mHidden:Z

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->mSection:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppInfo;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mChecked:Z

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mEnabled:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mHidden:Z

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mId:Ljava/lang/Long;

    return-void
.end method

.method public setListAppIcon(Landroid/content/res/Resources;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/AppInfo;->checkForIconDpi()V

    :try_start_0
    sget v2, Lcom/android/launcher2/searchapp/SearchAppController;->mListIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->printStackTrace()V

    const/16 v2, 0xf0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mSection:Ljava/lang/String;

    return-void
.end method

.method public setUserHandle(Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppInfo;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
