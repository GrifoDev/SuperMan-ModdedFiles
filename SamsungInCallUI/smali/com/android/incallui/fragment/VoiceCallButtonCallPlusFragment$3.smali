.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWifiStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateEndCallButton(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$3;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$402(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z

    return-void
.end method
