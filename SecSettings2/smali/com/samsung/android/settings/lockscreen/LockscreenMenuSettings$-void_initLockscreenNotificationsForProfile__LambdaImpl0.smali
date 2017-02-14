.class final synthetic Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_initLockscreenNotificationsForProfile__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;->val$this:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;->val$this:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-com_samsung_android_settings_lockscreen_LockscreenMenuSettings_lambda$1(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
