.class Lcom/android/settings/security/OwnerInfoPreferenceController$1;
.super Ljava/lang/Object;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->-get0(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    const/4 v0, 0x1

    return v0
.end method
