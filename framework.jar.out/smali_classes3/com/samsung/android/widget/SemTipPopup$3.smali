.class Lcom/samsung/android/widget/SemTipPopup$3;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-wrap3(Lcom/samsung/android/widget/SemTipPopup;Z)V

    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->-wrap3(Lcom/samsung/android/widget/SemTipPopup;Z)V

    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-wrap1(Lcom/samsung/android/widget/SemTipPopup;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
