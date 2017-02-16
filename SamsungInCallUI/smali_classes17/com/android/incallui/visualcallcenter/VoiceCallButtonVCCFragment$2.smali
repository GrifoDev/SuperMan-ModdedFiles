.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;
.super Ljava/lang/Object;
.source "VoiceCallButtonVCCFragment.java"

# interfaces
.implements Lcom/android/incallui/util/VisualCallCenter$OnIVRScreenRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ivrScreenRemoved()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;
    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;
    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->notifyDataSetChanged()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->refreshViewPager()V
    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$200(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$2;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V
    invoke-static {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$300(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    .line 360
    return-void
.end method
