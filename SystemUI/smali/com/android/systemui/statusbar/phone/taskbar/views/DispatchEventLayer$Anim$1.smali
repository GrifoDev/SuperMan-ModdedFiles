.class Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DispatchEventLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->markCompleted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V

    return-void
.end method
