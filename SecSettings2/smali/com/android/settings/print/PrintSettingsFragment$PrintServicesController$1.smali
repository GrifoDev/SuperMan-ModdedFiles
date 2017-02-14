.class Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap2(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    return v0
.end method
