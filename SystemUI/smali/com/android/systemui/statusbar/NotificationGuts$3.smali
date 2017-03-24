.class Lcom/android/systemui/statusbar/NotificationGuts$3;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$minProgress:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->val$minProgress:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/NotificationGuts;->-wrap1(Lcom/android/systemui/statusbar/NotificationGuts;I)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x122

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$3;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
