.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$CallbackImpl;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_SIGNING_UNKNOWN:I = 0x0

.field public static final APK_SIGNING_V1:I = 0x1

.field public static final APK_SIGNING_V2:I = 0x2

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final LOG_UNSAFE_BROADCASTS:Z = false

.field private static final MAX_PACKAGES_PER_APK:I = 0x5

.field private static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field private static final META_DATA_INSTANT_APPS:Ljava/lang/String; = "instantapps.clients.allowed"

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x400

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORCE_SDK:I = 0x1000

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_EPHEMERAL:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field private static final RIGID_PARSER:Z = false

.field private static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SALESCODE_DONE:I = 0x0

.field private static final SALESCODE_ERROR:I = 0x1

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final bDTSEnabled:Z = true

.field private static final bODTCEnabled:Z = true

.field private static final mSalesCode:Ljava/lang/String;

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAiReplacement:Landroid/content/pm/ApplicationInfo;

.field private mAiReplacementItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mCallback:Landroid/content/pm/PackageParser$Callback;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x10

    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "application"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-permission"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-permission-sdk-m"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-permission-sdk-23"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-configuration"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-feature"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "feature-group"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-sdk"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "supports-screens"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "instrumentation"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "uses-gl-texture"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "compatible-screens"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "supports-input"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v2, "eat-comment"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v2, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v2, v3, v4, v1}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    invoke-direct {v2, v3, v4, v1}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v6

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v4, v1

    const/16 v5, 0x2711

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.READ_CALL_LOG"

    aput-object v5, v4, v1

    invoke-direct {v2, v3, v4, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v3, "android.permission.WRITE_CONTACTS"

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.WRITE_CALL_LOG"

    aput-object v5, v4, v1

    invoke-direct {v2, v3, v4, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v0, v7

    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    return-void
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    return-object v6

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    return-object v2
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz p0, :cond_2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": must be at least two characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    return-object v7

    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    return-object v7

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    return-object v7

    :cond_3
    return-object v2
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_4

    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_4

    aget-object v1, p4, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    return-object p1

    :cond_6
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 11

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to delete cache file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to serialize parsed package for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    move-object v3, v4

    :goto_1
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Error writing cache entry."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_2
    return-void

    :catch_2
    move-exception v7

    goto :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v6

    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_5
    if-eqz v7, :cond_7

    :try_start_7
    throw v7

    :catch_4
    move-exception v5

    goto :goto_1

    :catch_5
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_5

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catchall_1
    move-exception v6

    goto :goto_4

    :catchall_2
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v6

    move-object v3, v4

    goto :goto_3
.end method

.method private checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' - require both requiredSystemPropertyName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    return v1
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x402000

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v24, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    :try_start_0
    const-string/jumbo v25, "verifyV2"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    const/16 v24, 0x1

    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    :goto_0
    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    new-instance v25, Landroid/util/ArraySet;

    array-length v0, v4

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/util/ArraySet;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    const/4 v14, 0x0

    :goto_1
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_3

    aget-object v22, v4, v14

    const/16 v25, 0x0

    aget-object v21, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " using APK Signature Scheme v2"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v25

    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    throw v25

    :catch_1
    move-exception v6

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_0

    :try_start_2
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No APK Signature Scheme v2 signature in ephemeral package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v25

    if-eqz v25, :cond_1

    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Static shared libs must use v2 signature scheme "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_3

    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has mismatched certificates"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x68

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    :cond_3
    const/16 v16, 0x0

    :try_start_3
    const-string/jumbo v25, "strictJarFileCtor"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_4

    const/16 v19, 0x1

    :goto_2
    new-instance v17, Landroid/util/jar/StrictJarFile;

    xor-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/32 v26, 0x40000

    :try_start_4
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v18

    if-nez v18, :cond_5

    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no manifest"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x65

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_2
    move-exception v8

    move-object/from16 v16, v17

    :goto_3
    :try_start_5
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x69

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v25

    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    throw v25

    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    :cond_5
    if-eqz v24, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    return-void

    :cond_6
    :try_start_6
    const-string/jumbo v25, "verifyV1"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_7

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v25, "META-INF/"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v7

    move-object/from16 v16, v17

    :goto_6
    :try_start_7
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :try_start_8
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no certificates at entry "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    :catchall_2
    move-exception v25

    move-object/from16 v16, v17

    goto/16 :goto_4

    :cond_a
    invoke-static {v11}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_b

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    const/4 v14, 0x0

    :goto_7
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    aget-object v26, v11, v14

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v13}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_9

    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has mismatched certificates at entry "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x68

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    :cond_c
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    return-void

    :catch_4
    move-exception v8

    goto/16 :goto_3

    :catch_5
    move-exception v7

    goto/16 :goto_6
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const-wide/32 v4, 0x40000

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    const-string/jumbo v1, "collectCertificates"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-gt p0, p2, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requires newer sdk version #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (current version is #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    return v3

    :cond_1
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    return v0

    :cond_2
    array-length v0, p3

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    :goto_0
    return v3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2710

    return v0

    :cond_1
    array-length v0, p3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    :goto_0
    const/4 v0, -0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_0
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v2, p0

    new-array v1, v2, [Landroid/content/pm/Signature;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_0

    return v4

    :cond_0
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v2, v0, :cond_2

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v1, :cond_4

    return v4

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_6

    :cond_5
    return v4

    :cond_6
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v2, :cond_7

    return v4

    :cond_7
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-eq v2, v3, :cond_8

    return v4

    :cond_8
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_a

    if-nez p3, :cond_9

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    :cond_9
    return v4

    :cond_a
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_b

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_b

    return v4

    :cond_b
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v4

    :cond_c
    return v5
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v1

    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object v0

    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return-object v2

    :cond_2
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    :cond_4
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    :cond_6
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object v0

    :cond_7
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v1

    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move/from16 v0, p2

    move-object/from16 v1, p8

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    :cond_0
    const/16 v17, 0x0

    return-object v17

    :cond_1
    new-instance v11, Landroid/content/pm/PackageInfo;

    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->installLocation:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    move/from16 v17, v0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/content/pm/PackageInfo;->coreApp:Z

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_2

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    move/from16 v17, v0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    iget v0, v11, Landroid/content/pm/PackageInfo;->overlayFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->overlayFlags:I

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    iget v0, v11, Landroid/content/pm/PackageInfo;->overlayFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    iput v0, v11, Landroid/content/pm/PackageInfo;->overlayFlags:I

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mIsOpenThemeOverlay:Z

    move/from16 v17, v0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/content/pm/PackageInfo;->isOpenThemeOverlay:Z

    move-wide/from16 v0, p3

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v0, p5

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_6
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-lez v4, :cond_7

    new-array v0, v4, [Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-lez v4, :cond_8

    new-array v0, v4, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-lez v4, :cond_9

    new-array v0, v4, [Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_9
    and-int/lit8 v17, p2, 0x1

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    const/4 v8, 0x0

    new-array v13, v4, [Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    move v9, v8

    :goto_3
    if-ge v6, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v17

    if-eqz v17, :cond_1e

    add-int/lit8 v8, v9, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    aput-object v17, v13, v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    :cond_d
    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_e
    and-int/lit8 v17, p2, 0x2

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    const/4 v8, 0x0

    new-array v13, v4, [Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    move v9, v8

    :goto_5
    if-ge v6, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v17

    if-eqz v17, :cond_1d

    add-int/lit8 v8, v9, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    aput-object v17, v13, v9

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    goto :goto_5

    :cond_f
    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_10
    and-int/lit8 v17, p2, 0x4

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    const/4 v8, 0x0

    new-array v15, v4, [Landroid/content/pm/ServiceInfo;

    const/4 v6, 0x0

    move v9, v8

    :goto_7
    if-ge v6, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v17

    if-eqz v17, :cond_1c

    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    aput-object v17, v15, v9

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    goto :goto_7

    :cond_11
    invoke-static {v15, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_12
    and-int/lit8 v17, p2, 0x8

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    const/4 v8, 0x0

    new-array v14, v4, [Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    move v9, v8

    :goto_9
    if-ge v6, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v17

    if-eqz v17, :cond_1b

    add-int/lit8 v8, v9, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v12, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    aput-object v17, v14, v9

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    goto :goto_9

    :cond_13
    invoke-static {v14, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_14
    and-int/lit8 v17, p2, 0x10

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    new-array v0, v4, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_15

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Instrumentation;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v17

    aput-object v17, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    new-array v0, v4, [Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_16

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    aput-object v17, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-array v0, v4, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v10, v17, v6

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v17, v0

    aget v18, v17, v6

    or-int/lit8 v18, v18, 0x1

    aput v18, v17, v6

    if-eqz p7, :cond_17

    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v17, v0

    aget v18, v17, v6

    or-int/lit8 v18, v18, 0x2

    aput v18, v17, v6

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_18
    and-int/lit8 v17, p2, 0x40

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    :goto_e
    if-lez v4, :cond_19

    new-array v0, v4, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    invoke-static {}, Landroid/os/STSHelper;->getInstance()Landroid/os/STSHelper;

    move-result-object v7

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/STSHelper;->getSTSOption(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->stsOption:D

    return-object v11

    :cond_1a
    const/4 v4, 0x0

    goto :goto_e

    :cond_1b
    move v8, v9

    goto/16 :goto_a

    :cond_1c
    move v8, v9

    goto/16 :goto_8

    :cond_1d
    move v8, v9

    goto/16 :goto_6

    :cond_1e
    move v8, v9

    goto/16 :goto_4
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v1

    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_4

    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v1

    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 1

    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v9, :cond_0

    return-object v11

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_1

    return-object v11

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    iget-object v9, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/content/pm/PackageParser$Callback;->getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v9, v6

    if-lez v9, :cond_3

    array-length v9, v6

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v6, v8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v1}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_2

    return-object v11

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7, p1}, Landroid/content/pm/PackageParser;->isCacheInvalid(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "PackageParser"

    const-string/jumbo v9, "invalid cache, delete!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :cond_4
    return-object v7

    :catch_0
    move-exception v4

    const-string/jumbo v8, "PackageParser"

    const-string/jumbo v9, "Error reading package cache: "

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v11

    :catch_1
    move-exception v3

    const-string/jumbo v8, "PackageParser"

    const-string/jumbo v9, "Error reading package cache: "

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v11
.end method

.method public static declared-synchronized getHashValueOfPackage(Ljava/io/File;Ljava/lang/StringBuilder;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const-class v16, Landroid/content/pm/PackageParser;

    monitor-enter v16

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v15, "SHA1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v12, v13}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v15, -0x1

    if-ne v2, v15, :cond_0

    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v16

    return-void

    :catch_0
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v15

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    :goto_1
    monitor-exit v16

    throw v15

    :catch_1
    move-exception v9

    :goto_2
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v15, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v17, "Failed to parse "

    const/16 v18, -0x66

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v9}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v15

    :goto_3
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    :goto_4
    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v15

    goto :goto_1

    :catch_2
    move-exception v8

    :goto_5
    :try_start_9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    new-instance v15, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v17, "Failed to parse "

    const/16 v18, -0x66

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    :catch_3
    move-exception v7

    :goto_6
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v15, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v17, "Failed to parse "

    const/16 v18, -0x66

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    :catch_4
    move-exception v10

    :goto_7
    invoke-virtual {v10}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    new-instance v15, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v17, "Failed to parse "

    const/16 v18, -0x66

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v10}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    move-exception v8

    :try_start_a
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catchall_3
    move-exception v15

    move-object v11, v12

    goto :goto_3

    :catchall_4
    move-exception v15

    move-object v11, v12

    move-object v5, v6

    goto :goto_3

    :catchall_5
    move-exception v15

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    goto :goto_3

    :catch_6
    move-exception v10

    move-object v11, v12

    goto :goto_7

    :catch_7
    move-exception v10

    move-object v11, v12

    move-object v5, v6

    goto :goto_7

    :catch_8
    move-exception v10

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    goto :goto_7

    :catch_9
    move-exception v7

    move-object v11, v12

    goto :goto_6

    :catch_a
    move-exception v7

    move-object v11, v12

    move-object v5, v6

    goto :goto_6

    :catch_b
    move-exception v7

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    goto :goto_6

    :catch_c
    move-exception v8

    move-object v11, v12

    goto :goto_5

    :catch_d
    move-exception v8

    move-object v11, v12

    move-object v5, v6

    goto :goto_5

    :catch_e
    move-exception v8

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    goto :goto_5

    :catch_f
    move-exception v9

    move-object v11, v12

    goto/16 :goto_2

    :catch_10
    move-exception v9

    move-object v11, v12

    move-object v5, v6

    goto/16 :goto_2

    :catch_11
    move-exception v9

    move-object v11, v12

    move-object v3, v4

    move-object v5, v6

    goto/16 :goto_2
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    :cond_0
    return v9

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "http"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "https"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_6
    const/4 v8, 0x1

    return v8

    :cond_7
    return v9
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private isCacheInvalid(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)Z
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v4, v2, Landroid/system/StructStat;->st_mtime:J

    iget-wide v6, v0, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v1

    iget v4, v1, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    if-eq v4, v5, :cond_1

    const-string/jumbo v4, "Error while stating package cache : "

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v3
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1

    const-string/jumbo v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSamsungOverlayComponent(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x64

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed adding asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x65

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x66

    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.legacy"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.legacy"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    return-void
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 19

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    sget v18, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v18}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    return-object v0
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x2c

    const/16 v11, 0x17

    const/16 v12, 0x1e

    const/4 v14, 0x7

    const/16 v15, 0x11

    const/16 v16, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p6, :cond_1

    const-string/jumbo v4, "<receiver>"

    :goto_0
    iput-object v4, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v22

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v17, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_1
    const-string/jumbo v4, "<activity>"

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v6, 0x1a

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    const/16 v4, 0x1b

    const/16 v5, 0x400

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    :cond_4
    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_20

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :goto_2
    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Contact_ConfigOpStyleVariation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "KDDI"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Contact_ConfigOpStyleVariation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string/jumbo v4, "com.samsung.android.contacts"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "com.android.dialer.DialtactsActivity"

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-lez v4, :cond_6

    const-string/jumbo v4, "PackageParser"

    const-string/jumbo v5, "changed label for DCM & KDDI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    :cond_6
    const/16 v4, 0x8

    const/16 v5, 0x400

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x30

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_7
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_8
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_9
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_a
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_b
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_c
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    :goto_3
    const/16 v5, 0x13

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_e
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_f
    const/16 v4, 0x1d

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_10

    const/16 v4, 0x27

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_11
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_12
    const/16 v4, 0x35

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_13
    if-nez p6, :cond_23

    const/16 v4, 0x19

    move-object/from16 v0, v22

    move/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_14
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x21

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    const/16 v6, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v6, 0x2f

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x14

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_15
    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_16
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_17
    const/16 v4, 0x25

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_18
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    const/16 v4, 0x29

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_19
    const/16 v4, 0x33

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_1a
    const/16 v4, 0x32

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v4, 0x32

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/content/pm/PackageParser$Activity;->-wrap1(Landroid/content/pm/PackageParser$Activity;F)V

    :cond_1b
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x26

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x2a

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x2b

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x2e

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x31

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->colorMode:I

    :goto_4
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1c
    const/16 v4, 0x2d

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_1d
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p6, :cond_1e

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1e

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_1e

    const-string/jumbo v4, "Heavy-weight applications can not have receivers in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    :cond_1e
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    return-object v4

    :cond_1f
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " specified invalid parentActivityName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_5
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_21
    const/4 v4, 0x0

    goto :goto_5

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v4, 0x1c

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_24

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_24

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    const/16 v23, 0x1

    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x2a

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    goto/16 :goto_4

    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    :cond_26
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v25

    const/4 v4, 0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_3a

    const/4 v4, 0x3

    move/from16 v0, v25

    if-ne v0, v4, :cond_27

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_3a

    :cond_27
    const/4 v4, 0x3

    move/from16 v0, v25

    if-eq v0, v4, :cond_26

    const/4 v4, 0x4

    move/from16 v0, v25

    if-eq v0, v4, :cond_26

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x0

    return-object v4

    :cond_28
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2a

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v27, :cond_2b

    const/16 v26, 0x1

    :goto_8
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_29
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_2b
    if-nez p6, :cond_2c

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v26, 0x2

    goto :goto_8

    :cond_2c
    const/16 v26, 0x0

    goto :goto_8

    :cond_2d
    if-nez p6, :cond_34

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "preferred"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    const/4 v4, 0x0

    return-object v4

    :cond_2e
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_30

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in preferred at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v27, :cond_32

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_2f
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_6

    :cond_30
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v4, :cond_31

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    :cond_31
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_32
    if-nez p6, :cond_33

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/16 v26, 0x2

    goto :goto_a

    :cond_33
    const/16 v26, 0x0

    goto :goto_a

    :cond_34
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_35

    const/4 v4, 0x0

    return-object v4

    :cond_35
    if-nez v27, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "instantapps.clients.allowed"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/16 v27, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const v6, -0x200001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    :goto_b
    if-ltz v18, :cond_36

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    :cond_36
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v4, :cond_26

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    :goto_c
    if-ltz v18, :cond_26

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    add-int/lit8 v18, v18, -0x1

    goto :goto_c

    :cond_37
    if-nez p6, :cond_38

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_6

    :cond_38
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_39

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_39
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_3a
    if-nez v23, :cond_3b

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3c

    const/4 v4, 0x1

    :goto_e
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_3b
    return-object v17

    :cond_3c
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    const/4 v4, 0x7

    const/16 v5, 0x400

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_0

    const-string/jumbo v4, "<activity-alias> does not specify android:targetActivity"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_1

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_2

    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/16 v12, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<activity-alias>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v28, v27

    :cond_3
    if-nez v28, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, p5, v5

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_5
    new-instance v20, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v4, :cond_6

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    :cond_6
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    new-instance v18, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_7
    const/4 v4, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_8
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_9

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :cond_9
    const/16 v4, 0x9

    const/16 v5, 0x400

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_c

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v22

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    :cond_a
    :goto_2
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_d

    const/16 v32, 0x1

    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    return-object v4

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    :cond_c
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " specified invalid parentActivityName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto :goto_2

    :cond_d
    const/16 v32, 0x0

    goto :goto_3

    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    :cond_f
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_18

    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_18

    :cond_10
    const/4 v4, 0x3

    move/from16 v0, v30

    if-eq v0, v4, :cond_f

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_f

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    return-object v4

    :cond_11
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_13

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v32, :cond_14

    const/16 v31, 0x1

    :goto_6
    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_12
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/16 v31, 0x2

    goto :goto_6

    :cond_15
    const/16 v31, 0x0

    goto :goto_6

    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_f

    const/4 v4, 0x0

    return-object v4

    :cond_17
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity-alias>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_18
    if-nez v25, :cond_19

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_19
    return-object v18

    :cond_1a
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private parseActivitySalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget-object v14, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    if-eqz v14, :cond_0

    const-string/jumbo v14, ""

    sget-object v15, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    return v14

    :cond_1
    const/4 v14, 0x7

    const/16 v15, 0x400

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v14, "<activity-salescode> does not specify android:targetActivity"

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v14, v12, v0}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_3
    const-string/jumbo v3, "<activity-salescode>"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v11, v10

    :cond_4
    if-nez v11, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " target activity "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " not found in manifest"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not specify android:name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_7
    sget-object v14, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    return v14

    :cond_8
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v6, v14, Landroid/content/pm/ActivityInfo;->icon:I

    :cond_9
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v7, v14, Landroid/content/pm/ActivityInfo;->logo:I

    :cond_a
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_b

    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v4, v14, Landroid/content/pm/ActivityInfo;->banner:I

    :cond_b
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_c

    iget v14, v13, Landroid/util/TypedValue;->resourceId:I

    iget-object v15, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v14, v15, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-nez v14, :cond_c

    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v14, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_c
    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v15, v15, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    aget-object v14, p4, v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    return v14

    :cond_d
    const/4 v14, 0x0

    return v14
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_3

    if-ne v1, v6, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_3

    :cond_1
    if-eq v1, v6, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v2, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_2
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to parse "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, -0x64

    invoke-direct {v2, v12, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to parse "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to parse "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, -0x66

    invoke-direct {v2, v12, v3, v9}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :cond_0
    :try_start_2
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v10}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const-string/jumbo v2, "AndroidManifest.xml"

    invoke-virtual {v6, v8, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_1

    new-instance v11, Landroid/content/pm/PackageParser$Package;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v2}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "collectCertificates"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v11, p0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/32 v2, 0x40000

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v4, v11, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v5, v11, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    :goto_0
    move-object v7, v1

    move-object v2, v1

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_1
    move-exception v2

    const-wide/32 v12, 0x40000

    :try_start_5
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v23

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v22, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v2, "installLocation"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "versionCode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v9

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "revisionCode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v10

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "coreApp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "isolatedSplits"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "configForSplit"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "isFeatureSplit"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    goto :goto_1

    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v24, v2, 0x1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v24

    if-lt v2, v0, :cond_11

    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v25

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, v25

    if-eq v0, v2, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v24

    if-ne v2, v0, :cond_8

    const-string/jumbo v2, "package-verifier"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v26

    if-eqz v26, :cond_8

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string/jumbo v2, "application"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v22, 0x0

    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v2, "debuggable"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    :cond_b
    const-string/jumbo v2, "multiArch"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    :cond_c
    const-string/jumbo v2, "use32bitAbi"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v18

    :cond_d
    const-string/jumbo v2, "extractNativeLibs"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_f
    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v8, :cond_10

    const-string/jumbo v2, "PackageParser"

    const-string/jumbo v3, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v3, "<uses-split> tag requires \'android:name\' attribute"

    const/16 v4, -0x6c

    invoke-direct {v2, v4, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_11
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v20}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZZZ)V

    return-object v2
.end method

.method private parseApplicationSalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {p2, p3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v1, p0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v0, "<application-salescode>"

    sget-object v8, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    sget-object v9, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v8, 0x1

    return v8

    :cond_1
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v8, -0x6c

    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p4, v9

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v8, 0x0

    return v8

    :cond_2
    sget-object v8, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v8, 0x1

    return v8

    :cond_3
    iput-object v5, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-nez v8, :cond_9

    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    iput v8, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :goto_0
    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v9, "label"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_5

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v9, "icon"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v8, 0x16

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_6

    iput v4, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v9, "logo"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_7

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->banner:I

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v9, "banner"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v9, "enabled"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v9, 0x9

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_8
    const/4 v8, 0x1

    return v8

    :cond_9
    const/4 v8, 0x0

    iput-object v8, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    goto :goto_0
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    const-string/jumbo v2, "/mnt/expand/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    const-string/jumbo v6, "/mnt/expand/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const-string/jumbo v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v3, v1}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v8

    const/4 v13, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v2, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v2, "AndroidManifest.xml"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-nez v12, :cond_1

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " (at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v6, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v9

    :goto_0
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :cond_1
    :try_start_3
    invoke-virtual {v12, v14}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageParser$Package;->setSignatures([Landroid/content/pm/Signature;)V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :catch_1
    move-exception v10

    move-object v4, v13

    :goto_2
    :try_start_4
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to read manifest from "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v15, -0x66

    invoke-direct {v2, v15, v6, v10}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v2

    move-object v4, v13

    goto :goto_1

    :catch_2
    move-exception v9

    move-object v4, v13

    goto :goto_0

    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v12

    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected base APK, but found split "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, p5, v4

    const/16 v2, -0x6a

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v9

    const/16 v2, -0x6a

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v13, v0}, Landroid/content/pm/PackageParser$Callback;->getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    array-length v2, v11

    if-lez v2, :cond_1

    const/4 v2, 0x0

    array-length v4, v11

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v10, v11, v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v3, v13}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v2, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v3, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "coreApp"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    return-object v2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    const-string/jumbo v0, "Maximum number of packages per APK is: 5"

    const/4 v2, 0x0

    aput-object v0, p5, v2

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aput-object v8, p5, v0

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aput-object v8, p5, v0

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    const/4 v0, 0x1

    return v0
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/16 v18, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_2

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_0

    const-string/jumbo v5, "sharedUserId not allowed in ephemeral application"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-static {v0, v5, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_1

    const-string/jumbo v5, "android"

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_1
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    :cond_2
    const/4 v5, 0x4

    const/4 v6, -0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v5, 0x7

    const/4 v6, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v52

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v52

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    and-int/lit8 v5, p5, 0x10

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_3
    and-int/lit8 v5, p5, 0x20

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4
    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_5
    const/16 v48, 0x1

    const/16 v47, 0x1

    const/16 v46, 0x1

    const/16 v49, 0x1

    const/16 v42, 0x1

    const/4 v13, 0x1

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v38

    :cond_6
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v55

    const/4 v5, 0x1

    move/from16 v0, v55

    if-eq v0, v5, :cond_40

    const/4 v5, 0x3

    move/from16 v0, v55

    if-ne v0, v5, :cond_7

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v38

    if-le v5, v0, :cond_40

    :cond_7
    const/4 v5, 0x3

    move/from16 v0, v55

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    move/from16 v0, v55

    if-eq v0, v5, :cond_6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v50

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "application"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v18, :cond_9

    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    const/16 v18, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_a
    const-string/jumbo v5, "application-salescode"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseApplicationSalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_b
    const-string/jumbo v5, "overlay"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p1

    iput-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    const/4 v5, 0x3

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v40

    const/4 v5, 0x4

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v5, :cond_c

    const-string/jumbo v5, "<overlay> does not specify a target package"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v5, :cond_d

    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v6, 0x270f

    if-le v5, v6, :cond_e

    :cond_d
    const-string/jumbo v5, "<overlay> priority must be between 0 and 9999"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping target and overlay pair "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": overlay ignored due to required system property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v5, "key-sets"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_11
    const-string/jumbo v5, "permission-group"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_12
    const-string/jumbo v5, "permission"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_13
    const-string/jumbo v5, "permission-tree"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_14
    const-string/jumbo v5, "uses-permission"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_15
    const-string/jumbo v5, "uses-permission-sdk-m"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string/jumbo v5, "uses-permission-sdk-23"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_17
    const-string/jumbo v5, "uses-configuration"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    new-instance v14, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v14}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v14, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_18
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_19

    iget v5, v14, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_19
    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_1b

    new-instance v14, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v14}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v5, v14, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    :cond_1b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v5, "feature-group"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-instance v19, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    const/16 v16, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v26

    :cond_1d
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v55

    const/4 v5, 0x1

    move/from16 v0, v55

    if-eq v0, v5, :cond_20

    const/4 v5, 0x3

    move/from16 v0, v55

    if-ne v0, v5, :cond_1e

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_20

    :cond_1e
    const/4 v5, 0x3

    move/from16 v0, v55

    if-eq v0, v5, :cond_1d

    const/4 v5, 0x4

    move/from16 v0, v55

    if-eq v0, v5, :cond_1d

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v15

    iget v5, v15, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v15, Landroid/content/pm/FeatureInfo;->flags:I

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1f
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <feature-group>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_20
    if-eqz v16, :cond_21

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v19

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    :cond_21
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v5, "uses-sdk"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v5, :cond_29

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/16 v33, 0x1

    const/16 v31, 0x0

    const/16 v54, 0x0

    const/16 v51, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v56

    if-eqz v56, :cond_23

    move-object/from16 v0, v56

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    move-object/from16 v0, v56

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_25

    move-object/from16 v0, v56

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v51, v31

    :cond_23
    :goto_3
    const/4 v5, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v56

    if-eqz v56, :cond_24

    move-object/from16 v0, v56

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_26

    move-object/from16 v0, v56

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_26

    move-object/from16 v0, v56

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v51

    if-nez v31, :cond_24

    move-object/from16 v31, v51

    :cond_24
    :goto_4
    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    move/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, p6

    invoke-static {v0, v1, v5, v6, v2}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    if-gez v32, :cond_27

    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_25
    move-object/from16 v0, v56

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v33, v0

    move/from16 v54, v33

    goto :goto_3

    :cond_26
    move-object/from16 v0, v56

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v54, v0

    goto :goto_4

    :cond_27
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    move/from16 v0, v54

    move-object/from16 v1, v51

    move-object/from16 v2, p6

    invoke-static {v0, v1, v5, v6, v2}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v53

    if-gez v53, :cond_28

    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return-object v5

    :cond_28
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v32

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v53

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_29
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v5, "supports-screens"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v48

    const/4 v5, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v47

    const/4 v5, 0x3

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v46

    const/4 v5, 0x5

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v49

    const/4 v5, 0x4

    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v42

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v5, "protected-broadcast"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v34, :cond_2e

    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_2c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v5, :cond_2d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    :cond_2d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v5, "instrumentation"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_30
    const-string/jumbo v5, "original-package"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v5, :cond_31

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    :cond_31
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v5, "adopt-permissions"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v34, :cond_35

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v5, :cond_34

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    :cond_34
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_36
    const-string/jumbo v5, "uses-gl-texture"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_37
    const-string/jumbo v5, "compatible-screens"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_38
    const-string/jumbo v5, "supports-input"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v5, "eat-comment"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_3a
    const-string/jumbo v5, "package"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    sget-boolean v5, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v5, :cond_3b

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    return-object v5

    :cond_3c
    const-string/jumbo v5, "restrict-update"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    and-int/lit8 v5, p5, 0x40

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v43

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    if-eqz v20, :cond_3e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    div-int/lit8 v5, v22, 0x2

    new-array v0, v5, [B

    move-object/from16 v21, v0

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3d

    div-int/lit8 v5, v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v23, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v21, v5

    add-int/lit8 v23, v23, 0x2

    goto :goto_5

    :cond_3d
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    :cond_3e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_3f
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_40
    if-nez v18, :cond_41

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_41

    const-string/jumbo v5, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6d

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    :cond_41
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v5

    const/16 v24, 0x0

    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    if-ge v0, v11, :cond_42

    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v36, v5, v28

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v6, :cond_45

    :cond_42
    if-eqz v24, :cond_43

    const-string/jumbo v5, "PackageParser"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v12, v5

    const/16 v29, 0x0

    :goto_7
    move/from16 v0, v29

    if-ge v0, v12, :cond_4a

    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v44, v5, v29

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v44

    iget v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v5, v6, :cond_44

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_48

    :cond_44
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    :cond_45
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    if-nez v24, :cond_47

    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ": compat added "

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    :cond_47
    const/16 v5, 0x20

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_48
    const/16 v25, 0x0

    :goto_9
    move-object/from16 v0, v44

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_44

    move-object/from16 v0, v44

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v39, v5, v25

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    :cond_4a
    if-ltz v48, :cond_4b

    if-lez v48, :cond_4c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4c

    :cond_4b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4c
    if-eqz v47, :cond_4d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4d
    if-ltz v46, :cond_4e

    if-lez v46, :cond_4f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4f

    :cond_4e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4f
    if-ltz v49, :cond_50

    if-lez v49, :cond_51

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_51

    :cond_50
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_51
    if-ltz v42, :cond_52

    if-lez v42, :cond_53

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_53

    :cond_52
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_53
    if-ltz v13, :cond_54

    if-lez v13, :cond_55

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_55

    :cond_54
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_55
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    :cond_56
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isSamsungOverlayComponent(Ljava/util/List;)Z

    move-result v5

    move-object/from16 v0, p1

    iput-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->mIsOpenThemeOverlay:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->mIsOpenThemeOverlay:Z

    if-eqz v5, :cond_57

    sget-object v5, Landroid/content/om/OpenThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    sget-object v5, Landroid/content/om/OpenThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    :cond_57
    return-object p1
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const-string/jumbo v8, "<application>"

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x2a

    const/16 v15, 0x16

    const/16 v16, 0x1e

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    invoke-static/range {v5 .. v16}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_0
    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    :cond_1
    const/4 v5, 0x4

    const/16 v7, 0x400

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    :cond_2
    const/16 v5, 0x11

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_7

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v5, 0x10

    const/16 v7, 0x400

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v5, 0x12

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x10000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3
    const/16 v5, 0x15

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x20000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4
    const/16 v5, 0x20

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5
    const/16 v5, 0x28

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_6
    const/16 v5, 0x23

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v38

    if-eqz v38, :cond_7

    move-object/from16 v0, v38

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v5, :cond_7

    move-object/from16 v0, v38

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_1e

    const/4 v5, -0x1

    :goto_0
    iput v5, v6, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    :cond_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->theme:I

    const/16 v5, 0xd

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_8

    const-string/jumbo v5, "com.android.systemui"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x2d

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_a
    const/16 v5, 0x1b

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    :cond_b
    const/16 v5, 0x1c

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_c

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    :cond_c
    const/16 v5, 0x1d

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    :cond_d
    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_e
    const/16 v5, 0x14

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xe

    if-lt v5, v7, :cond_1f

    const/4 v5, 0x1

    :goto_1
    const/16 v7, 0x17

    invoke-virtual {v9, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p1

    iput-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v5, :cond_10

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x20000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_10
    const/4 v5, 0x7

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_11
    const/16 v5, 0xe

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_12
    const/4 v5, 0x5

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v5, :cond_14

    const/16 v5, 0xf

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_14
    const/16 v5, 0x18

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x100000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_15
    const/16 v5, 0x24

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_16

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x8000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_16
    const/16 v5, 0x1a

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x400000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_17
    const/16 v5, 0x21

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_18
    const/16 v5, 0x22

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_19

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x10000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_19
    const/16 v5, 0x26

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1a
    const/16 v5, 0x27

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1b
    const/16 v5, 0x25

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v5, 0x25

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_20

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1c
    :goto_2
    const/4 v5, 0x0

    const/16 v7, 0x2c

    invoke-virtual {v9, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    const/16 v5, 0x29

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    const/16 v5, 0x2b

    const/4 v7, -0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v5, 0x6

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_22

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x8

    if-lt v5, v7, :cond_23

    const/16 v5, 0xc

    const/16 v7, 0x400

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v35

    :goto_4
    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p5

    invoke-static {v5, v7, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p5, v5

    if-nez v5, :cond_1d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x8

    if-lt v5, v7, :cond_24

    const/16 v5, 0xb

    const/16 v7, 0x400

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    :goto_5
    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v11, 0x0

    move/from16 v13, p4

    move-object/from16 v15, p5

    invoke-static/range {v10 .. v15}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v5, 0x1f

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x2000000

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1d
    const/16 v5, 0x19

    const/4 v7, 0x0

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    aget-object v5, p5, v5

    if-eqz v5, :cond_25

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_20
    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_1c

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto/16 :goto_2

    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_23
    const/16 v5, 0xc

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_4

    :cond_24
    const/16 v5, 0xb

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    sget-object v7, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v7, "label"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v7, "icon"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v7, "logo"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->logo:I

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->logo:I

    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v7, "banner"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->banner:I

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->banner:I

    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    const-string/jumbo v7, "enabled"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacement:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v5, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mAiReplacementItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    :cond_2b
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v37

    const/4 v5, 0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_46

    const/4 v5, 0x3

    move/from16 v0, v37

    if-ne v0, v5, :cond_2c

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v24

    if-le v5, v0, :cond_46

    :cond_2c
    const/4 v5, 0x3

    move/from16 v0, v37

    if-eq v0, v5, :cond_2b

    const/4 v5, 0x4

    move/from16 v0, v37

    if-eq v0, v5, :cond_2b

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v5, "activity"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v13 .. v20}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v21

    if-nez v21, :cond_2d

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_2d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2e
    const-string/jumbo v5, "receiver"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v13 .. v20}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v21

    if-nez v21, :cond_2f

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_2f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_30
    const-string/jumbo v5, "service"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v34

    if-nez v34, :cond_31

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_31
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_32
    const-string/jumbo v5, "provider"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v28

    if-nez v28, :cond_33

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_33
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_34
    const-string/jumbo v5, "provider-salescode"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseProviderSalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2b

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_35
    const-string/jumbo v5, "activity-alias"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v21

    if-nez v21, :cond_36

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_36
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_37
    const-string/jumbo v5, "activity-salescode"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseActivitySalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2b

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_38
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v5, :cond_2b

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_39
    const-string/jumbo v5, "static-library"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v5, 0x1

    const/4 v7, -0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v25, :cond_3a

    if-gez v39, :cond_3b

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad static-library declaration name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " version: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, p5, v7

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v5, 0x0

    return v5

    :cond_3b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_3c

    const-string/jumbo v5, "sharedUserId not allowed in static shared library"

    const/4 v7, 0x0

    aput-object v5, p5, v7

    const/16 v5, -0x6b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v5, 0x0

    return v5

    :cond_3c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Multiple static-shared libs for package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, p5, v7

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v5, 0x0

    return v5

    :cond_3d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    move/from16 v0, v39

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:I

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_3e
    const-string/jumbo v5, "library"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v25, :cond_3f

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    :cond_3f
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_40
    const-string/jumbo v5, "uses-static-library"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    return v5

    :cond_41
    const-string/jumbo v5, "uses-library"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v25, :cond_42

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    if-eqz v30, :cond_43

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    :cond_42
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_43
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_7

    :cond_44
    const-string/jumbo v5, "uses-package"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_45
    const-string/jumbo v5, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown element under <application>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_46
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_47

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_8
    const/4 v5, 0x1

    return v5

    :cond_47
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, -0x11

    iput v7, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_8
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v5

    iget-boolean v10, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v10, :cond_0

    iget-boolean v10, v5, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    new-instance v10, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Not a coreApp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, -0x6c

    invoke-direct {v10, v12, v11}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v10

    :cond_0
    const/4 v9, 0x0

    iget-boolean v10, v5, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v10, :cond_1

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    :try_start_0
    invoke-static {v5}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v9

    new-instance v0, Landroid/content/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v5, v9, p2}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v10, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to parse base APK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, -0x64

    invoke-direct {v10, v12, v11}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    :catch_0
    move-exception v3

    new-instance v10, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-virtual {v3}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/16 v12, -0x65

    invoke-direct {v10, v12, v11}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v10

    :cond_1
    new-instance v0, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v5, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v6, v10

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v10, v7, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v10, v7, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v10, v7, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    new-array v10, v6, [I

    iput-object v10, v7, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    new-array v10, v6, [I

    iput-object v10, v7, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v7, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_3

    invoke-interface {v0, v4}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {p0, v7, v4, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    iget-boolean v10, v5, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v7
.end method

.method static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v20, "No packages found in split"

    const/16 v21, -0x64

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string/jumbo v2, "parseApkLite"

    const-wide/32 v20, 0x40000

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    array-length v0, v14

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v20

    if-ge v2, v0, :cond_5

    aget-object v13, v14, v2

    invoke-static {v13}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v21

    if-eqz v21, :cond_4

    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v16

    if-nez v17, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v19, v0

    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_4

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Split name "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " defined more than once; most recent was "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x65

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Inconsistent package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "; expected "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x65

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Inconsistent version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "; expected "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x65

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const-wide/32 v20, 0x40000

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ApkLite;

    if-nez v4, :cond_6

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Missing base APK in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x65

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_6
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v18

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-lez v18, :cond_7

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v6, v0, [Z

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v10, v0, [I

    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sget-object v2, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    aget-object v2, v5, v15

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v2, v7, v15

    iget-boolean v2, v11, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v2, v6, v15

    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v2, v8, v15

    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v2, v9, v15

    iget v2, v11, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v2, v10, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/content/pm/PackageParser$PackageLite;

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v2
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x7

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string/jumbo v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v9, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    new-instance v4, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v4, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    const/4 v0, 0x0

    aget-object v0, p4, v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_0

    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v15, :cond_0

    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p5

    iput-object v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x11200b9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v15, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    :goto_0
    if-eqz v8, :cond_6

    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    :goto_1
    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    if-eqz p4, :cond_1

    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v15, 0x1

    if-eq v11, v15, :cond_1a

    const/4 v15, 0x3

    if-ne v11, v15, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_1a

    :cond_3
    const/4 v15, 0x3

    if-eq v11, v15, :cond_2

    const/4 v15, 0x4

    if-eq v11, v15, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "action"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_7

    :cond_4
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    const/4 v15, 0x0

    return v15

    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v15, "category"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_a

    :cond_9
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    const/4 v15, 0x0

    return v15

    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v15, "data"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    :cond_d
    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_e
    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_f
    const/16 v15, 0x9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    if-nez p3, :cond_10

    const-string/jumbo v15, "sspPattern not allowed here; ssp must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    const/4 v15, 0x0

    return v15

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, p6, v16

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v15, 0x0

    return v15

    :cond_10
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_11
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_12

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_13
    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_14
    const/4 v15, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    if-nez p3, :cond_15

    const-string/jumbo v15, "pathPattern not allowed here; path must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    const/4 v15, 0x0

    return v15

    :cond_15
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_16
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_18

    if-nez p3, :cond_17

    const-string/jumbo v15, "pathAdvancedPattern not allowed here; path must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    const/4 v15, 0x0

    return v15

    :cond_17
    const/4 v15, 0x3

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_18
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_19
    const-string/jumbo v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v15, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    const/4 v15, 0x1

    return v15
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v14, :cond_d

    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v24, "key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    if-eqz v4, :cond_3

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    const/16 v24, 0x0

    return v24

    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v24, "public-key"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    if-nez v4, :cond_5

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    const/16 v24, 0x0

    return v24

    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "\'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " must define a public-key value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " on first use at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v24, 0x0

    return v24

    :cond_6
    if-eqz v9, :cond_9

    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    if-nez v3, :cond_7

    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " key-set "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/PublicKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Value of \'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " conflicts with previously defined value at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v24, 0x0

    return v24

    :cond_b
    const-string/jumbo v24, "upgrade-key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown element under <key-sets>: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_e

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    const/16 v24, 0x0

    return v24

    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    move-result v24

    if-nez v24, :cond_10

    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\'key-set\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " has no valid associated \'public-key\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\'key-set\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " contained improper \'public-key\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/security/PublicKey;

    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    const/16 v24, 0x1

    return v24

    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    const/16 v24, 0x0

    return v24
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 16

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12

    const/4 v2, 0x6

    if-ne v12, v2, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    :cond_0
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v2, 0x6

    if-ne v10, v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    :cond_1
    :goto_1
    const/4 v2, 0x0

    const/16 v13, 0x11

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v2, 0x1

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/4 v2, 0x2

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-void

    :cond_2
    const/4 v2, 0x5

    if-ne v12, v2, :cond_0

    const/4 v2, 0x3

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v10, v2, :cond_1

    const/4 v2, 0x4

    const/4 v13, -0x1

    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p4, v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p3

    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_9

    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p4, v6

    const/4 p3, 0x0

    goto/16 :goto_0
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const-wide/32 v4, 0x40000

    const/4 v3, 0x0

    const-string/jumbo v0, "parseApkLite"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 10

    if-nez p4, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not contain any attributes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p2, v9

    const/4 v8, 0x0

    return v8

    :cond_0
    const/4 v8, 0x0

    move/from16 v0, p6

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz p5, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p2, v9

    const/4 v8, 0x0

    return v8

    :cond_1
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v4, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    return v8

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x0

    move/from16 v0, p9

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    :goto_0
    if-eqz v5, :cond_8

    iput v5, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    const/4 v8, 0x0

    move/from16 v0, p10

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_4

    iput v3, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    :cond_4
    const/4 v8, 0x0

    move/from16 v0, p11

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_5

    iput v1, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    :cond_5
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_6
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    return v8

    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    const/4 v8, 0x0

    move/from16 v0, p8

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_3

    iput v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/16 v10, -0x6a

    const/16 v9, -0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-ne v3, v8, :cond_0

    :cond_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v5, "No start tag found"

    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const-string/jumbo v5, "No <manifest> tag"

    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_3
    const-string/jumbo v4, "package"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_4
    const-string/jumbo v4, "split"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v5, "<permission>"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x6

    const/16 v13, 0x8

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    :cond_1
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_2
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v3, 0xfff0

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_3

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_3

    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const-string/jumbo v2, "<permission>  protectionLevel specifies a non-ephemeral flag but is not based on signature type"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_3
    const-string/jumbo v10, "<permission>"

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v14

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string/jumbo v5, "<permission-group>"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x5

    const/4 v13, 0x7

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v10, "<permission-group>"

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v11, v14

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v15, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v5, "<permission-tree>"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x4

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_1

    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    :cond_1
    if-gez v14, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<permission-tree> name has less than three segments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p4, v3

    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/content/pm/PackageParser$Permission;->tree:Z

    const-string/jumbo v10, "<permission-tree>"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v15

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x13

    const/16 v9, 0xf

    const/16 v10, 0x11

    const/16 v12, 0x8

    const/16 v13, 0xe

    const/4 v14, 0x6

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct/range {v2 .. v14}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v3, "<provider>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v2, v3}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    const/4 v2, 0x0

    aget-object v2, p5, v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    const/16 v17, 0x1

    :cond_2
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 v19, v16

    :cond_3
    if-nez v19, :cond_8

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    move-object/from16 v19, v16

    :cond_4
    if-nez v19, :cond_a

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    :goto_1
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xd

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x9

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x15

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v2, :cond_5

    move/from16 v0, p4

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_5

    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    :cond_5
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v3, v4, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_6
    const/16 v2, 0x14

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "Heavy-weight applications can not have providers in main process"

    const/4 v3, 0x0

    aput-object v2, p5, v3

    const/4 v2, 0x0

    return-object v2

    :cond_8
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    if-nez v15, :cond_d

    const-string/jumbo v2, "<provider> does not include authorities attribute"

    const/4 v3, 0x0

    aput-object v2, p5, v3

    const/4 v2, 0x0

    return-object v2

    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    const-string/jumbo v2, "<provider> has empty authorities attribute"

    const/4 v3, 0x0

    aput-object v2, p5, v3

    const/4 v2, 0x0

    return-object v2

    :cond_e
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    return-object v2

    :cond_f
    return-object v7
.end method

.method private parseProviderSalesCode(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    sget-object v14, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    if-eqz v14, :cond_0

    const-string/jumbo v14, ""

    sget-object v15, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    return v14

    :cond_1
    const/4 v14, 0x7

    const/16 v15, 0x400

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v14, "<provider-salescode> does not specify android:targetActivity"

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v14, v12, v0}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_3
    const-string/jumbo v3, "<provider-salescode>"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Provider;

    iget-object v14, v9, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v11, v9

    :cond_4
    if-nez v11, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " target provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " not found in manifest"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not specify android:name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, p4, v15

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x1

    return v14

    :cond_7
    sget-object v14, Landroid/content/pm/PackageParser;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    return v14

    :cond_8
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v14, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v6, v14, Landroid/content/pm/ProviderInfo;->icon:I

    :cond_9
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v14, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v7, v14, Landroid/content/pm/ProviderInfo;->logo:I

    :cond_a
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_b

    iget-object v14, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v4, v14, Landroid/content/pm/ProviderInfo;->banner:I

    :cond_b
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_c

    iget v14, v13, Landroid/util/TypedValue;->resourceId:I

    iget-object v15, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v14, v15, Landroid/content/pm/ProviderInfo;->labelRes:I

    if-nez v14, :cond_c

    iget-object v14, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v14, Landroid/content/pm/ProviderInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_c
    iget-object v14, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v15, v15, Landroid/content/pm/ProviderInfo;->enabled:Z

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x0

    aget-object v14, p4, v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    return v14

    :cond_d
    const/4 v14, 0x0

    return v14
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    const/4 v4, 0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_19

    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_19

    :cond_1
    const/4 v4, 0x3

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    if-eqz p3, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v5, v4, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ProviderInfo;->flags:I

    :cond_3
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p5

    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_5
    if-nez p3, :cond_0

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "instantapps.clients.allowed"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 p3, 0x1

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v5, v4, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ProviderInfo;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    :goto_1
    if-ltz v13, :cond_0

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    new-instance v18, Landroid/os/PatternMatcher;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    :cond_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    new-instance v18, Landroid/os/PatternMatcher;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    :cond_8
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_9

    new-instance v18, Landroid/os/PatternMatcher;

    const/4 v4, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v18, :cond_b

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_a

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    :goto_2
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v4

    add-int/lit8 v4, v11, 0x1

    new-array v15, v4, [Landroid/os/PatternMatcher;

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v15, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v18, v15, v11

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v15, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_2

    :cond_b
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_c
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "path-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_d

    move-object/from16 v21, v20

    :cond_d
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_e

    move-object/from16 v25, v20

    :cond_e
    const/4 v12, 0x0

    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    const/4 v12, 0x1

    :cond_f
    if-eqz v25, :cond_10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    const/4 v12, 0x1

    :cond_10
    if-nez v12, :cond_11

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_12

    new-instance v17, Landroid/content/pm/PathPermission;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_13

    new-instance v17, Landroid/content/pm/PathPermission;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_14

    new-instance v17, Landroid/content/pm/PathPermission;

    const/4 v4, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_15

    new-instance v17, Landroid/content/pm/PathPermission;

    const/4 v4, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v17, :cond_17

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_16

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v4

    add-int/lit8 v4, v11, 0x1

    new-array v14, v4, [Landroid/content/pm/PathPermission;

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v17, v14, v11

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_3

    :cond_17
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <provider>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x1

    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse null public key"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_1
    move-exception v1

    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    return-object v6

    :catch_2
    move-exception v1

    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    return-object v6

    :catch_3
    move-exception v1

    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v8

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0xf

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/4 v14, 0x6

    const/4 v15, 0x7

    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<service>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v19, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    return-object v4

    :cond_1
    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_9

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v5, 0x11

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_3
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_4
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_5
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_6

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_6

    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Service exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    const/16 v21, 0x1

    :cond_6
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-boolean v5, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_7
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_b

    const-string/jumbo v4, "Heavy-weight applications can not have services in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    const/4 v4, 0x0

    return-object v4

    :cond_9
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    :cond_c
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_13

    const/4 v4, 0x3

    move/from16 v0, v23

    if-ne v0, v4, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v18

    if-le v4, v0, :cond_13

    :cond_d
    const/4 v4, 0x3

    move/from16 v0, v23

    if-eq v0, v4, :cond_c

    const/4 v4, 0x4

    move/from16 v0, v23

    if-eq v0, v4, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    return-object v4

    :cond_e
    if-eqz v24, :cond_f

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_f
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_11

    const/4 v4, 0x0

    return-object v4

    :cond_11
    if-nez v24, :cond_c

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "instantapps.clients.allowed"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v24, 0x1

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_3
    if-ltz v17, :cond_c

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    :cond_12
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <service>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_13
    if-nez v21, :cond_14

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_14
    return-object v19

    :cond_15
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v0, p3

    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v1, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    :cond_1
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "application"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_3
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    const-string/jumbo v5, "<manifest> does not contain an <application>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    const/16 v5, -0x6d

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v22, v3, p2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v23

    const/16 v26, 0x0

    :try_start_0
    new-instance v27, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    const-string/jumbo v3, "AndroidManifest.xml"

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    const/4 v3, 0x1

    :try_start_1
    new-array v9, v3, [Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    move/from16 v7, p4

    move/from16 v8, p2

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v24

    :goto_0
    :try_start_2
    throw v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_1
    move-exception v25

    move-object/from16 v6, v26

    :goto_2
    :try_start_3
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x66

    move-object/from16 v0, v25

    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v3

    move-object/from16 v6, v26

    goto :goto_1

    :catch_2
    move-exception v24

    move-object/from16 v6, v26

    goto :goto_0

    :catch_3
    move-exception v25

    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/4 v5, 0x7

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v6, v5, p5

    or-int/lit8 v6, v6, 0x4

    aput v6, v5, p5

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/4 v5, 0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_14

    const/4 v5, 0x3

    move/from16 v0, v22

    if-ne v0, v5, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_14

    :cond_2
    const/4 v5, 0x3

    move/from16 v0, v22

    if-eq v0, v5, :cond_1

    const/4 v5, 0x4

    move/from16 v0, v22

    if-eq v0, v5, :cond_1

    const/16 v17, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v5, "activity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p1

    iget-boolean v12, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v12}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v13

    if-nez v13, :cond_3

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    :cond_4
    :goto_1
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, p5

    move-object/from16 v0, v17

    iput-object v5, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "receiver"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v12}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v13

    if-nez v13, :cond_6

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "service"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v19

    if-nez v19, :cond_8

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "provider"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v16

    if-nez v16, :cond_a

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v17, v0

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "activity-alias"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v13

    if-nez v13, :cond_c

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    goto/16 :goto_1

    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v5, :cond_4

    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v5, 0x0

    return v5

    :cond_e
    const-string/jumbo v5, "uses-static-library"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    return v5

    :cond_f
    const-string/jumbo v5, "uses-library"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    if-eqz v18, :cond_11

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    :cond_10
    :goto_2
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_2

    :cond_12
    const-string/jumbo v5, "uses-package"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <application>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x1

    return v5
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_0

    iget v1, v6, Landroid/util/TypedValue;->data:I

    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    if-nez v2, :cond_1

    return v10

    :cond_1
    if-eqz v1, :cond_2

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v1, v7, :cond_2

    return v10

    :cond_2
    if-eqz v3, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    return v10

    :cond_3
    if-eqz v4, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v4}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v10

    :cond_4
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return v10

    :cond_5
    const-string/jumbo v7, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, -0x6c

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    if-gez v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad uses-static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " certDigest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v6

    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v6

    :cond_1
    if-eqz v0, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Depending on multiple versions of static library "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v6

    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v6

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ":"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[I

    invoke-static {v4, v3, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[I

    const-class v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[Ljava/lang/String;

    invoke-static {v4, v5, v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v7
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_0
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :sswitch_1
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "verifier package name was null; skipping"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    invoke-static {v2}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to parse verifier public key for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3
    new-instance v6, Landroid/content/pm/VerifierInfo;

    invoke-direct {v6, v4, v5}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1010003 -> :sswitch_0
        0x10103a6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static populateCertificates(Landroid/content/pm/PackageParser$Package;[[Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Landroid/util/ArraySet;

    array-length v7, p1

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    const/4 v3, 0x0

    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    aget-object v5, p1, v3

    const/4 v6, 0x0

    aget-object v4, v5, v6

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to collect certificates from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x67

    invoke-direct {v6, v8, v7, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v3, 0x1000

    new-array v0, v3, [B

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    int-to-long v4, v1

    return-wide v4
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    const/16 v4, 0x28

    const/4 v3, 0x0

    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0xc00

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iput v3, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_2

    :cond_4
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :goto_3
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_3
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 6

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_2

    const v3, 0x3fee147b    # 1.86f

    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    :cond_0
    :goto_1
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Landroid/content/pm/PackageParser$Activity;->-wrap0(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.max_aspect"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    :goto_3
    invoke-static {v0, v2}, Landroid/content/pm/PackageParser$Activity;->-wrap1(Landroid/content/pm/PackageParser$Activity;F)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.max_aspect"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.max_aspect"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_2
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_3
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v0, :cond_8

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_1
    :goto_4
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v0, v4, :cond_2

    iget v0, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_3
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    return-void

    :cond_4
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    :cond_7
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_3

    :cond_8
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_9

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_b
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_4
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-le v1, v5, :cond_0

    :cond_3
    if-nez v2, :cond_5

    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_1

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1

    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    const-string/jumbo v5, "Invalid filename"

    return-object v5

    :cond_8
    if-nez v3, :cond_9

    xor-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_a
    const-string/jumbo v5, "must have at least one \'.\' separator"

    goto :goto_2
.end method


# virtual methods
.method protected fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a coreApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x6c

    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    return-object v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_1
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    return-void
.end method

.method protected toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
