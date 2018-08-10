.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get18(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "prefered_voice_call"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_maincard"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
