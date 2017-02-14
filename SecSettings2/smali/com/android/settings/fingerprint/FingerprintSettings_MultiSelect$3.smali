.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get4()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V

    :cond_0
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-set3(I)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get4()I

    move-result v2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
