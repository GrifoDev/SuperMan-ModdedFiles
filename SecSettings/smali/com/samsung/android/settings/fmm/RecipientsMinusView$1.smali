.class Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1185

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->-set0(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    iget-object v0, v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->-get0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
