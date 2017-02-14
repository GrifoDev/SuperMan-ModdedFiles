.class Lcom/android/settings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$17;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo$17;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p3}, Lcom/android/settings/RadioInfo;->-set0(Lcom/android/settings/RadioInfo;I)I

    iget-object v0, p0, Lcom/android/settings/RadioInfo$17;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/RadioInfo;->-get0()[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$17;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->-wrap5(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
