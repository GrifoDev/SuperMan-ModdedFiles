.class Lcom/android/server/cover/CoverManagerServiceImpl$12;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;->getAlertDialog(Landroid/view/View;Landroid/view/ContextThemeWrapper;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

.field final synthetic val$ct:Landroid/view/ContextThemeWrapper;

.field final synthetic val$locale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;Ljava/lang/String;Landroid/view/ContextThemeWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->val$locale:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->val$ct:Landroid/view/ContextThemeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x1040242

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->val$locale:Ljava/lang/String;

    const-string/jumbo v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->val$ct:Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cover_privacy_ko.html"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap4(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->val$ct:Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$12;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cover_privacy_en.html"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap4(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
