.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnificationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-wrap2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method
