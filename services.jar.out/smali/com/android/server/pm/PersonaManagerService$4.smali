.class Lcom/android/server/pm/PersonaManagerService$4;
.super Landroid/database/ContentObserver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "hide_secure_folder_flag"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hide_secure_folder_flag"

    invoke-static {v3, v4, v6, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get25(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap54(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "secure_folder_name"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "secure_folder_name"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get25(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap23(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "secure_folder_image_name"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "secure_folder_image_name"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get25(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v3

    if-eq v3, v7, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap22(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method
