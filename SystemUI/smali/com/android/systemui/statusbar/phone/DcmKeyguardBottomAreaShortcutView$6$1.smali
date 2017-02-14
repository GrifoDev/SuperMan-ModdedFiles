.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6$1;
.super Ljava/lang/Object;
.source "DcmKeyguardBottomAreaShortcutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;

.field final synthetic val$launched:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6$1;->val$launched:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6$1;->val$launched:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->unbindCameraPrewarmService(Z)V

    return-void
.end method
