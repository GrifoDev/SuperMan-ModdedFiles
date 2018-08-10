.class public Lcom/android/systemui/statusbar/policy/PreviewInflater;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PREVIEW_INFLATER:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    :cond_0
    return-void
.end method

.method private getContactsPackageName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v3, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.andorid.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "com.andorid.contacts"

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v1, 0x10000

    if-nez p3, :cond_0

    const/high16 v1, 0xd0000

    :cond_0
    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    or-int/lit16 v4, v1, 0x80

    invoke-virtual {v2, p1, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return-object v5

    :cond_3
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v4
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v1, 0xd0000

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, p1, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    const v4, 0xd0080

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_2

    :cond_1
    return-object v6

    :cond_2
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v6

    :cond_3
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PREVIEW_INFLATER:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v4

    return-object v4

    :cond_4
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v4

    return-object v4
.end method

.method private getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 6

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PREVIEW_INFLATER:Z

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "PreviewInflater"

    const-string/jumbo v4, "metaData == null || metaData.isEmpty()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-nez p3, :cond_2

    return-object v5

    :cond_2
    const-string/jumbo v3, "com.android.keyguard.layout"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PREVIEW_INFLATER:Z

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    const-string/jumbo v3, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    const-string/jumbo v3, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_4
    :goto_1
    if-nez v2, :cond_8

    return-object v5

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/systemui/Rune;->isDownloadableThemeApplied()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "com.android.keyguard.theme.layout"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_7
    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v3, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)V

    iput-object p2, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v2, v0, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    return-object v0
.end method

.method private getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PreviewInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load preview; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v4, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "PreviewInflater"

    const-string/jumbo v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isCameraIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;IZ)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "PreviewInflater"

    const-string/jumbo v3, "temp ResolveInfo returns null though it takes space in appList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v3

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PREVIEW_INFLATER:Z

    if-eqz v6, :cond_7

    if-nez v3, :cond_0

    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "info == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->isDialIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getContactsPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "switching default dialer action"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v6, v1}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v0, v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "info == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iget v6, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    iput v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v6

    return-object v6

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->isCameraIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string/jumbo v7, "com.sec.android.app.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "switching default camera action"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v6, :cond_5

    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string/jumbo v7, "com.sec.android.app.camera"

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v0, v5, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "info == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_1
    move-exception v2

    :goto_4
    const-string/jumbo v6, "PreviewInflater"

    const-string/jumbo v7, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iget v6, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    iput v6, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    goto :goto_2

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v6

    return-object v6

    :catch_2
    move-exception v2

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v4, v5

    goto :goto_1
.end method

.method public inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    move-result-object v1

    return-object v1
.end method
