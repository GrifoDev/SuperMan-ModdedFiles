.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;
.super Landroid/database/ContentObserver;
.source "QSMultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get3(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "prefered_voice_call"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    const-string/jumbo v0, "QSMultiSIMPreferredSlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PreferedVoiceObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get8(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
