.class Lcom/android/incallui/service/MiniModeCallService$3;
.super Ljava/lang/Object;
.source "MiniModeCallService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/MiniModeCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/MiniModeCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/incallui/service/MiniModeCallService$3;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService$3;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v1, v1, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v2, "onClick"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 175
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method
