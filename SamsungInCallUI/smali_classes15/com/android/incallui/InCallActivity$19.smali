.class Lcom/android/incallui/InCallActivity$19;
.super Landroid/database/ContentObserver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 3138
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$19;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3141
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3142
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onOnehandAnyScreenOnChanged()V

    .line 3143
    return-void
.end method
