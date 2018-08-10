.class final synthetic Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f3:Ljava/lang/Object;

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    iget-object v3, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f4:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f0:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$-com_android_settings_dashboard_DashboardFeatureProviderImpl_5613(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f0:I

    iput-object p2, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/-$Lambda$coOy44pyUcdO6tnc3O8BJbKy3bY;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
