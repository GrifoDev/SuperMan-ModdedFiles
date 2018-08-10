.class Lcom/samsung/android/settings/nfc/TapAndPaySettings$2;
.super Ljava/lang/Object;
.source "TapAndPaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/TapAndPaySettings;->showLmrtFullDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$2;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TapAndPaySettings"

    const-string/jumbo v1, "showLmrtFullDialog onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
