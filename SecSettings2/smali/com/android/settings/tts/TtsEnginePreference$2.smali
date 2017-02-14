.class Lcom/android/settings/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/tts/TtsEnginePreference;->-wrap1(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
