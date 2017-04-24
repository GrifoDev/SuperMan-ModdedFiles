.class public Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;
.super Landroid/app/DialogFragment;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorCHNFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field private subId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "set_used_data"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v8, -0x1

    if-eq p2, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->mView:Landroid/view/View;

    const v9, 0x7f110279

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->mView:Landroid/view/View;

    const v9, 0x7f11027a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    new-instance v7, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iget v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v2, "0"

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v8, 0x51c80000

    cmpl-float v8, v0, v8

    if-lez v8, :cond_2

    const/high16 v0, 0x51c80000

    :cond_2
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/high16 v8, 0x44800000    # 1024.0f

    mul-float/2addr v0, v8

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data_used_by_check_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "check_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "middle_real_value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v8, v6, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get2()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    iget-object v8, v6, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v8}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0400b0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->mView:Landroid/view/View;

    const v5, 0x7f110278

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b0ef0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0ef5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b17cf

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;Landroid/content/Context;)V

    const v5, 0x7f0b0ef6

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
