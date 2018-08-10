.class final Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnlineSpinnerItemSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->getAccountLoginIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get4(Lcom/android/settings/dashboard/SupportItemAdapter;)I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v0, p3}, Lcom/android/settings/dashboard/SupportItemAdapter;->-set0(Lcom/android/settings/dashboard/SupportItemAdapter;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
