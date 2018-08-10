.class Lcom/android/systemui/pip/phone/PipMenuActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$4;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$4;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-wide/16 v2, 0xdac

    invoke-static {v0, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivity;->-wrap2(Lcom/android/systemui/pip/phone/PipMenuActivity;J)V

    return-void
.end method
