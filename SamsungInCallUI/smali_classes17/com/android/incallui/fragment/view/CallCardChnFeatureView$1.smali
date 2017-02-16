.class Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;
.super Ljava/lang/Object;
.source "CallCardChnFeatureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 376
    :cond_0
    return-void
.end method
