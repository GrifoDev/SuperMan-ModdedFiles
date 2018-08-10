.class Lcom/android/server/cover/CoverManagerServiceImpl$17;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;->createHyperLinkDialog(Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$17;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$17;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-set1(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
