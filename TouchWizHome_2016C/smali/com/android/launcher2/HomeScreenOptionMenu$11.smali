.class Lcom/android/launcher2/HomeScreenOptionMenu$11;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;->showThemeWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$11;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.samsung.android.themestore"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$11;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-static {v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->access$100(Lcom/android/launcher2/HomeScreenOptionMenu;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
