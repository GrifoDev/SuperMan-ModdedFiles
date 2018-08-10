.class Lcom/android/systemui/globalactions/GlobalActionsDialog$42;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap7(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get63()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap2(Lcom/android/systemui/globalactions/GlobalActionsDialog;IZZ)Z

    move-result v1

    return v1
.end method
