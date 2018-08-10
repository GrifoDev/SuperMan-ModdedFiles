.class Lcom/samsung/android/settings/DockSettings$5;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DockSettings;->showDownloadLedCoverAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DockSettings$5;->this$0:Lcom/samsung/android/settings/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DockSettings$5;->this$0:Lcom/samsung/android/settings/DockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DockSettings;->-wrap1(Lcom/samsung/android/settings/DockSettings;)V

    return-void
.end method
