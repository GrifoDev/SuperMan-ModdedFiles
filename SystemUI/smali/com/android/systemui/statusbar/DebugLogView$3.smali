.class Lcom/android/systemui/statusbar/DebugLogView$3;
.super Ljava/lang/Object;
.source "DebugLogView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogView;


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView$3;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogView;->-get4(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogView$3;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DebugLogView;->-get0(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
