.class Lcom/samsung/android/settings/multisound/SASButtonPreference$3;
.super Ljava/lang/Object;
.source "SASButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SASButtonPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-get0(Lcom/samsung/android/settings/multisound/SASButtonPreference;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$cb:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-get1(Lcom/samsung/android/settings/multisound/SASButtonPreference;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
