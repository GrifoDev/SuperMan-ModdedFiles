.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;
.super Ljava/lang/Object;
.source "VoiceCallButtonCallPlusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->showVoLTESettingErrorDialog(I)V
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
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 2756
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$11;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2759
    return-void
.end method
