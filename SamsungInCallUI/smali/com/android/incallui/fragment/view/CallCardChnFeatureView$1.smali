.class Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    :cond_0
    return-void
.end method
