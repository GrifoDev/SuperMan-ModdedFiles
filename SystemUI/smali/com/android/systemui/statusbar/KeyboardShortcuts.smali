.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcuts$1;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$2;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$3;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDeskMode:Z

.field private static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationItemsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mCategoryApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogCloseListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpImage:Landroid/widget/ImageButton;

.field private mHelpPopup:Landroid/widget/PopupWindow;

.field private mHelpPopupShow:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mKeyFontType:Landroid/graphics/Typeface;

.field private mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field private final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierList:[I

.field private final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mShowHelpPopup:Landroid/view/View$OnClickListener;

.field private final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopupShow:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyboardShortcuts;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopupShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyboardShortcuts;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showHelpPopup()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcutsDialog(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopupShow:Z

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowHelpPopup:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->loadResources(Landroid/content/Context;)V

    :try_start_0
    const-string/jumbo v1, "/system/fonts/Roboto-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyFontType:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mKeyFontType font is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
.end method

.method private convertDpToPixel(F)I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    return v0
.end method

.method public static dismiss()V
    .locals 3

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const/16 v2, 0x1f4

    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissHelpPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcuts()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 14

    const/high16 v13, 0x10000

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120450

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1e

    invoke-direct {v9, v10, v0, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v9, "android.intent.category.APP_CONTACTS"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120452

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1f

    invoke-direct {v9, v10, v2, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v9, "android.intent.category.APP_EMAIL"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120453

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x21

    invoke-direct {v9, v10, v3, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v9, "android.intent.category.APP_MESSAGING"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120454

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-direct {v9, v10, v6, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v9, "android.intent.category.APP_MUSIC"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120455

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-direct {v9, v10, v7, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v9, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    if-nez v9, :cond_5

    const-string/jumbo v9, "android.intent.category.APP_CALENDAR"

    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f120451

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x28

    invoke-direct {v9, v10, v1, v11, v13}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    return-object v12

    :cond_6
    new-instance v9, Landroid/view/KeyboardShortcutGroup;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f12044d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v5, v11}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    return-object v9
.end method

.method private getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    aget v3, v4, v0

    and-int v4, v1, v3

    if-eqz v4, :cond_1

    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v4, v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    not-int v4, v3

    and-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, 0x0

    return-object v4

    :cond_3
    return-object v2
.end method

.method private getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v6

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_7

    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    if-nez v4, :cond_4

    return-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    return-object v6

    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Keyboard Shortcut does not have a text representation, skipping."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v5, 0x7f0600a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    return-object v0

    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    return-object v4

    :cond_1
    return-object v5
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    return-object v0
.end method

.method private getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    :cond_0
    return-object v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PackageManagerService is dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method private getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 8

    const/16 v7, 0x3d

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x10000

    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v2, 0x7f120458

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x42

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    :goto_0
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f120460

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f120462

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-direct {v1, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f120459

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f12045e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    goto :goto_0
.end method

.method private handleShowKeyboardShortcuts(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f0d005d

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a024a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a00ab

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v7, 0x7f0805c1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v6, 0x7f0a0231

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isRTL()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isSpecialLanguage()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowHelpPopup:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcuts$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$8;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget-boolean v6, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDeskMode:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x7f6

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    :goto_0
    sget-object v7, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v7

    return-void

    :cond_3
    const/16 v6, 0x7d8

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private isHelpPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRTL()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShowing()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "iw_IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const v6, 0x7f120435

    const v5, 0x7f120448

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120433

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120437

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120438

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120439

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120436

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "."

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12044c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12044b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120434

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120441

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120444

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120440

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120442

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120443

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12044a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120449

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "A"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "B"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "C"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "X"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Y"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Z"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "L1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "R1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "L2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "R2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Start"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Select"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Mode"

    aput-object v2, v1, v4

    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Esc"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "SysRq"

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Break"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Scroll Lock"

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120446

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120445

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f12043e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F1"

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F2"

    const/16 v2, 0x84

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F3"

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F4"

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F5"

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F6"

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F7"

    const/16 v2, 0x89

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F8"

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F9"

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F10"

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F11"

    const/16 v2, 0x8d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "F12"

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const v1, 0x7f120447

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x93

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x94

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x95

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "8"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "9"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "/"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "*"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "-"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "+"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "."

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, ","

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f12043b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "="

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "("

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, ")"

    aput-object v2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u534a\u89d2/\u5168\u89d2"

    const/16 v2, 0xd3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u82f1\u6570"

    const/16 v2, 0xd4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u7121\u5909\u63db"

    const/16 v2, 0xd5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u5909\u63db"

    const/16 v2, 0xd6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u304b\u306a"

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Meta"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Ctrl"

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Alt"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Shift"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Sym"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "Fn"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    const v1, 0x7f0801fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    const v1, 0x7f0801fd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    const v2, 0x7f080067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    const v2, 0x7f080066

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.category.APP_MESSAGING"

    const v2, 0x7f080065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mCategoryApps:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    const v2, 0x7f080068

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onConfigurationChanged()V
    .locals 3

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isHelpPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Recreate help popup"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissHelpPopup()V

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopupShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "current_sec_active_themepackage"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isRTL()Z

    move-result v18

    const/4 v9, 0x0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    xor-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_0

    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x1030132

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v33, "layout_inflater"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    const v33, 0x7f0d005c

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v25

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v33

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v34

    sub-int v33, v33, v34

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v34

    sub-int v23, v33, v34

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v15, :cond_c

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/KeyboardShortcutGroup;

    const v33, 0x7f0d0058

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    const v33, 0x7f0d0057

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v16

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    xor-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_1

    sget-object v33, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "The Open Theme is activated : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v33, 0x7f0d0056

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v16

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v33, 0x7f0d0059

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_a

    invoke-virtual {v7}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyboardShortcutInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v27

    if-nez v27, :cond_3

    sget-object v33, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string/jumbo v34, "Keyboard Shortcut contains unsupported keys, skipping."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/view/KeyboardShortcutGroup;->isSystemGroup()Z

    move-result v33

    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0600ac

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getColor(I)I

    move-result v33

    :goto_5
    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0600a4

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getColor(I)I

    move-result v33

    goto :goto_5

    :cond_3
    const v33, 0x7f0d0054

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v20

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    invoke-virtual {v10}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    if-eqz v33, :cond_4

    const v33, 0x7f0a024b

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const v33, 0x7f0a024d

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v33, 0x7f0a024c

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    move/from16 v14, v17

    if-eqz v18, :cond_5

    sub-int v33, v28, v17

    add-int/lit8 v14, v33, -0x1

    :cond_5
    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7

    const v33, 0x7f0d005b

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v22

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v23

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    new-instance v33, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    const v33, 0x7f0d005c

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v22

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyFontType:Landroid/graphics/Typeface;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyFontType:Landroid/graphics/Typeface;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v33, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v33, v15, -0x1

    move/from16 v0, v33

    if-ge v8, v0, :cond_b

    const v33, 0x7f0d0055

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method private retrieveKeyCharacterMap(I)V
    .locals 6

    const/4 v5, -0x1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-eq p1, v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showHelpPopup()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0d005a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->convertDpToPixel(F)I

    move-result v5

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080373

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHelpImage:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    const/16 v7, -0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private showKeyboardShortcuts(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->retrieveKeyCharacterMap(I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method

.method private showKeyboardShortcutsDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$5;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static toggle(Landroid/content/Context;I)V
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
