.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;,
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;
    }
.end annotation


# static fields
.field private static final ACTION3_PACKAGE_NAME:Ljava/lang/String; = "com.actionlauncher.playstore"

.field private static final AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.bbm"

.field private static final CHINA_SALES_CODES:[Ljava/lang/String;

.field public static final DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field private static final DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String; = "com.nttdocomo.android.dhome"

.field static final DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field static final DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

.field public static final DUAL_CALLER_PACKAGE_NAME:Ljava/lang/String; = "callerPackage"

.field public static final DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field private static final FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.orca"

.field private static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field private static final GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final HIKE_PACKAGE_NAME:Ljava/lang/String; = "com.bsb.hike"

.field private static final HOLO_PACKAGE_NAME:Ljava/lang/String; = "com.mobint.hololauncher"

.field private static final ICQ_PACKAGE_NAME:Ljava/lang/String; = "com.icq.mobile.client"

.field private static final KAKAOTALK_PACKAGE_NAME:Ljava/lang/String; = "com.kakao.talk"

.field private static final KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final KIK_PACKAGE_NAME:Ljava/lang/String; = "kik.android"

.field private static final LINE_PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field public static final MAX_DUALAPP_ID:I = 0x63

.field public static final MIN_DUALAPP_ID:I = 0x5f

.field private static final NOUGAT_PACKAGE_NAME:Ljava/lang/String; = "com.cmnlauncher"

.field private static final NOVA_PACKAGE_NAME:Ljava/lang/String; = "com.teslacoilsw.launcher"

.field private static final QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqqi"

.field private static final SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.easylauncher"

.field private static final SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.emergencylauncher"

.field private static final SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final SKYPE_PACKAGE_NAME:Ljava/lang/String; = "com.skype.raider"

.field private static final SMART3_PACKAGE_NAME:Ljava/lang/String; = "ginlemon.flowerfree"

.field private static final SNAPCHAT_PACKAGE_NAME:Ljava/lang/String; = "com.snapchat.android"

.field private static final TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final TELEGRAM_PACKAGE_NAME:Ljava/lang/String; = "org.telegram.messenger"

.field private static final VIBER_PACKAGE_NAME:Ljava/lang/String; = "com.viber.voip"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field private static final WHATSAPP_PACKAGE_NAME:Ljava/lang/String; = "com.whatsapp"

.field private static final YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.im"

.field private static final YANDEX_PACKAGE_NAME:Ljava/lang/String; = "com.yandex.launcher"

.field private static final ZALO_PACKAGE_NAME:Ljava/lang/String; = "com.zing.zalo"

.field private static mContext:Landroid/content/Context;

.field private static mIsChinaModel:Z

.field private static mIsSepConditionSatisfied:Z

.field private static mSalesCode:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private mDuplicateInitialIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    sput-boolean v3, Lcom/samsung/android/app/SemDualAppManager;->mIsSepConditionSatisfied:Z

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CHN"

    aput-object v1, v0, v4

    const-string/jumbo v1, "CHM"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CBK"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CTC"

    aput-object v1, v0, v6

    const-string/jumbo v1, "CHU"

    aput-object v1, v0, v7

    const-string/jumbo v1, "CHC"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.whatsapp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.facebook.orca"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.tencent.mobileqq"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.tencent.mobileqqi"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.tencent.mm"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sina.weibo"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skype.raider"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.viber.voip"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.naver.line.android"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.bbm"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.telegram.messenger"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kakao.talk"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.bsb.hike"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.icq.mobile.client"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.yahoo.mobile.client.android.im"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.zing.zalo"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.snapchat.android"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "kik.android"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.tencent.mobileqq"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sina.weibo"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.android.emergencylauncher"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.teslacoilsw.launcher"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.actionlauncher.playstore"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mobint.hololauncher"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "ginlemon.flowerfree"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.cmnlauncher"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.yandex.launcher"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.android.emergencylauncher"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    return-void
.end method

.method private addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ResolverActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v9

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v11

    if-eqz p4, :cond_0

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_2

    move v14, v9

    :cond_2
    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v11, v8, v1, v14}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p4

    iput-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v13

    :cond_3
    :goto_0
    move-object/from16 v0, p5

    instance-of v1, v0, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_4

    move-object/from16 v12, p5

    check-cast v12, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v12}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v12}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iget v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_4
    if-eqz p4, :cond_5

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :catch_0
    move-exception v10

    goto :goto_0

    :catch_1
    move-exception v10

    move-object v4, v13

    goto :goto_0
