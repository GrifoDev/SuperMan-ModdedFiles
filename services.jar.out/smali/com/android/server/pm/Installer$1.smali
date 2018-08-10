.class Lcom/android/server/pm/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/Installer;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/Installer$1;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string/jumbo v0, "Installer"

    const-string/jumbo v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/Installer$1;->this$0:Lcom/android/server/pm/Installer;

    invoke-static {v0}, Lcom/android/server/pm/Installer;->-wrap0(Lcom/android/server/pm/Installer;)V

    return-void
.end method
