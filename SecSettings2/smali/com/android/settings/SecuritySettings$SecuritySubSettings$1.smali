.class Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$SecuritySubSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$SecuritySubSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;->this$1:Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;->this$1:Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    const/4 v0, 0x1

    return v0
.end method
