.class final synthetic Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/WpsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WpsPreferenceController;->lambda$-com_android_settings_wifi_WpsPreferenceController_4642(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
