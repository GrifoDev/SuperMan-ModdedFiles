.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ZVV"

    sget-object v8, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sget-boolean v7, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v7, :cond_3

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070448

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v7, v0

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v10, v10, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLines(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sget-boolean v7, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v7, :cond_6

    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070449

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v7, v0

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10, v10, v10, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070449

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, ""

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get5(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;ILandroid/widget/TextView;)V

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLines(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v7, v8, :cond_10

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_10
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v7, v8, :cond_10

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLines(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    :cond_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
