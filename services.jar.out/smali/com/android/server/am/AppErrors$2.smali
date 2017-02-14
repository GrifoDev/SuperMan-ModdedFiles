.class Lcom/android/server/am/AppErrors$2;
.super Ljava/lang/Object;
.source "AppErrors.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrors$2;->this$0:Lcom/android/server/am/AppErrors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>APP_FC:FC dialog has been cleared</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
