.class final synthetic Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg;->-$f0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->lambda$-com_android_settings_enterprise_AdminGrantedPermissionsPreferenceControllerBase_3521([Ljava/lang/Boolean;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/-$Lambda$uBMh1L7sNToaZNe8yz8kKJE5-vg;->$m$0(I)V

    return-void
.end method
