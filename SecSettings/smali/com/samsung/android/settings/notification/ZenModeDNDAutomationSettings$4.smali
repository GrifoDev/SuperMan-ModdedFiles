.class Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;
.super Ljava/lang/Object;
.source "ZenModeDNDAutomationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0601d8

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d02cf

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a03fa

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0806a7

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0a08ad

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1208a6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f13033d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x102003f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
