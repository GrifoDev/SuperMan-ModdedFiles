.class Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;->this$1:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get12()Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get12()Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get12()Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get7()Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get1()Lcom/android/settingslib/AppItem;

    move-result-object v1

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get10()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get12()Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    return-void
.end method
