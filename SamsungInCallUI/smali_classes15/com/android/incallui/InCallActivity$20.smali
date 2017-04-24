.class Lcom/android/incallui/InCallActivity$20;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$isIncoming:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$20;->this$0:Lcom/android/incallui/InCallActivity;

    iput-boolean p2, p0, Lcom/android/incallui/InCallActivity$20;->val$isIncoming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity$20;->val$isIncoming:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
