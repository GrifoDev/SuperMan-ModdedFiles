.class final synthetic Lcom/android/settings/notification/-$Lambda$C0Nx_xMOjQuGP4wPPelrS2OPQY4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$Lambda$C0Nx_xMOjQuGP4wPPelrS2OPQY4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->lambda$-com_android_settings_notification_WorkSoundPreferenceController_7849(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$Lambda$C0Nx_xMOjQuGP4wPPelrS2OPQY4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/-$Lambda$C0Nx_xMOjQuGP4wPPelrS2OPQY4;->$m$0(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
