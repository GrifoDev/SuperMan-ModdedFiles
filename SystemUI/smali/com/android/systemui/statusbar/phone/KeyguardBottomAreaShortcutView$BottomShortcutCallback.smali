.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutView.java"

# interfaces
.implements Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomShortcutCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateShortcutIconOnly(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShortcutView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
