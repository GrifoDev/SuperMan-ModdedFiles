.class Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x1186

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->-set1(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    iget-object v0, v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->-wrap0(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V

    return-void
.end method
