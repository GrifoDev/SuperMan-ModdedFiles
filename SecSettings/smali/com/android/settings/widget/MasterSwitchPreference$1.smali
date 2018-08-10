.class Lcom/android/settings/widget/MasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "MasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->-get1(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->-get1(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterSwitchPreference;->-get0(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterSwitchPreference;->-get0(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterSwitchPreference;->-get0(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v1}, Lcom/android/settings/widget/MasterSwitchPreference;->-get0(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->-wrap0(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z

    goto :goto_0
.end method
