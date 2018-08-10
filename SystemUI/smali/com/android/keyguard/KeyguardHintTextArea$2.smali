.class Lcom/android/keyguard/KeyguardHintTextArea$2;
.super Ljava/lang/Object;
.source "KeyguardHintTextArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHintTextArea;->lambda$-com_android_keyguard_KeyguardHintTextArea_3150(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHintTextArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHintTextArea;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$2;->this$0:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea$2;->this$0:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->-get1(Lcom/android/keyguard/KeyguardHintTextArea;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method
