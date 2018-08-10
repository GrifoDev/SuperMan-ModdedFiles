.class final synthetic Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->lambda$-com_samsung_android_settings_lockscreen_LockscreenMenuSettings_44995(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
