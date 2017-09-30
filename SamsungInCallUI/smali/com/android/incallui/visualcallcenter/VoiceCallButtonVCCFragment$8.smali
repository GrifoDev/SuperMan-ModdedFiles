.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$8;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
