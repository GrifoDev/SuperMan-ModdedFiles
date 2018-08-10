.class final Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;
.super Ljava/lang/Object;
.source "SmartScanSettingsHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/BottomScrollView;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/BottomScrollView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    sub-int v3, v2, v1

    if-gez v3, :cond_0

    const-string/jumbo v3, "SsstSmartScanSettingsHelper"

    const-string/jumbo v4, "scrollable : disable button"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
