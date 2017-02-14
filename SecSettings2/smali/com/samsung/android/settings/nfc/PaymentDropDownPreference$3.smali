.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get4(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get4(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-set0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v3
.end method
