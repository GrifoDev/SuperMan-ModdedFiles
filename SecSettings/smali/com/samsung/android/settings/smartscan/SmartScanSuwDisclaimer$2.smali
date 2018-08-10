.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->initSetupWizardUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

.field final synthetic val$continueArrow:Landroid/widget/ImageView;

.field final synthetic val$continueText:Landroid/widget/TextView;

.field final synthetic val$downArrow:Landroid/widget/ImageView;

.field final synthetic val$nextButton:Landroid/widget/LinearLayout;

.field final synthetic val$showButtonBackground:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    iput p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$showButtonBackground:I

    iput-object p6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onClick : down"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$showButtonBackground:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0807c2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/BottomScrollView;->fullScroll(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onClick : next"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "intelligentscan_disclaimer_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->finish()V

    goto :goto_0
.end method
