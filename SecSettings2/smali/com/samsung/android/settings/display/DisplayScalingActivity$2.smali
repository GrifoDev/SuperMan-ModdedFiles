.class Lcom/samsung/android/settings/display/DisplayScalingActivity$2;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/DisplayScalingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const-string/jumbo v0, "DisplayScalingActivity"

    const-string/jumbo v1, "mCondensedClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get7(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get11(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get5(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get10(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get6(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get8(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-wrap0(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-set0(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getMetricsCategory()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get0()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get10(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get6(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get8(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
