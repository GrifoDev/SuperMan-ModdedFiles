.class public Lcom/android/server/policy/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mEnabledOnLockScreen:Z

.field public mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

.field private mIsShortcutEnabled:Z

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/AccessibilityShortcutController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v1}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iput-object p1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/policy/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/AccessibilityShortcutController$1;-><init>(Lcom/android/server/policy/AccessibilityShortcutController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_shortcut_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/AccessibilityShortcutController;->setCurrentUser(I)V

    return-void
.end method

.method private createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v7

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x1040075

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040076

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104049a

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;

    invoke-direct {v4, p1, p0}, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;-><init>(ILjava/lang/Object;)V

    const v5, 0x10402b8

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I;

    invoke-direct {v4, p1, p0}, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/android/server/policy/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_shortcut_target_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x10401f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public isAccessibilityShortcutAvailable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_policy_AccessibilityShortcutController_9442(ILandroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_shortcut_target_service"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method synthetic lambda$-com_android_server_policy_AccessibilityShortcutController_9774(ILandroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onSettingsChanged()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/server/policy/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    iget-object v5, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "accessibility_shortcut_enabled"

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-static {v0, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v5, "accessibility_shortcut_on_lock_screen"

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-static {v0, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2
.end method

.method public performAccessibilityShortcut()V
    .locals 15

    const-string/jumbo v12, "AccessibilityShortcutController"

    const-string/jumbo v13, "Accessibility shortcut activated"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const-string/jumbo v12, "accessibility_shortcut_dialog_shown"

    const/4 v13, 0x0

    invoke-static {v1, v12, v13, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v12, v13}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v12, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v12}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    :cond_0
    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "vibrator"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070067

    invoke-static {v12, v13}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    sget-object v12, Lcom/android/server/policy/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v13, -0x1

    invoke-virtual {v9, v8, v13, v12}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_1
    if-nez v2, :cond_3

    invoke-direct {p0, v7}, Lcom/android/server/policy/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v12, :cond_2

    return-void

    :cond_2
    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v12, 0x7d9

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v10, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v12, "accessibility_shortcut_dialog_shown"

    const/4 v13, 0x1

    invoke-static {v1, v12, v13, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void

    :cond_3
    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const-string/jumbo v12, "AccessibilityShortcutController"

    const-string/jumbo v13, "Accessibility shortcut set to invalid service"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v13, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/policy/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x1040073

    :goto_1
    invoke-virtual {v13, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v13, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    iget-object v12, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v13, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    goto :goto_0

    :cond_6
    const v12, 0x1040074

    goto :goto_1
.end method

.method public setCurrentUser(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0}, Lcom/android/server/policy/AccessibilityShortcutController;->onSettingsChanged()V

    return-void
.end method
