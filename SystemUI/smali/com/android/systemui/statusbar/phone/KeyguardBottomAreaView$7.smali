.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->launchVoiceAssistFromKeyguard()V

    return-void
.end method
