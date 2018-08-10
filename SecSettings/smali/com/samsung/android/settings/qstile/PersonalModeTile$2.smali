.class Lcom/samsung/android/settings/qstile/PersonalModeTile$2;
.super Ljava/lang/Object;
.source "PersonalModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/PersonalModeTile;->semGetSettingsIntent()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;->this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;->this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->-get1(Lcom/samsung/android/settings/qstile/PersonalModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12143a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
