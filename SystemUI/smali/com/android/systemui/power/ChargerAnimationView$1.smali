.class Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;

.field final synthetic val$displayBatteryLevel:I


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$displayBatteryLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get2(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->-get5(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$displayBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f05fa

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$displayBatteryLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->-get6(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->-set1(Lcom/android/systemui/power/ChargerAnimationView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-wrap0(Lcom/android/systemui/power/ChargerAnimationView;)V

    goto :goto_0
.end method
