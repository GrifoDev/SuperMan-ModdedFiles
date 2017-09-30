.class Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
