.class public Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
.super Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
.source "DefaultAppInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field protected final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field public final packageItemInfo:Landroid/content/pm/PackageItemInfo;

.field public final summary:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p5}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iput p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    iput-object p3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p4}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method private getComponentInfo()Landroid/content/pm/ComponentInfo;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    return-object v6
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    return-object v7

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v7
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->userId:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    return-object v7

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v4}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v7
.end method
