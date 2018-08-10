.class Lcom/android/internal/app/ResolverGuideActivity$1;
.super Ljava/lang/Object;
.source "ResolverGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverGuideActivity;->handlePendingIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverGuideActivity;->-wrap0(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverGuideActivity;->safelyStartActivity(Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    return-void
.end method
