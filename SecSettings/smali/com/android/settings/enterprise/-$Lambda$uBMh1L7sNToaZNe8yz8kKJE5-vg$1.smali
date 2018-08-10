.class final synthetic Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iget-object v1, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->lambda$-com_android_settings_enterprise_AdminGrantedPermissionsPreferenceControllerBase_2030(Landroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg$1;->$m$0(I)V

    return-void
.end method
