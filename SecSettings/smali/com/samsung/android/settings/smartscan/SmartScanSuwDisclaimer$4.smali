.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;


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
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueArrow:Landroid/widget/ImageView;

    iput p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$showButtonBackground:I

    iput-object p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$nextButton:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$downArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomReached()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onBottomReached"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$showButtonBackground:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$nextButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$nextButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0807c2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$downArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;->val$continueArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
