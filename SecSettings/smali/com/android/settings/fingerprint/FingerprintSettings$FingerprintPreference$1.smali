.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->-get0(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V

    const/4 v0, 0x0

    return v0
.end method