.end method

.method public static drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x55

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v1, v3}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemDualAppManager"

    const-string/jumbo v3, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "SemDualAppManager"

    const-string/jumbo v3, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    return-object v3

    :cond_2
    return-object v0
.end method

.method public static getDockedStackUserID()I
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getDockedStackUserID()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemDualAppManager"

    const-string/jumbo v3, "getDockedStackUserID : RemoteException occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public static getDualAppProfileId()I
    .locals 5

    const/4 v4, 0x0

    const/16 v1, -0x2710

    const-string/jumbo v3, "sys.dualapp.profile_id"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static getDualAppVersion()I
    .locals 5

    const v4, 0x15f90

    const v3, 0x13a74

    const v2, 0x138e4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-lt v0, v2, :cond_1

    if-ge v0, v3, :cond_1

    const/16 v1, 0x64

    return v1

    :cond_1
    if-lt v0, v3, :cond_2

    if-ge v0, v4, :cond_2

    const/16 v1, 0x6e

    return v1

    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v1, 0xc8

    return v1

    :cond_3
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    sput-object p0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isSepConditionSatisfied()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsSepConditionSatisfied:Z

    :cond_1
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAfwSupportLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isChinaDualApp(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.mobileqqi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sina.weibo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaModel()Z
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isChooserRequired(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualAppId(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5f

    if-lt p0, v1, :cond_0

    const/16 v1, 0x63

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDualAppIdInternal(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5f

    if-lt p0, v1, :cond_0

    const/16 v1, 0x63

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDualAppVersionSupported(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private static isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "com.kakao.talk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSamsungLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isSepConditionSatisfied()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x138e4

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method public static shouldAddUserId(Landroid/net/Uri;I)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-string/jumbo v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.android.calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "downloads"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.android.providers.downloads.documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "updateDualAppData : RemoteException occured"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "SemDualAppManager"

    const-string/jumbo v4, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method


# virtual methods
.method public addDualAppAccounts(Landroid/widget/LinearLayout;II)V
    .locals 28

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v25

    if-nez v25, :cond_0

    return-void

    :cond_0
    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v11

    array-length v6, v11

    if-nez v6, :cond_1

    return-void

    :cond_1
    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v12

    array-length v5, v12

    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v26, "layout_inflater"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v0, v6, :cond_7

    aget-object v7, v11, v18

    const/4 v10, 0x0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v5, :cond_2

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v26, v12, v21

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    aget-object v10, v12, v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v10, :cond_4

    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    :try_start_1
    iget v0, v10, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v25, v0

    if-eqz v25, :cond_5

    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    iget v0, v10, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    :cond_5
    :goto_3
    if-nez v19, :cond_6

    :try_start_2
    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_6
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v25, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v16

    const-string/jumbo v25, "SemDualAppManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Exception in addDualAppAccounts "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    :try_start_3
    iget v0, v10, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    goto/16 :goto_3

    :catch_1
    move-exception v15

    :try_start_4
    const-string/jumbo v25, "SemDualAppManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Invalid icon id for account type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_2
    move-exception v14

    const-string/jumbo v25, "SemDualAppManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Bad package name for account type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3
.end method

.method public clearDuplicateMaps()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isDuplicateEntry(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ResolverActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p4, :cond_6

    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    instance-of v1, p5, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_1

    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "mqqapi"

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p5}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverActivity;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    :cond_6
    return v4
.end method

.method public isSupported()Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/samsung/android/app/SemDualAppManager;->mIsSepConditionSatisfied:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method

.method public isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    sget-boolean v3, Lcom/samsung/android/app/SemDualAppManager;->mIsSepConditionSatisfied:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v4

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    return v4
.end method
