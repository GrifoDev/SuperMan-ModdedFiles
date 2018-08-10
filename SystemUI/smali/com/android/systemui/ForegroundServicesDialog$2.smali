.class Lcom/android/systemui/ForegroundServicesDialog$2;
.super Ljava/lang/Object;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$2;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "299"

    const-string/jumbo v1, "1134"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$2;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-virtual {v0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    return-void
.end method
