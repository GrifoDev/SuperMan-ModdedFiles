.class Lcom/android/systemui/AutoReinflateContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/AutoReinflateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/AutoReinflateContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/AutoReinflateContainer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "QS onOpenThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer$1;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v0}, Lcom/android/systemui/AutoReinflateContainer;->-wrap0(Lcom/android/systemui/AutoReinflateContainer;)V

    return-void
.end method
