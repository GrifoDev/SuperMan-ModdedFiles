.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setSuwDisclaimerScroll()V
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
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iput p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$showButtonBackground:I

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v3, v3, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/BottomScrollView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v3, v3, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    sub-int v3, v2, v1

    if-gez v3, :cond_2

    const-string/jumbo v3, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v4, "Scrollable : true"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v4, "Scrollable : false"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$showButtonBackground:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    const v4, 0x7f0807c2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
