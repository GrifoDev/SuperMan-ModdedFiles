.class final synthetic Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/ManageDomainUrls;

    iget-object v1, p0, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageDomainUrls;->lambda$-com_android_settings_applications_ManageDomainUrls_7482(Landroid/content/Intent;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/-$Lambda$n-7gd7QmmOETk3LCVsVO9yDxQpo;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
